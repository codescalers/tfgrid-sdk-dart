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
    return fromJson(json);
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
