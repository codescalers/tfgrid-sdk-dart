// ignore_for_file: constant_identifier_names

part of '../models.dart';

enum ContractStates {
  Created,
  Deleted,
  OutOfFunds,
  GracePeriod,
}

enum DiscountLevel {
  None,
  Default,
  Bronze,
  Silver,
  Gold;

  @override
  String toString() {
    return name;
  }
}

DiscountLevel parseDiscountLevel(String level) {
  switch (level.toLowerCase()) {
    case 'None':
      return DiscountLevel.None;
    case 'Default':
      return DiscountLevel.Default;
    case 'Bronze':
      return DiscountLevel.Bronze;
    case 'Silver':
      return DiscountLevel.Silver;
    case 'Gold':
      return DiscountLevel.Gold;
    default:
      return DiscountLevel.None;
  }
}

@reflector
class BaseContractReturnOptions {
  bool id;
  bool gridVersion;
  bool contractID;
  bool twinID;
  bool state;
  bool createdAt;
  bool solutionProviderID;

  BaseContractReturnOptions({
    this.id = false,
    this.gridVersion = false,
    this.contractID = false,
    this.twinID = false,
    this.state = false,
    this.createdAt = false,
    this.solutionProviderID = false,
  });

  @override
  String toString() {
    String returnOptions = '';
    returnOptions = _addToReturnList(returnOptions, 'id', id);
    returnOptions = _addToReturnList(returnOptions, 'gridVersion', gridVersion);
    returnOptions = _addToReturnList(returnOptions, 'contractID', contractID);
    returnOptions = _addToReturnList(returnOptions, 'twinID', twinID);
    returnOptions = _addToReturnList(returnOptions, 'state', state);
    returnOptions = _addToReturnList(returnOptions, 'createdAt', createdAt);
    returnOptions = _addToReturnList(
        returnOptions, 'solutionProviderID', solutionProviderID);
    return returnOptions;
  }
}

class BaseContract {
  String? id;
  int? gridVersion;
  String? contractID;
  int? twinID;
  String? state;
  String? createdAt;
  int? solutionProviderID;

  BaseContract({
    this.id,
    this.gridVersion,
    this.contractID,
    this.twinID,
    this.state,
    this.createdAt,
    this.solutionProviderID,
  });
}

@reflector
class NameContractReturnOptions extends BaseContractReturnOptions {
  bool name;

  NameContractReturnOptions({
    this.name = false,
    super.id = false,
    super.gridVersion = false,
    super.contractID = false,
    super.twinID = false,
    super.state = false,
    super.createdAt = false,
    super.solutionProviderID = false,
  });

  @override
  String toString() {
    String returnOptions = super.toString();
    returnOptions = _addToReturnList(returnOptions, 'name', name);
    return returnOptions;
  }
}

class NameContract extends BaseContract {
  String? name;

  NameContract({
    super.id,
    super.gridVersion,
    super.contractID,
    super.twinID,
    super.state,
    super.createdAt,
    super.solutionProviderID,
    this.name,
  });

  factory NameContract.fromJson(Map<String, dynamic> json) {
    return NameContract(
      id: json['id'] ?? '',
      gridVersion: json['gridVersion'] ?? 0,
      contractID: json['contractID'] ?? '',
      twinID: json['twinID'] ?? 0,
      state: json['state'] ?? '',
      createdAt: json['createdAt'] ?? '',
      solutionProviderID: json['solutionProviderID'] ?? 0,
      name: json['name'] ?? '',
    );
  }

  @override
  String toString() {
    return 'NameContract{id: $id, gridVersion: $gridVersion, contractID: $contractID, twinID: $twinID, state: $state, createdAt: $createdAt, solutionProviderID: $solutionProviderID, name: $name}';
  }
}

@reflector
class NodeContractReturnOptions extends BaseContractReturnOptions {
  bool nodeID;
  bool deploymentData;
  bool deploymentHash;
  bool numberOfPublicIPs;
  ContractUsedResourcesReturnOptions? resourcesUsed;

  NodeContractReturnOptions({
    this.nodeID = false,
    this.deploymentData = false,
    this.deploymentHash = false,
    this.numberOfPublicIPs = false,
    this.resourcesUsed,
    super.id = false,
    super.gridVersion = false,
    super.contractID = false,
    super.twinID = false,
    super.state = false,
    super.createdAt = false,
    super.solutionProviderID = false,
  });

