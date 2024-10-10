part of '../stellar_client.dart';

class Client {
  final NetworkType _network;
  late StellarSDK _sdk;
  late KeyPair _keyPair;
  late currency.Currencies _currencies;
  late Map<String, String> _serviceUrls;
  late Network _stellarNetwork;

  String get accountId => _keyPair.accountId;
  String get secretSeed => _keyPair.secretSeed;
  Uint8List? get privateKey => _keyPair.privateKey;

  Client(this._network, String secretSeed) {
    _keyPair = KeyPair.fromSecretSeed(secretSeed);
    _initialize();
  }

  factory Client.create(NetworkType network) {
    final keyPair = KeyPair.random();
    return Client(network, keyPair.secretSeed);
  }

  factory Client.fromSecretSeedHex(NetworkType network, String secretSeedHex) {
    final seed = Uint8List.fromList(hex.decode(secretSeedHex));
    final keyPair = KeyPair.fromSecretSeedList(seed);
    return Client(network, keyPair.secretSeed);
  }

  static Future<Client> fromMnemonic(
      NetworkType network, String mnemonic) async {
    Wallet wallet = await Wallet.from(mnemonic);
    final keyPair = await wallet.getKeyPair();
    return Client(network, keyPair.secretSeed);
  }

  void _initialize() {
    late final currency.Currency tft;
    _serviceUrls = {
      'PUBLIC': 'https://tokenservices.threefold.io/threefoldfoundation',
      'TESTNET': 'https://testnet.threefold.io/threefoldfoundation'
    };
    switch (_network) {
      case NetworkType.TESTNET:
        _sdk = StellarSDK.TESTNET;
        _stellarNetwork = Network.TESTNET;
        tft = currency.Currency(
          assetCode: 'TFT',
          issuer: "GA47YZA3PKFUZMPLQ3B5F2E3CJIB57TGGU7SPCQT2WAEYKN766PWIMB3",
        );
        break;
      case NetworkType.PUBLIC:
        _sdk = StellarSDK.PUBLIC;
        _stellarNetwork = Network.PUBLIC;
        tft = currency.Currency(
          assetCode: 'TFT',
          issuer: "GBOVQKJYHXRR3DX6NOX2RRYFRCUMSADGDESTDNBDS6CDVLGVESRTAC47",
        );
        break;
      default:
        throw Exception('Unsupported network type');
    }

    _currencies = currency.Currencies({'TFT': tft});
  }

  Future<bool> activateThroughThreefoldService() async {
    Transaction? transaction = await _getActivationTransaction();
    if (transaction != null) {
      transaction.sign(_keyPair, _stellarNetwork);
      await _sdk.submitTransaction(transaction);
      print("Account Activated Successfully.");
      print("TFT Asset was added Successfully ");
      return true;
    } else {
      throw Exception("Failed to retrieve activation transaction.");
    }
  }

