import 'package:gridproxy_client/gridproxy_client.dart';
import 'package:gridproxy_client/models/nodes.dart';

class Nodes {
  final GridProxyClient client;

  Nodes(this.client);

  Future<List<Node>> list(ListNodesQueryParamaters? queryParams) async {
    final nodes = await client.getRequest('/nodes', queryParams?.toJson())
        as List<dynamic>;
    return nodes.map((node) => Node.fromJson(node)).toList();
  }

  Future<Node> getById({required int nodeID}) async {
    final node = await client.getRequest('/nodes/$nodeID', null);
    return Node.fromJson(node);
  }

  Future<List<NodeGPUInfo>> listNodeGPUs({required int nodeID}) async {
    final nodeGPUs =
        await client.getRequest('/nodes/$nodeID/gpu', null) as List<dynamic>;
    return nodeGPUs.map((gpu) => NodeGPUInfo.fromJson(gpu)).toList();
  }

  Future<NodeStatistics> getNodeStatistics({required int nodeID}) async {
    final nodeStatistics =
        await client.getRequest('/nodes/$nodeID/statistics', null);
    return NodeStatistics.fromJson(nodeStatistics);
  }
}
