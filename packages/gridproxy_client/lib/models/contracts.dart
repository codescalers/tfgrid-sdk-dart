import 'package:gridproxy_client/models/reflector.dart';
import 'package:gridproxy_client/models/sort_order.dart';
import 'package:gridproxy_client/src/query_builder.dart';

@reflector
class Contract {}

@reflector
class NameContract extends Contract {
  String name;

  NameContract({
    required this.name,
  });

  factory NameContract.fromJson(Map<String, dynamic> json) {
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

@reflector
class NodeContract extends Contract {
  int nodeId;
  String deployment_data;
  String deployment_hash;
  int number_of_public_ips;
  String farm_name;
  int farm_id;

  NodeContract({
    required this.nodeId,
    required this.deployment_data,
    required this.deployment_hash,
    required this.number_of_public_ips,
    required this.farm_name,
    required this.farm_id,
  });

  factory NodeContract.fromJson(Map<String, dynamic> json) {
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

@reflector
class RentContract extends Contract {
  int nodeId;
  String farm_name;
  int farm_id;

  RentContract(
      {required this.nodeId, required this.farm_name, required this.farm_id});

  factory RentContract.fromJson(Map<String, dynamic> json) {
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

@reflector
class ContractInfo {
  int contract_id;
  int created_at;
  Contract? details;
  String state;
  int twin_id;
  String type;

  ContractInfo({
    required this.contract_id,
    required this.created_at,
    required this.details,
    required this.state,
    required this.twin_id,
    required this.type,
  });

  factory ContractInfo.fromJson(Map<String, dynamic> json) {
    final jsonType = json['type'];
    final type = ContractTypes.fromString(jsonType);

    Contract? details;
    if (json['details'] != null) {
      final detailsJson = json['details'];
      switch (type) {
        case ContractTypes.name:
          details = NameContract.fromJson(detailsJson);
          break;
        case ContractTypes.node:
          details = NodeContract.fromJson(detailsJson);
          break;
        case ContractTypes.rent:
          details = RentContract.fromJson(detailsJson);
          break;
        default:
          print("Unhandled type: $type");
      }
    }

    return ContractInfo(
      contract_id: json['contract_id'] ?? 0,
      created_at: json['created_at'] ?? 0,
      details: details,
      state: json['state'] ?? '',
      twin_id: json['twin_id'] ?? 0,
      type: json['type'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return toMap(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

enum ContractSortBy {
  twin_id,
  contract_id,
  type,
  state,
  created_at;

  @override
  String toString() {
    return name;
  }
}

enum ContractTypes {
  node,
  name,
  rent;

  static ContractTypes fromString(String type) {
    switch (type) {
      case 'node':
        return ContractTypes.node;
      case 'name':
        return ContractTypes.name;
      case 'rent':
        return ContractTypes.rent;
      default:
        throw ArgumentError('Unknown contract type: $type');
    }
  }

  @override
  String toString() {
    return this.name;
  }
}

enum ContractState {
  Created,
  GracePeriod,
  Deleted;

  @override
  String toString() {
    return name;
  }
}

@reflector
class ContractInfoQueryParams {
  int? page;
  int? size;
  bool? retCount;
  bool? randomize;
  ContractSortBy? sort_by;
  sortOrder? sort_order;
  int? contract_id;
  int? twin_id;
  int? node_id;
  String? name;
  ContractTypes? type;
  ContractState? state;
  String? deployment_data;
  String? deployment_hash;
  int? number_of_public_ips;

  ContractInfoQueryParams({
    this.page,
    this.size,
    this.retCount,
    this.randomize,
    this.sort_by,
    this.sort_order,
    this.contract_id,
    this.twin_id,
    this.node_id,
    this.name,
    this.type,
    this.state,
    this.deployment_data,
    this.deployment_hash,
    this.number_of_public_ips,
  });

  Map<String, dynamic> toJson() {
    return toMap(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

@reflector
class ContractBills {
  int amountBilled;
  int contract_id;
  String discountReceived;
  int timestamp;

  ContractBills({
    required this.amountBilled,
    required this.contract_id,
    required this.discountReceived,
    required this.timestamp,
  });

  factory ContractBills.fromJson(Map<String, dynamic> json) {
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

@reflector
class ContractBillQueryParams {
  int? page;
  int? size;
  bool? retCount;

  ContractBillQueryParams({
    this.page,
    this.size,
    this.retCount,
  });

  Map<String, dynamic> toJson() {
    return toMap(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
