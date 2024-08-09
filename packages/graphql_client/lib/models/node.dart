part of '../models.dart';

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
    return 'NodeInfo{id: $id, certification: $certification, dedicatedFarm: $dedicatedFarm, farmID: $farmID, gridVersion: $gridVersion, name: $name, pricingPolicyID: $pricingPolicyID, stellarAddress: $stellarAddress, twinID: $twinID, publicIPs: $publicIPs}';
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
    String returnOptions = "";
    returnOptions = _addToReturnList(returnOptions, "id", id);
    returnOptions =
        _addToReturnList(returnOptions, "certification", certification);
    returnOptions =
        _addToReturnList(returnOptions, "dedicatedFarm", dedicatedFarm);
    returnOptions = _addToReturnList(returnOptions, "farmID", farmID);
    returnOptions = _addToReturnList(returnOptions, "gridVersion", gridVersion);
    returnOptions = _addToReturnList(returnOptions, "name", name);
    returnOptions =
        _addToReturnList(returnOptions, "pricingPolicyID", pricingPolicyID);
    returnOptions =
        _addToReturnList(returnOptions, "stellarAddress", stellarAddress);
    returnOptions = _addToReturnList(returnOptions, "twinID", twinID);
    returnOptions =
        _addToReturnList(returnOptions, "publicIPs {", publicIPs != null);
    returnOptions = _addToReturnList(
        returnOptions, publicIPs.toString(), publicIPs != null);
    returnOptions = _addToReturnList(returnOptions, "}", publicIPs != null);

    return returnOptions;
  }
}
