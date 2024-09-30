import 'package:gridproxy_client/gridproxy_client.dart';
import 'package:gridproxy_client/models/farms.dart';
// import 'gridproxy_client.reflectable.dart';

void main() async {
  // initializeReflectable();

  GridProxyClient client = GridProxyClient('https://gridproxy.dev.grid.tf/');

  final res =
      await client.farms.list(ListFarmsQueryParameters(size: 1, page: 1));
  print(res);
}
