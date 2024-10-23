part of '../models.dart';

@reflector
class NodeInfo {
  String? id;
  String? certification;
  bool? dedicatedFarm;
  int? farmID;
  int? gridVersion;
  String? name;
  int? pricingPolicyID;
  String? stellarAddress;
  int? twinID;
  List<PublicIpsInfo>? publicIPs;

  NodeInfo({
    this.id,
    this.certification,
    this.dedicatedFarm,
    this.farmID,
    this.gridVersion,
    this.name,
    this.pricingPolicyID,
    this.stellarAddress,
    this.twinID,
    this.publicIPs,
  });

  @override
  String toString() {
    return generateToString(this);
  }

  factory NodeInfo.fromJson(Map<String, dynamic> json) {
    return NodeInfo(
      id: json['id'] ?? '',
      certification: json['certification'] ?? '',
      dedicatedFarm: json['dedicatedFarm'] ?? false,
      farmID: json['farmID'] ?? 0,
      gridVersion: json['gridVersion'] ?? 0,
      name: json['name'] ?? '',
      pricingPolicyID: json['pricingPolicyID'] ?? 0,
      stellarAddress: json['stellarAddress'] ?? '',
      twinID: json['twinID'] ?? 0,
      publicIPs: json['publicIPs'] != null
          ? (json['publicIPs'] as List<dynamic>)
              .map((item) => PublicIpsInfo.fromJson(item))
              .toList()
          : null,
    );
  }
}

@reflector
class NodeReturnOptions {
  bool id;
  bool certification;
  bool dedicatedFarm;
  bool farmID;
  bool gridVersion;
  bool name;
  bool pricingPolicyID;
  bool stellarAddress;
  bool twinID;
  PublicIpsReturnOptions? publicIPs;

  NodeReturnOptions({
    this.id = false,
    this.certification = false,
    this.dedicatedFarm = false,
    this.farmID = false,
    this.gridVersion = false,
    this.name = false,
    this.pricingPolicyID = false,
    this.stellarAddress = false,
    this.twinID = false,
    this.publicIPs,
  });

  @override
  String toString() {
    return generateToString(this);
  }
}
