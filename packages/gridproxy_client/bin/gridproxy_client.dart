import 'package:gridproxy_client/gridproxy_client.dart';
import 'package:gridproxy_client/models/nodes.dart';

void main() async {
  GridProxyClient client = GridProxyClient('https://gridproxy.dev.grid.tf');
  await client.nodes.getNodeStatus(GetNodeStatusOptions(nodeID: 72));
}
