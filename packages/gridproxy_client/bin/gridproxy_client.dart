import 'package:gridproxy_client/gridproxy_client.dart';
// import 'gridproxy_client.reflectable.dart';

void main() async {
  // initializeReflectable();

  GridProxyClient client = GridProxyClient('https://gridproxy.dev.grid.tf/');

  final res = await client.nodes.getNodeStatistics(nodeID: 161);
  print(res);
}
