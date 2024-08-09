import 'package:gridproxy_client/gridproxy_client.dart';
import 'package:gridproxy_client/models/nodes.dart';

class Nodes {
  final GridProxyClient client;

  Nodes(this.client);

  Future<void> getNodeStatus(GetNodeStatusOptions options) async {
    final nodeStatus = await client.getRequest('/nodes/72/status');
    print(nodeStatus['status']);
  }
}