  Future<Transaction?> _getActivationTransaction() async {
    try {
      final response = await http.post(
        Uri.parse(
            '${_serviceUrls[_network.toString()]}/activation_service/activate_account'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'address': accountId}),
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

  Future<bool> activateThroughFriendBot({required String accountId}) async {
    if (_stellarNetwork != Network.TESTNET) {
      throw Exception("Network should be TEST");
    }
    try {
      bool funded = await FriendBot.fundTestAccount(accountId);
      if (funded) {
        print("Account funded successfully");
      } else {
        print("Failed to fund account");
      }
      return funded;
    } catch (error) {
      print("Error while funding account: $error");
      return false;
    }
  }

  Future<bool> addTrustLine() async {
    for (var entry in _currencies.currencies.entries) {
      String currencyCode = entry.key;
      currency.Currency currentCurrency = entry.value;

      String issuerAccountId = currentCurrency.issuer;
      Asset currencyAsset =
          AssetTypeCreditAlphaNum4(currentCurrency.assetCode, issuerAccountId);

      ChangeTrustOperationBuilder changeTrustOperation =
          ChangeTrustOperationBuilder(currencyAsset, "300000");

      final account = await _sdk.accounts.account(accountId);

      Transaction transaction = TransactionBuilder(account)
          .addOperation(changeTrustOperation.build())
          .build();
      transaction.sign(_keyPair, _stellarNetwork);

      SubmitTransactionResponse response =
          await _sdk.submitTransaction(transaction);

      if (!response.success) {
        print("Failed to add trustline for $currencyCode");
        return false;
      } else {
        print("trustline for $currencyCode was added successfully");
        return true;
      }
    }

    print("No trustlines were processed");
    return false;
  }

  Future<bool> transfer(
      {required String destinationAddress,
      required String amount,
      required String currency,
      String? memoText}) async {
    try {
      Transaction? transaction = await _buildTransaction(
          destinationAddress: destinationAddress,
          amount: amount,
          currency: currency,
          funded: false);

      transaction!.sign(_keyPair, _stellarNetwork);
      await _sdk.submitTransaction(transaction);
      print("Transaction successful.");
      return true;
    } catch (error) {
      print("Failed to send transaction: $error");
      return false;
    }
  }

  Future<bool> activateThroughActivationWallet(
      {required String activationWalletSecretSeed}) async {
    try {
      KeyPair walletKeyPair =
          KeyPair.fromSecretSeed(activationWalletSecretSeed);
      AccountResponse existingAccount =
          await _sdk.accounts.account(walletKeyPair.accountId);

      Transaction transaction = TransactionBuilder(existingAccount)
          .addOperation(CreateAccountOperationBuilder(accountId, "1").build())
          .build();

      transaction.sign(walletKeyPair, _stellarNetwork);

      await _sdk.submitTransaction(transaction);
      return true;
    } catch (error) {
      print("Failed to create account $error");
      return false;
    }
  }

  // take asset code && issuer (optional)
  Future<bool> addTrustLineThroughThreefoldService(String asset_code) async {
    final asset = _currencies.currencies[asset_code];
    if (asset == null) {
      throw Exception("Asset $asset_code not supported");
    }

    try {
      final response = await http.post(
        Uri.parse(
            '${_serviceUrls[_network.toString()]}/activation_service/fund_trustline'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'asset': '${asset.assetCode}:${asset.issuer}',
          'address': accountId
        }),
      );

      final data = jsonDecode(response.body);

      String trustlineTransaction = data['addtrustline_transaction'];
      XdrTransactionEnvelope xdrTxEnvelope =
          XdrTransactionEnvelope.fromEnvelopeXdrString(trustlineTransaction);

      Transaction transaction =
          Transaction.fromV1EnvelopeXdr(xdrTxEnvelope.v1!);

      transaction.sign(_keyPair, _stellarNetwork);

      SubmitTransactionResponse response2 =
          await _sdk.submitTransaction(transaction);

      if (response2.success) {
        print("Trustline for $asset_code added successfully.");
        return true;
      } else {
        print("Failed to add trustline for $asset_code.");
        return false;
      }
    } catch (error) {
      throw Exception("Error funding trustline : $error");
    }
  }

  Future<TransactionData?> _fetchFundDetails(
      {required String assetCode}) async {
    try {
      final response = await http.get(
        Uri.parse(
            '${_serviceUrls[_network.toString()]}/transactionfunding_service/conditions'),
        headers: {'Content-Type': 'application/json'},
      );

      final body = jsonDecode(response.body);
      Map<String, dynamic>? details;
      for (var item in body) {
        if (item['asset'].startsWith(assetCode)) {
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
      throw Exception("Failed to get fund details, $error");
    }
  }

  Future<Operation?> _makeFundPaymentOperation(
      {required String assetCode, required String issuer}) async {
    TransactionData? transactionData =
        await _fetchFundDetails(assetCode: assetCode);
    Asset asset = AssetTypeCreditAlphaNum4(assetCode, issuer);

    return PaymentOperationBuilder(
            transactionData!.feeAccountId, asset, transactionData.feeFixed)
        .build();
  }

  Future<Transaction?> _buildTransaction(
      {required String destinationAddress,
      required String amount,
      required String currency,
      String? memoText,
      required bool funded}) async {
    // check that receiver account exists
    final receiver = await _sdk.accounts.account(accountId);

    // check that asset exists
    var specificBalance = receiver.balances.firstWhere(
      (balance) => balance.assetCode == currency,
      orElse: () {
        throw Exception('Balance with asset code ${currency} not found.');
      },
    );

    final asset = _currencies.currencies[currency];
    if (asset == null) {
      throw Exception('${currency} not supported');
    }

    AccountResponse sender = await _sdk.accounts.account(accountId);
    Asset tftAsset = AssetTypeCreditAlphaNum4(asset.assetCode, asset.issuer);
    Transaction? transaction;

    if (funded) {
      Operation? paymentOperation = await _makeFundPaymentOperation(
          assetCode: asset.assetCode, issuer: asset.issuer);
      transaction = TransactionBuilder(sender)
          .addOperation(paymentOperation!)
          .addOperation(
              PaymentOperationBuilder(destinationAddress, tftAsset, amount)
                  .build())
          .addMemo(memoText != null ? Memo.text(memoText) : Memo.none())
          .build();
    } else {
      transaction = TransactionBuilder(sender)
          .addOperation(
              PaymentOperationBuilder(destinationAddress, tftAsset, amount)
                  .build())
          .addMemo(memoText != null ? Memo.text(memoText) : Memo.none())
          .build();
    }

    return transaction;
  }

  Future<void> transferThroughThreefoldService(
      {required String destinationAddress,
      required String amount,
      required String currency,
      String? memoText}) async {
    Transaction? fundedTransaction = await _buildTransaction(
        destinationAddress: destinationAddress,
        amount: amount,
        currency: currency,
        funded: true);

    fundedTransaction!.sign(_keyPair, _stellarNetwork);

    print('Sending to');
    print(
        '${_serviceUrls[_network.toString()]}/transactionfunding_service/fund_transaction');

    try {
      final response = await http.post(
        Uri.parse(
            '${_serviceUrls[_network.toString()]}/transactionfunding_service/fund_transaction'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'transaction': fundedTransaction.toEnvelopeXdrBase64()}),
      );

      print(response.body);
    } catch (error) {
      throw Exception('Something went wrong! $error');
    }
  }

  Future<List<OperationResponse>> getTransactions(
      {String? assetCodeFilter}) async {
    Page<OperationResponse> payments = await _sdk.payments
        .forAccount(accountId)
        .order(RequestBuilderOrder.DESC)
        .execute();
    List<OperationResponse> transactionDetails = [];

    if (payments.records != null && payments.records!.isNotEmpty) {
      for (OperationResponse response in payments.records!) {
        if (response is PaymentOperationResponse) {
          final memoText = await this.getMemoText(response.links?.transaction?.toJson()["href"]);
          String assetCode = response.assetCode ?? 'XLM';
          if (assetCodeFilter == null || assetCode == assetCodeFilter) {
            final details = PaymentTransaction(
              hash: response.transactionHash!,
              from: response.from!.accountId,
              to: response.to!.accountId,
              asset: response.assetCode.toString(),
              amount: response.amount!,
              type: response.to!.accountId == this.accountId
                  ? TransactionType.Receive
                  : TransactionType.Payment,
              status: response.transactionSuccessful!,
              date: DateTime.parse(response.createdAt!).toLocal().toString(),
              memo: memoText);
            
            transactionDetails.add(details);
          }
        } else if (response is CreateAccountOperationResponse) {
          if (assetCodeFilter == null) {
            transactionDetails.add(response);
          }
        } else {
          print("Unhandled operation type: ${response.runtimeType}");
        }
      }
    } else {
      print("No payment records found.");
    }
    return transactionDetails;
  }

  Future<List<BalanceInfo>> getBalance() async {
    List<BalanceInfo> balancesList = [];
    AccountResponse account = await _sdk.accounts.account(accountId);

    for (Balance balance in account.balances) {
      BalanceData balanceData;
      switch (balance.assetType) {
        case Asset.TYPE_NATIVE:
          balanceData = BalanceData(assetCode: 'XLM', balance: balance.balance);
          break;
        default:
          balanceData = BalanceData(
              assetCode: balance.assetCode!, balance: balance.balance);
      }
      balancesList.add(balanceData);
    }

    return balancesList;
  }

  Future<List<VestingAccount>?> getVestingAccounts() async {
    try {
      final response = await http.post(
        Uri.parse(
            '${_serviceUrls[_network.toString()]}/vesting_service/vesting_accounts'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'owner_address': accountId}),
      );

      final body = jsonDecode(response.body);
      if (body['vesting_accounts'] is List &&
          body['vesting_accounts'].isEmpty) {
        print("no vesting account found");
        return [];
      } else {
        List<VestingAccount> accountsList = [];

        for (var account in body['vesting_accounts']) {
          String address = account['address'];
          VestingAccount vestingAccount = VestingAccount.fromJson(account);

          accountsList.add(vestingAccount);
        }
        return accountsList;
      }
    } catch (error) {
      throw Exception('Could not create vestingAccount due to $error');
    }
  }

  Future<String> getMemoText(String url) async {
    try {
      final response = await http.get(
          Uri.parse(url), headers: {'Content-Type': 'application/json'},
      );
      final body = jsonDecode(response.body);
      final memoText = body['memo'] ?? "";
      return memoText;
    } catch (e) {
      throw Exception("Couldn't get memo text due to ${e}");
    }
  }
}
