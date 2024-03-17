class QueryBalancesGetOptions {
  String address;

  QueryBalancesGetOptions({required this.address});
}

class BalanceTransferOptions {
  List<int> address;
  int amount;

  BalanceTransferOptions({
    required this.address,
    required this.amount,
  });
}