  @override
  String toString() {
    String returnOptions = super.toString();
    returnOptions = _addToReturnList(returnOptions, 'nodeID', nodeID);
    returnOptions =
        _addToReturnList(returnOptions, 'deploymentData', deploymentData);
    returnOptions =
        _addToReturnList(returnOptions, 'deploymentHash', deploymentHash);
    returnOptions =
        _addToReturnList(returnOptions, 'numberOfPublicIPs', numberOfPublicIPs);
    returnOptions = _addToReturnList(
        returnOptions, 'resourcesUsed{', resourcesUsed != null);
    returnOptions = _addToReturnList(
        returnOptions, resourcesUsed.toString(), resourcesUsed != null);
    returnOptions = _addToReturnList(returnOptions, '}', resourcesUsed != null);
    return returnOptions;
  }
}

class NodeContract extends BaseContract {
  int? nodeID;
  String? deploymentData;
  String? deploymentHash;
  int? numberOfPublicIPs;
  ContractUsedResources? resourcesUsed;

  NodeContract({
    super.id,
    super.gridVersion,
    super.contractID,
    super.twinID,
    super.state,
    super.createdAt,
    super.solutionProviderID,
    this.nodeID,
    this.deploymentData,
    this.deploymentHash,
    this.numberOfPublicIPs,
    this.resourcesUsed,
  });

  factory NodeContract.fromJson(Map<String, dynamic> json) {
    return NodeContract(
      contractID: json['contractID'] ?? '',
      twinID: json['twinID'] ?? 0,
      state: json['state'] ?? '',
      createdAt: json['createdAt'] ?? '',
      solutionProviderID: json['solutionProviderID'] ?? 0,
      nodeID: json['nodeID'] ?? 0,
      deploymentData: json['deploymentData'] ?? '',
      deploymentHash: json['deploymentHash'] ?? '',
      numberOfPublicIPs: json['numberOfPublicIPs'] ?? 0,
      gridVersion: json['gridVersion'] ?? 0,
      id: json['id'] ?? '',
      resourcesUsed: json['resourcesUsed'] != null
          ? ContractUsedResources.fromJson(json['resourcesUsed'])
          : null,
    );
  }

  @override
  String toString() {
    return 'NodeContract{id: $id, gridVersion: $gridVersion, contractID: $contractID, twinID: $twinID, state: $state, createdAt: $createdAt, solutionProviderID: $solutionProviderID, nodeID: $nodeID, deploymentData: $deploymentData, deploymentHash: $deploymentHash, numberOfPublicIPs: $numberOfPublicIPs, resourcesUsed: $resourcesUsed}';
  }
}

@reflector
class RentContractReturnOptions extends BaseContractReturnOptions {
  bool nodeID;

  RentContractReturnOptions({
    this.nodeID = false,
    super.id = false,
    super.gridVersion = false,
    super.contractID = false,
    super.twinID = false,
    super.state = false,
    super.createdAt = false,
    super.solutionProviderID = false,
  });

  @override
  String toString() {
    String returnOptions = super.toString();
    returnOptions = _addToReturnList(returnOptions, 'nodeID', nodeID);
    return returnOptions;
  }
}

class RentContract extends BaseContract {
  int? nodeID;

  RentContract({
    super.id,
    super.gridVersion,
    super.contractID,
    super.twinID,
    super.state,
    super.createdAt,
    super.solutionProviderID,
    this.nodeID,
  });

  factory RentContract.fromJson(Map<String, dynamic> json) {
    return RentContract(
      id: json['id'] ?? '',
      gridVersion: json['gridVersion'] ?? 0,
      contractID: json['contractID'] ?? '',
      twinID: json['twinID'] ?? 0,
      state: json['state'] ?? '',
      createdAt: json['createdAt'] ?? '',
      solutionProviderID: json['solutionProviderID'] ?? 0,
      nodeID: json['nodeID'] ?? 0,
    );
  }

  @override
  String toString() {
    return 'RentContract{id: $id, gridVersion: $gridVersion, contractID: $contractID, twinID: $twinID, state: $state, createdAt: $createdAt, solutionProviderID: $solutionProviderID, nodeID: $nodeID}';
  }
}

