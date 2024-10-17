import 'package:gridproxy_client/gridproxy_client.dart';
import 'package:gridproxy_client/models/farms.dart';

class Farms {
  final GridProxyClient client;

  Farms(this.client);

  Future<List<Farm>> list(ListFarmsQueryParameters? queryParams) async {
    final farms = await client.getRequest('/farms', queryParams?.toJson())
        as List<dynamic>;
    return farms.map((farm) => Farm.fromJson(farm)).toList();
  }
}
