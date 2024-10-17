import 'package:gridproxy_client/models/reflector.dart';
import 'package:gridproxy_client/models/sort_order.dart';
import 'package:gridproxy_client/src/query_builder.dart';

@reflector
class ListFarmsQueryParameters {
  int? page;
  int? size;
  bool? ret_count;
  bool? randomize;
  String? sort_by;
  sortOrder? sort_order;
  int? free_ips;
  int? total_ips;
  int? pricing_policy_id;
  int? farm_id;
  int? twin_id;
  String? name;
  String? name_contains;
  String? certification_type;
  bool? dedicated;
  String? stellar_address;
  int? node_free_mru;
  int? node_free_hru;
  int? node_free_sru;
  int? node_total_cru;
  String? node_status;
  int? node_rented_by;
  int? node_available_for;
  bool? node_has_gpu;
  bool? node_has_ipv6;
  bool? node_certified;
  String? country;
  String? region;

  ListFarmsQueryParameters({
    this.page,
    this.size,
    this.ret_count,
    this.randomize,
    this.sort_by,
    this.sort_order,
    this.free_ips,
    this.total_ips,
    this.pricing_policy_id,
    this.farm_id,
    this.twin_id,
    this.name,
    this.name_contains,
    this.certification_type,
    this.dedicated,
    this.stellar_address,
    this.node_free_mru,
    this.node_free_hru,
    this.node_free_sru,
    this.node_total_cru,
    this.node_status,
    this.node_rented_by,
    this.node_available_for,
    this.node_has_gpu,
    this.node_has_ipv6,
    this.node_certified,
    this.country,
    this.region,
  });

  Map<String, dynamic> toJson() {
    return toMap(this);
  }
}

@reflector
class Farm {
  String certificationType;
  bool dedicated;
  int farmID;
  String name;
  int pricingPolicyId;
  List<PublicIp> publicIps;
  String stellarAddress;
  int twinId;

  Farm({
    required this.certificationType,
    required this.dedicated,
    required this.farmID,
    required this.name,
    required this.pricingPolicyId,
    required this.publicIps,
    required this.stellarAddress,
    required this.twinId,
  });

  factory Farm.fromJson(Map<String, dynamic> json) {
    return Farm(
      certificationType: json['certificationType'],
      dedicated: json['dedicated'],
      farmID: json['farmId'],
      name: json['name'],
      pricingPolicyId: json['pricingPolicyId'],
      publicIps: json['publicIps'] != null
          ? (json['publicIps'] as List)
              .map((i) => PublicIp.fromJson(i))
              .toList()
          : <PublicIp>[],
      stellarAddress: json['stellarAddress'],
      twinId: json['twinId'],
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
class PublicIp {
  int contract_id;
  String farm_id;
  String gateway;
  String id;
  String ip;

  PublicIp({
    required this.contract_id,
    required this.farm_id,
    required this.gateway,
    required this.id,
    required this.ip,
  });

  factory PublicIp.fromJson(Map<String, dynamic> json) {
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
