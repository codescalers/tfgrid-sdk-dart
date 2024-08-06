import 'package:stellar_flutter_sdk/stellar_flutter_sdk.dart';

class LoadAccountOptions {
  String accountId;

  LoadAccountOptions({
    required this.accountId,
  });
}

class ActivateTestNetOptions {
  String accountId;

  ActivateTestNetOptions({required this.accountId});
}

class CreateAccountOptions {
  String? mnemonic;
  CreateAccountOptions({this.mnemonic});
}

class CreateAccountSecretOptions {
  String secretSeed;

  CreateAccountSecretOptions({required this.secretSeed});
}

class SendPaymentTransactionOptions {
  KeyPair sourceKeyPair;
  String destinationAddress;
  String amount;
  String currency;
  String? memoText;

  SendPaymentTransactionOptions({
    required this.sourceKeyPair,
    required this.destinationAddress,
    required this.amount,
    required this.currency,
    this.memoText,
  });
}

class FundTrustlineOptions {
  String assetCode;
  String? issuer;

  FundTrustlineOptions({required this.assetCode, this.issuer});
}

class TransactionData {
  final String asset;
  final String feeAccountId;
  final String feeFixed;

  TransactionData({
    required this.asset,
    required this.feeAccountId,
    required this.feeFixed,
  });

  factory TransactionData.fromJson(Map<String, dynamic> json) {
    return TransactionData(
      asset: json['asset'],
      feeAccountId: json['fee_account_id'],
      feeFixed: json['fee_fixed'],
    );
  }

  @override
  String toString() {
    return 'TransactionData{asset: $asset, feeAccountId: $feeAccountId, feeFixed: $feeFixed}';
  }
}

class FetchFundDetailsOptions {
  String assetCode;
  String issuer;

  FetchFundDetailsOptions({required this.assetCode, required this.issuer});
}
