import 'package:stellar_flutter_sdk/stellar_flutter_sdk.dart';

enum TransactionType { Create, Payment, Receive }

class PaymentTransaction extends OperationResponse {
  PaymentTransaction({
    required this.hash,
    required this.from,
    required this.to,
    required this.asset,
    required this.amount,
    required this.memo,
    required this.status,
    required this.date, 
    required TransactionType type,
  });
  final String hash;
  final String from;
  final String to;
  final String asset;
  final String amount;
  final String? memo;
  final bool status;
  final String date;

  @override
  String toString() {
    return 'ITransaction(hash: $hash, from: $from, to: $to, asset: $asset, amount: $amount, memo: $memo, status: $status, date: $date)';
  }
}