enum TransactionType { Create, Payment, Receive }

class ITransaction {}

class PaymentTransaction extends ITransaction {
  PaymentTransaction({
    required this.hash,
    required this.from,
    required this.to,
    required this.asset,
    required this.amount,
    required this.memo,
    required this.status,
    required this.date,
    required this.type,
  });
  final String hash;
  final String from;
  final String to;
  final String asset;
  final String amount;
  final String memo;
  final bool status;
  final String date;
  final TransactionType type;

  @override
  String toString() {
    return 'ITransaction(hash: $hash, from: $from, to: $to, asset: $asset, amount: $amount, memo: $memo, status: $status, date: $date)';
  }
}
