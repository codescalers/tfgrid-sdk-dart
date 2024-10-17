import 'package:gridproxy_client/models/reflector.dart';
import 'package:gridproxy_client/models/sort_order.dart';
import 'package:gridproxy_client/src/query_builder.dart';

class GetNodeStatusOptions {
  int nodeID;

  GetNodeStatusOptions({
    required this.nodeID,
  });
}

@reflector
class ListNodesQueryParamaters {
  int? page;
  int? size;
  bool? ret_count;
  bool? randomize;
  String? sort_by;
  sortOrder? sort_order;
  String? balance;
  int? free_mru;
  int? free_hru;
  int? free_sru;
  int? total_mru;
  int? total_cru;
  int? total_sru;
  int? total_hru;
  int? free_ips;
  String? status;
  bool? healthy;
  bool? has_ipv6;
  String? city;
  String? country;
  String? region;
  String? farm_name;
  bool? ipv4;
  bool? ipv6;
  bool? domain;
  bool? dedicated;
  bool? in_dedicated_farm;
  bool? rentable;
  bool? rented;
  int? rented_by;
  int? available_for;
  String? farm_ids;
  String? certification_type;
  bool? has_gpu;
  String? gpu_device_id;
  String? gpu_device_name;
  String? gpu_vendor_id;
  String? gpu_vendor_name;
  bool? gpu_available;
  int? owned_by;
  String? price_min;
  String? price_max;

  ListNodesQueryParamaters({
    this.page,
    this.size,
    this.ret_count,
    this.randomize,
    this.sort_by,
    this.sort_order,
    this.balance,
    this.free_mru,
    this.free_hru,
    this.free_sru,
    this.total_mru,
    this.total_cru,
    this.total_sru,
    this.total_hru,
    this.free_ips,
    this.status,
    this.healthy,
    this.has_ipv6,
    this.city,
    this.country,
    this.region,
    this.farm_name,
    this.ipv4,
    this.ipv6,
    this.domain,
    this.dedicated,
    this.in_dedicated_farm,
    this.rentable,
    this.rented,
    this.rented_by,
    this.available_for,
    this.farm_ids,
    this.certification_type,
    this.has_gpu,
    this.gpu_device_id,
    this.gpu_device_name,
    this.gpu_vendor_id,
    this.gpu_vendor_name,
    this.gpu_available,
    this.owned_by,
    this.price_min,
    this.price_max,
  });

  Map<String, dynamic> toJson() {
    return toMap(this);
  }
}

@reflector
class Node {
  String certificationType;
  String city;
  String country;
  int created;
  bool dedicated;
  Dmi? dmi;
  int extraFee;
  int farmId;
  String farmName;
  int farmingPolicyId;
  int gridVersion;
  bool healthy;
  String id;
  bool inDedicatedFarm;
  Location? location;
  int nodeId;
  int num_gpu;
  Power? power;
  double priceUsd;
  PublicConfig? publicConfig;
  int rentContractId;
  bool rentable;
  bool rented;
  int rentedByTwinId;
  String serialNumber;
  Speed? speed;
  String status;
  Resources? total_resources;
  int twinId;
  int updatedAt;
  int uptime;
  Resources? used_resources;

  Node({
    required this.certificationType,
    required this.city,
    required this.country,
    required this.created,
    required this.dedicated,
    this.dmi,
    required this.extraFee,
    required this.farmId,
    required this.farmName,
    required this.farmingPolicyId,
    required this.gridVersion,
    required this.healthy,
    required this.id,
    required this.inDedicatedFarm,
    this.location,
    required this.nodeId,
    required this.num_gpu,
    this.power,
    required this.priceUsd,
    this.publicConfig,
    required this.rentContractId,
    required this.rentable,
    required this.rented,
    required this.rentedByTwinId,
    required this.serialNumber,
    this.speed,
    required this.status,
    this.total_resources,
    required this.twinId,
    required this.updatedAt,
    required this.uptime,
    this.used_resources,
  });

