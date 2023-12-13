import 'package:tfchain_client/generated/dev/types/tfchain_runtime/runtime_call.dart';
import 'package:tfchain_client/generated/dev/types/tfchain_support/types/node.dart';
import 'package:tfchain_client/tfchain_client.dart';

class QueryNodes {
  final QueryClient client;
  QueryNodes(this.client);

  Future<Node?> get({required int id}) async {
    if (id.isNaN || id <= 0) {
      throw Exception("Invalid node id. Node id must be a positive integer");
    }
    final res = await client.api.query.tfgridModule.nodes(id);
    return res as Node;
  }
}

class Nodes extends QueryNodes {
  Nodes(Client client) : super(client);

  Future<RuntimeCall> setPower(
      {required int nodeId, required bool power}) async {
    Map<String, bool?> powerTarget = {
      'up': null,
      'down': null,
    };
    if (power) {
      powerTarget['up'] = true;
    } else {
      powerTarget['down'] = true;
    }
    final extrinsic = client.api.tx.tfgridModule
        .changePowerTarget(nodeId: nodeId, powerTarget: powerTarget);
    return extrinsic;
  }
}

// TODO: what to do with this for addNodePublicConfig function
// interface NodePublicConfigOptions {
//   farmId: number;
//   nodeId: number;
//   publicConfig?: {
//     ip4: {
//       ip: string;
//       gw: string;
//     };
//     ip6?: {
//       ip: string;
//       gw: string;
//     } | null;
//     domain?: string | null;
//   } | null;
// }