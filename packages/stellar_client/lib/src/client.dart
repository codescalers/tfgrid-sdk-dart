part of '../stellar_client.dart';
//TODO: handle catching errors

class Client {
  final NetworkType network;
  late StellarSDK sdk;
  late KeyPair keyPair;
  late currency.Currencies currencies;
  late Map<String, String> serviceUrls;

  Client(this.network) {
    late final tft;
    switch (network) {
      case NetworkType.TestNet:
        sdk = StellarSDK.TESTNET;
        tft = currency.Currency(
          assetCode: 'TFT',
          issuer: "GA47YZA3PKFUZMPLQ3B5F2E3CJIB57TGGU7SPCQT2WAEYKN766PWIMB3",
        );
        break;
      case NetworkType.PublicNet:
        sdk = StellarSDK.PUBLIC;
        tft = currency.Currency(
          assetCode: 'TFT',
          issuer: "GBOVQKJYHXRR3DX6NOX2RRYFRCUMSADGDESTDNBDS6CDVLGVESRTAC47",
        );
        break;
      default:
        break;
    }
    // if (network.value == 'TESTNET') {
    //   sdk = StellarSDK.TESTNET;
    //   tft = currency.Currency(
    //     assetCode: 'TFT',
    //     issuer: "GA47YZA3PKFUZMPLQ3B5F2E3CJIB57TGGU7SPCQT2WAEYKN766PWIMB3",
    //   );
    // } else if (network.value == 'PUBLIC') {
    //   sdk = StellarSDK.PUBLIC;
    //   tft = currency.Currency(
    //     assetCode: 'TFT',
    //     issuer: "GBOVQKJYHXRR3DX6NOX2RRYFRCUMSADGDESTDNBDS6CDVLGVESRTAC47",
    //   );
    // }

    currencies = currency.Currencies({'TFT': tft});

    serviceUrls = {
      'PUBLIC': 'https://tokenservices.threefold.io/threefoldfoundation',
      'TESTNET': 'https://testnet.threefold.io/threefoldfoundation'
    };
  }

  Future<AccountResponse?> loadAccount(LoadAccountOptions options) async {
    try {
      final account = await sdk.accounts.account(options.accountId);
      keyPair = account.keypair;
      return account;
    } catch (error) {
      print("Error Loading Account $error");
      return null;
    }
  }

  Future<KeyPair?> createThreefoldAccount(CreateAccountOptions options) async {
    String? mnemonic = options.mnemonic;
    try {
      if (mnemonic != null) {
        Wallet wallet = await Wallet.from(mnemonic);
        keyPair = await wallet.getKeyPair();
      } else {
        keyPair = KeyPair.random();
      }

      if (network.value == NetworkType.TestNet.value) {
        // can be done using activation service
        await activateTestNetAccount(
            ActivateTestNetOptions(accountId: keyPair.accountId));
      } else if (network.value == NetworkType.PublicNet.value) {
        Transaction? transaction = await getActivationTransaction();
        transaction!.sign(keyPair, Network.PUBLIC);
        await sdk.submitTransaction(transaction);
        print("Account Activated Successfully.");
      }

      await sdk.accounts.account(keyPair.accountId);

      return keyPair;
    } catch (error) {
      throw Exception("Failed to create account $error");
    }
  }

  Future<KeyPair?> createAccountFromSecret(
      CreateAccountSecretOptions options) async {
    try {
      KeyPair existingAccountPair = KeyPair.fromSecretSeed(options.secretSeed);
      keyPair = KeyPair.random();
      AccountResponse existingAccount =
          await sdk.accounts.account(existingAccountPair.accountId);

      Transaction transaction = TransactionBuilder(existingAccount)
          .addOperation(
              CreateAccountOperationBuilder(keyPair.accountId, "10").build())
          .build();

      if (network.value == 'TESTNET') {
        transaction.sign(existingAccountPair, Network.TESTNET);
      } else if (network.value == 'PUBLIC') {
        transaction.sign(existingAccountPair, Network.PUBLIC);
      }

      await sdk.submitTransaction(transaction);
      await sdk.accounts.account(keyPair.accountId);
      return keyPair;
    } catch (error) {
      print("Failed to create account $error");
    }
    return null;
  }

