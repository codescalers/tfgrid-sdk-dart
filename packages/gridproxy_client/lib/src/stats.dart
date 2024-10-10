import 'package:gridproxy_client/gridproxy_client.dart';
import 'package:gridproxy_client/models/stats.dart';

class Stats {
  final GridProxyClient client;

  Stats(this.client);

  Future<StatsInfo> get(StatsQueryParams options) async {
    final response = await client.getRequest('stats', options.toJson());
    StatsInfo stat = StatsInfo.fromJson(response as Map<String, dynamic>);
    return stat;
  }
}
