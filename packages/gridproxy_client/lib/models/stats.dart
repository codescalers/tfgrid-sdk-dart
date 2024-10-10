import 'package:gridproxy_client/models/reflector.dart';
import 'package:gridproxy_client/src/query_builder.dart';

@reflector
class StatsInfo {
  int accessNodes;
  int contracts;
  int countries;
  int dedicatedNodes;
  int farms;
  int gateways;
  int gpus;
  int nodes;
  Map<String, dynamic> nodesDistribution;
  int publicIps;
  int totalCru;
  int totalHru;
  int totalMru;
  int totalSru;
  int twins;
  int workloads_number;

  StatsInfo({
    required this.accessNodes,
    required this.contracts,
    required this.countries,
    required this.dedicatedNodes,
    required this.farms,
    required this.gateways,
    required this.gpus,
    required this.nodes,
    required this.nodesDistribution,
    required this.publicIps,
    required this.totalCru,
    required this.totalHru,
    required this.totalMru,
    required this.totalSru,
    required this.twins,
    required this.workloads_number,
  });

  factory StatsInfo.fromJson(Map<String, dynamic> json) {
    return fromJson(json);
  }

  Map<String, dynamic> toJson() {
    return toMap(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

enum NodeStatus {
  up,
  down,
  standby;

  @override
  String toString() {
    return name;
  }
}

@reflector
class StatsQueryParams {
  NodeStatus? status;

  StatsQueryParams({
    this.status,
  });

  Map<String, dynamic> toJson() {
    return toMap(this);
  }
}