  Future<bool> activateTestNetAccount(ActivateTestNetOptions options) async {
    bool funded = await FriendBot.fundTestAccount(options.accountId);
    if (funded) {
      print("Account funded successfully");
    } else {
      print("Failed to fund account");
    }
    return funded;
  }

  Future<void> addTrustLine(KeyPair pair) async {
    for (var entry in currencies.currencies.entries) {
      String currencyCode = entry.key;
      currency.Currency Currency = entry.value;

      String issuerAccountId = Currency.issuer;
      Asset currencyAsset =
          AssetTypeCreditAlphaNum4(Currency.assetCode, issuerAccountId);

      // TODO:
      ChangeTrustOperationBuilder changeTrustOperation =
          ChangeTrustOperationBuilder(currencyAsset, "300000");

      final account =
          await loadAccount(LoadAccountOptions(accountId: pair.accountId));

      Transaction transaction = new TransactionBuilder(account!)
          .addOperation(changeTrustOperation.build())
          .build();

      if (network.value == 'TESTNET') {
        transaction.sign(pair, Network.TESTNET);
      } else if (network.value == 'PUBLIC') {
        transaction.sign(pair, Network.PUBLIC);
      }

      SubmitTransactionResponse response =
          await sdk.submitTransaction(transaction);

      if (!response.success) {
        print("Failed to add trustline for $currencyCode");
      } else {
        print("trustline for $currencyCode was added successfully");
      }
    }
  }

  Future<void> sendTransaction(SendPaymentTransactionOptions options) async {
    // check that receiver account exists
    final receiver = await loadAccount(
        LoadAccountOptions(accountId: options.destinationAddress));

    // check that asset exists
    var specificBalance = receiver!.balances.firstWhere(
      (balance) => balance.assetCode == options.currency,
      orElse: () {
        throw Exception(
            'Balance with asset code ${options.currency} not found.');
      },
    );

    final asset = currencies.currencies[options.currency];
    if (asset == null) {
      throw Exception('${options.currency} not supported');
    }

    AccountResponse sender =
        await sdk.accounts.account(options.sourceKeyPair.accountId);

    Asset tftAsset = AssetTypeCreditAlphaNum4(asset.assetCode, asset.issuer);

    Transaction transaction = TransactionBuilder(sender)
        .addOperation(PaymentOperationBuilder(
                options.destinationAddress, tftAsset, options.amount)
            .build())
        .addMemo(Memo.text(options.memoText!))
        .build();
    transaction.sign(options.sourceKeyPair, Network.TESTNET);
    await sdk.submitTransaction(transaction);
  }

