abstract class BalanceInfo {
  String get assetCode;
  String get balance;
}

class BalanceData implements BalanceInfo {
  @override
  final String assetCode;
  @override
  final String balance;

  BalanceData({required this.assetCode, required this.balance});

  @override
  String toString() {
    return 'BalanceData(assetCode: $assetCode, balance: $balance)';
  }
}