@reflector
class ContractUsedResourcesReturnOptions {
  bool hru;
  bool sru;
  bool cru;
  bool mru;
  bool id;

  ContractUsedResourcesReturnOptions({
    this.hru = false,
    this.sru = false,
    this.cru = false,
    this.mru = false,
    this.id = false,
  });

  @override
  String toString() {
    String returnOptions = '';
    returnOptions = _addToReturnList(returnOptions, 'hru', hru);
    returnOptions = _addToReturnList(returnOptions, 'sru', sru);
    returnOptions = _addToReturnList(returnOptions, 'cru', cru);
    returnOptions = _addToReturnList(returnOptions, 'mru', mru);
    returnOptions = _addToReturnList(returnOptions, 'id', id);
    return returnOptions;
  }
}

class ContractUsedResources {
  String? hru;
  String? sru;
  String? cru;
  String? mru;
  String? id;

  ContractUsedResources({
    this.hru,
    this.sru,
    this.cru,
    this.mru,
    this.id,
  });

  factory ContractUsedResources.fromJson(Map<String, dynamic> json) {
    return ContractUsedResources(
      hru: json['hru'] ?? '',
      sru: json['sru'] ?? '',
      cru: json['cru'] ?? '',
      mru: json['mru'] ?? '',
      id: json['id'] ?? '',
    );
  }

  @override
  String toString() {
    return 'ContractUsedResources{hru: $hru, sru: $sru, cru: $cru, mru: $mru, id: $id}';
  }
}

class Contracts {
  List<NameContract> nameContracts;
  List<NodeContract> nodeContracts;
  List<RentContract> rentContracts;

  Contracts({
    required this.nameContracts,
    required this.nodeContracts,
    required this.rentContracts,
  });
}

class ListContractByTwinIdOptions {
  int twinId;
  List<String>? stateList;
  String? type;
  String? projectName;
  int? nodeId;

  ListContractByTwinIdOptions({
    required this.twinId,
    this.stateList,
    this.type,
    this.projectName,
    this.nodeId,
  });
}

class GetConsumptionOptions {
  String contractID;

  GetConsumptionOptions({
    required this.contractID,
  });
}

class ContractBillReports {
  String? id;
  BigInt? contractID;
  DiscountLevel? discountLevel;
  String? amountBilled;
  String? timeStamp;

  ContractBillReports({
    this.id,
    this.contractID,
    this.discountLevel,
    this.amountBilled,
    this.timeStamp,
  });

  factory ContractBillReports.fromJson(Map<String, dynamic> json) {
    return ContractBillReports(
      id: json['id'] ?? '',
      contractID: BigInt.parse(json['contractID'] ?? 0),
      discountLevel: parseDiscountLevel(json['discountReceived']),
      amountBilled: json['amountBilled'] ?? '',
      timeStamp: json['timestamp'] ?? '',
    );
  }

  @override
  String toString() {
    return 'ContractBillReports{id: $id, contractID: $contractID, discountLevel: $discountLevel, amountBilled: $amountBilled, timeStamp: $timeStamp}';
  }
}

@reflector
class ContractBillReportsReturnOptions {
  bool id;
  bool contractID;
  bool discountLevel;
  bool amountBilled;
  bool timeStamp;

  ContractBillReportsReturnOptions({
    this.id = false,
    this.contractID = false,
    this.discountLevel = false,
    this.amountBilled = false,
    this.timeStamp = false,
  });

  @override
  String toString() {
    String returnOptions = '';
    returnOptions = _addToReturnList(returnOptions, 'id', id);
    returnOptions = _addToReturnList(returnOptions, 'contractID', contractID);
    returnOptions =
        _addToReturnList(returnOptions, 'discountLevel', discountLevel);
    returnOptions =
        _addToReturnList(returnOptions, 'amountBilled', amountBilled);
    returnOptions = _addToReturnList(returnOptions, 'timeStamp', timeStamp);

    return returnOptions;
  }
}

class Consumption {
  Contracts contracts;
  List<ContractBillReports> contractBillReports;

  Consumption({
    required this.contracts,
    required this.contractBillReports,
  });
}