  Future<Transaction?> getActivationTransaction() async {
    try {
      final response = await http.post(
        Uri.parse(
            '${serviceUrls[network.value]}/activation_service/activate_account'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'address': keyPair.accountId}),
      );

      final data = jsonDecode(jsonDecode(response.body));
      String activationTransaction = data['activation_transaction'];

      XdrTransactionEnvelope xdrTxEnvelope =
          XdrTransactionEnvelope.fromEnvelopeXdrString(activationTransaction);

      Transaction transaction =
          Transaction.fromV1EnvelopeXdr(xdrTxEnvelope.v1!);

      return transaction;
    } catch (error) {
      throw Exception("Failed to activate: $error");
    }
  }

  // take asset code code && issuer (optional)
  Future<void> fundTrustLine(String asset_code) async {
    final asset = currencies.currencies[asset_code];
    if (asset == null) {
      throw Exception("Asset $asset_code not supported");
    }

    try {
      final response = await http.post(
        Uri.parse(
            '${serviceUrls[network.value]}/activation_service/fund_trustline'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'asset': '${asset.assetCode}:${asset.issuer}',
          'address': keyPair.accountId
        }),
      );

      final data = jsonDecode(response.body);

      String trustlineTransaction = data['addtrustline_transaction'];
      XdrTransactionEnvelope xdrTxEnvelope =
          XdrTransactionEnvelope.fromEnvelopeXdrString(trustlineTransaction);

      Transaction transaction =
          Transaction.fromV1EnvelopeXdr(xdrTxEnvelope.v1!);
      if (network.value == 'TESTNET') {
        transaction.sign(keyPair, Network.TESTNET);
      } else if (network.value == 'PUBLIC') {
        transaction.sign(keyPair, Network.PUBLIC);
      }

      SubmitTransactionResponse response2 =
          await sdk.submitTransaction(transaction);

      if (response2.success) {
        print("Trustline for $asset_code added successfully.");
      } else {
        print("Failed to add trustline for $asset_code.");
      }
    } catch (error) {
      print("Error funding trustline : $error");
    }
  }

  Future<TransactionData?> fetchFundDetails(
      FetchFundDetailsOptions options) async {
    try {
      final response = await http.get(
        Uri.parse(
            '${serviceUrls[network.value]}/transactionfunding_service/conditions'),
        headers: {'Content-Type': 'application/json'},
      );

      final body = jsonDecode(response.body);
      Map<String, dynamic>? details;
      for (var item in body) {
        if (item['asset'].startsWith(options.assetCode)) {
          details = item;
          break;
        }
      }

      if (details != null) {
        TransactionData transactionData = TransactionData.fromJson(details);
        print(transactionData);
        return transactionData;
      } else {
        print('Failed to details for asset: ');
      }

      return null;
    } catch (error) {
      print("Failed to get fund details, $error");
      throw Exception(error);
    }
  }

  Future<Operation?> makeFundPaumentOperation(
      FetchFundDetailsOptions options) async {
    TransactionData? transactionData = await fetchFundDetails(options);
    Asset asset = AssetTypeCreditAlphaNum4(options.assetCode, options.issuer);

    return PaymentOperationBuilder(
            transactionData!.feeAccountId, asset, transactionData.feeFixed)
        .build();
  }

  Future<Transaction?> buildFundedPaymentTransaction(
      SendPaymentTransactionOptions options) async {
    // check that receiver account exists
    final receiver = await loadAccount(
        LoadAccountOptions(accountId: options.destinationAddress));

    // check that asset exists
    var specificBalance = receiver!.balances.firstWhere(
      (balance) => balance.assetCode == options.currency,
      orElse: () {
        throw Exception(
            'Balance with asset code ${options.currency} not found.');
      },
    );

    final asset = currencies.currencies[options.currency];
    if (asset == null) {
      throw Exception('${options.currency} not supported');
    }

    AccountResponse sourceAccount =
        await sdk.accounts.account(keyPair.accountId);

    Operation? paymentOperation = await makeFundPaumentOperation(
        FetchFundDetailsOptions(
            assetCode: asset.assetCode, issuer: asset.issuer));

    Asset tftAsset = AssetTypeCreditAlphaNum4(asset.assetCode, asset.issuer);

    Transaction transaction = TransactionBuilder(sourceAccount)
        .addOperation(paymentOperation!)
        .addOperation(PaymentOperationBuilder(
                options.destinationAddress, tftAsset, options.amount)
            .build())
        .addMemo(Memo.text(options.memoText!))
        .build();
    return transaction;
  }

  Future<void> submitFundedTransaction(Transaction fundedTransaction) async {
    if (network.value == 'TESTNET') {
      fundedTransaction.sign(keyPair, Network.TESTNET);
    } else if (network.value == 'PUBLIC') {
      fundedTransaction.sign(keyPair, Network.PUBLIC);
    }

    print('Sending to');
    print(
        '${serviceUrls[network.value]}/transactionfunding_service/fund_transaction');

    try {
      final response = await http.post(
        Uri.parse(
            '${serviceUrls[network.value]}/transactionfunding_service/fund_transaction'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'transaction': fundedTransaction.toXdr()}),
      );

      print(response.body);
    } catch (error) {
      print('Something went wrong! $error');
      throw error;
    }
  }

  // TODO: get transactions of account
  Future<void> getTransactions() async {
    // AccountResponse response = await sdk.accounts.account(keyPair.accountId);
  }

  Future<List<Map<String, dynamic>>> getBalance() async {
    List<Map<String, dynamic>> balancesList = [];
    AccountResponse account = await sdk.accounts.account(keyPair.accountId);
    for (Balance balance in account.balances) {
      Map<String, dynamic> balanceMap = {};
      switch (balance.assetType) {
        case Asset.TYPE_NATIVE:
          balanceMap['assetCode'] = 'XLM';
          balanceMap['balance'] = balance.balance;
          break;
        default:
          balanceMap['assetCode'] = balance.assetCode;
          balanceMap['balance'] = balance.balance;
      }
      balancesList.add(balanceMap);
    }
    return balancesList;
  }
}