  factory Node.fromJson(Map<String, dynamic> json) {
    final capacity = json['capacity'];
    return Node(
      certificationType: json['certificationType'] ?? '',
      city: json['city'] ?? '',
      country: json['country'] ?? '',
      created: json['created'] ?? 0,
      dedicated: json['dedicated'] ?? false,
      dmi: json['dmi'] != null ? Dmi.fromJson(json['dmi']) : null,
      extraFee: json['extraFee'] ?? 0,
      farmId: json['farmId'] ?? 0,
      farmName: json['farmName'] ?? '',
      farmingPolicyId: json['farmingPolicyId'] ?? 0,
      gridVersion: json['gridVersion'] ?? 0,
      healthy: json['healthy'] ?? false,
      id: json['id'] ?? '',
      inDedicatedFarm: json['inDedicatedFarm'] ?? false,
      location:
          json['location'] != null ? Location.fromJson(json['location']) : null,
      nodeId: json['nodeId'] ?? 0,
      num_gpu: json['num_gpu'] ?? 0,
      power: json['power'] != null ? Power.fromJson(json['power']) : null,
      priceUsd: json['price_usd'].toDouble() ?? 0,
      publicConfig: json['publicConfig'] != null
          ? PublicConfig.fromJson(json['publicConfig'])
          : null,
      rentContractId: json['rentContractId'] ?? 0,
      rentable: json['rentable'] ?? false,
      rented: json['rented'] ?? false,
      rentedByTwinId: json['rentedByTwinId'] ?? 0,
      serialNumber: json['serialNumber'] ?? '',
      speed: json['speed'] != null ? Speed.fromJson(json['speed']) : null,
      status: json['status'] ?? '',
      twinId: json['twinId'] ?? 0,
      updatedAt: json['updatedAt'] ?? 0,
      uptime: json['uptime'] ?? 0,
      used_resources: capacity != null && capacity['used_resources'] != null
          ? Resources.fromJson(capacity['used_resources'])
          : json['used_resources'] != null
              ? Resources.fromJson(json['used_resources'])
              : null,
      total_resources: capacity != null && capacity['total_resources'] != null
          ? Resources.fromJson(capacity['total_resources'])
          : json['total_resources'] != null
              ? Resources.fromJson(json['total_resources'])
              : null,
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

@reflector
class Dmi {
  Baseboard? baseboard;
  Bios? bios;
  List<Memory>? memory;
  int node_twin_id;
  List<Processor>? processor;

  Dmi({
    this.baseboard,
    this.bios,
    this.memory,
    required this.node_twin_id,
    this.processor,
  });

  factory Dmi.fromJson(Map<String, dynamic> json) {
    return Dmi(
      baseboard: json['baseboard'] != null
          ? Baseboard.fromJson(json['baseboard'])
          : null,
      bios: json['bios'] != null ? Bios.fromJson(json['bios']) : null,
      memory: json['memory'] != null
          ? (json['memory'] as List).map((i) => Memory.fromJson(i)).toList()
          : [],
      node_twin_id: json['node_twin_id'] ?? 0,
      processor: json['processor'] != null
          ? (json['processor'] as List)
              .map((i) => Processor.fromJson(i))
              .toList()
          : [],
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

@reflector
class Bios {
  String vendor;
  String version;

  Bios({
    required this.vendor,
    required this.version,
  });

  factory Bios.fromJson(Map<String, dynamic> json) {
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
class Memory {
  String manufacturer;
  String type;

  Memory({
    required this.manufacturer,
    required this.type,
  });

  factory Memory.fromJson(Map<String, dynamic> json) {
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
class Processor {
  String thread_count;
  String version;

  Processor({
    required this.thread_count,
    required this.version,
  });

  factory Processor.fromJson(Map<String, dynamic> json) {
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
class Location {
  String city;
  String country;
  double latitude;
  double longitude;

  Location({
    required this.city,
    required this.country,
    required this.latitude,
    required this.longitude,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
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
class Power {
  String state;
  String target;

  Power({
    required this.state,
    required this.target,
  });

  factory Power.fromJson(Map<String, dynamic> json) {
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
class PublicConfig {
  String domain;
  String gw4;
  String gw6;
  String ipv4;
  String ipv6;

  PublicConfig({
    required this.domain,
    required this.gw4,
    required this.gw6,
    required this.ipv4,
    required this.ipv6,
  });

  factory PublicConfig.fromJson(Map<String, dynamic> json) {
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
class Speed {
  double download;
  int node_twin_id;
  double upload;

  Speed({
    required this.download,
    required this.node_twin_id,
    required this.upload,
  });

  factory Speed.fromJson(Map<String, dynamic> json) {
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
class Baseboard {
  String manufacturer;
  String product_name;

  Baseboard({
    required this.manufacturer,
    required this.product_name,
  });

  factory Baseboard.fromJson(Map<String, dynamic> json) {
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
class Resources {
  int cru;
  int hru;
  int mru;
  int sru;
  int ipv4u;

  Resources({
    required this.cru,
    required this.hru,
    required this.mru,
    required this.sru,
    required this.ipv4u,
  });

  factory Resources.fromJson(Map<String, dynamic> json) {
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
class NodeGPUInfo {
  int contract;
  String device;
  String id;
  int node_twin_id;
  int updated_at;
  String vendor;

  NodeGPUInfo({
    required this.contract,
    required this.device,
    required this.id,
    required this.node_twin_id,
    required this.updated_at,
    required this.vendor,
  });

  factory NodeGPUInfo.fromJson(Map<String, dynamic> json) {
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
class NodeStatistics {
  Resources? system;
  Resources? total;
  Resources? used;
  NodeUsers? users;

  NodeStatistics({
    this.system,
    this.total,
    this.used,
    this.users,
  });

  factory NodeStatistics.fromJson(Map<String, dynamic> json) {
    return NodeStatistics(
      system:
          json['system'] != null ? Resources.fromJson(json['system']) : null,
      total: json['total'] != null ? Resources.fromJson(json['total']) : null,
      used: json['used'] != null ? Resources.fromJson(json['used']) : null,
      users: json['users'] != null ? NodeUsers.fromJson(json['users']) : null,
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

@reflector
class NodeUsers {
  int deployments;
  int lastDeploymentTimestamp;
  int workloads;

  NodeUsers({
    required this.deployments,
    required this.lastDeploymentTimestamp,
    required this.workloads,
  });

  factory NodeUsers.fromJson(Map<String, dynamic> json) {
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
