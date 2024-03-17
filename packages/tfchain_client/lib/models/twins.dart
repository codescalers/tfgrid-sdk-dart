class QueryTwinsGetOptions {
  int id;
  QueryTwinsGetOptions({
    required this.id,
  });
}

class QueryTwinsGetTwinByAccountIdOptions {
  List<int> accountId;

  QueryTwinsGetTwinByAccountIdOptions({required this.accountId});
}

class TwinOptions {
  List<int> relay;
  List<int> pk;

  TwinOptions({
    required this.relay,
    required this.pk,
  });
}
