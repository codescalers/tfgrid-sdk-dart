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

enum ContractsOrderByOptions {
  id_ASC,
  id_DESC,
  gridVersion_ASC,
  gridVersion_DESC,
  contractID_ASC,
  contractID_DESC,
  twinID_ASC,
  twinID_DESC,
  name_ASC,
  name_DESC,
  state_ASC,
  state_DESC,
  createdAt_ASC,
  createdAt_DESC,
  solutionProviderID_ASC,
  solutionProviderID_DESC,
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

@reflector
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

  factory BaseContract.fromJson(Map<String, dynamic> json) {
    return fromJson(json);
  }
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

@reflector
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
    return fromJson(json);
  }

  @override
  String toString() {
    return generateToString(this);
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

@reflector
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
    return generateToString(this);
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

@reflector
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
    return fromJson(json);
  }

  @override
  String toString() {
    return generateToString(this);
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

@reflector
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
    return fromJson(json);
  }

  @override
  String toString() {
    return generateToString(this);
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

@reflector
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
    return generateToString(this);
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

@reflector
class BaseContractQueryOptions {
  String? contractIDEq;
  String? contractIDGt;
  String? contractIDGte;
  List<String>? contractIDIn;
  bool? contractIDIsNull;
  String? contractIDLt;
  String? contractIDLte;
  String? contractIDNotEq;
  List<String>? contractIDNotIn;
  String? createdAtEq;
  String? createdAtGt;
  String? createdAtGte;
  List<String>? createdAtIn;
  bool? createdAtIsNull;
  String? createdAtLt;
  String? createdAtLte;
  String? createdAtNotEq;
  List<String>? createdAtNotIn;
  bool? gridVersionIsNull;
  int? gridVersionEq;
  int? gridVersionNotEq;
  int? gridVersionGt;
  int? gridVersionGte;
  int? gridVersionLt;
  int? gridVersionLte;
  List<int>? gridVersionIn;
  List<int>? gridVersionNotIn;
  String? idEq;
  String? idGt;
  String? idGte;
  String? idNotEq;
  String? idLt;
  String? idLte;
  String? idContains;
  String? idNotContains;
  String? idContainsInsensitive;
  String? idNotContainsInsensitive;
  String? idStartsWith;
  String? idNotStartsWith;
  String? idEndsWith;
  String? idNotEndsWith;
  List<String>? idIn;
  List<String>? idNotIn;
  int? solutionProviderIDEq;
  int? solutionProviderIDGt;
  int? solutionProviderIDGte;
  List<int>? solutionProviderIDIn;
  bool? solutionProviderIDIsNull;
  int? solutionProviderIDLt;
  int? solutionProviderIDLte;
  int? solutionProviderIDNotEq;
  List<int>? solutionProviderIDNotIn;
  ContractStates? stateEq;
  List<ContractStates>? stateIn;
  bool? stateIsNull;
  ContractStates? stateNotEq;
  List<ContractStates>? stateNotIn;
  bool? twinIDIsNull;
  int? twinIDEq;
  int? twinIDNotEq;
  int? twinIDGt;
  int? twinIDGte;
  int? twinIDLt;
  int? twinIDLte;
  List<int>? twinIDIn;
  List<int>? twinIDNotIn;

  int? limit;
  int? offset;
  ContractsOrderByOptions? orderBy;

  BaseContractQueryOptions.BaseContractQueryOptions({
    this.contractIDEq,
    this.contractIDGt,
    this.contractIDGte,
    this.contractIDIn,
    this.contractIDIsNull,
    this.contractIDLt,
    this.contractIDLte,
    this.contractIDNotEq,
    this.contractIDNotIn,
    this.createdAtEq,
    this.createdAtGt,
    this.createdAtGte,
    this.createdAtIn,
    this.createdAtIsNull,
    this.createdAtLt,
    this.createdAtLte,
    this.createdAtNotEq,
    this.createdAtNotIn,
    this.gridVersionEq,
    this.gridVersionGt,
    this.gridVersionGte,
    this.gridVersionIn,
    this.gridVersionIsNull,
    this.gridVersionLt,
    this.gridVersionLte,
    this.gridVersionNotEq,
    this.gridVersionNotIn,
    this.idEq,
    this.idGt,
    this.idGte,
    this.idNotEq,
    this.idLt,
    this.idLte,
    this.idContains,
    this.idNotContains,
    this.idContainsInsensitive,
    this.idNotContainsInsensitive,
    this.idStartsWith,
    this.idNotStartsWith,
    this.idEndsWith,
    this.idNotEndsWith,
    this.solutionProviderIDEq,
    this.solutionProviderIDGt,
    this.solutionProviderIDGte,
    this.solutionProviderIDIn,
    this.solutionProviderIDLt,
    this.solutionProviderIDLte,
    this.solutionProviderIDNotEq,
    this.solutionProviderIDNotIn,
    this.solutionProviderIDIsNull,
    this.stateEq,
    this.stateIn,
    this.stateIsNull,
    this.stateNotEq,
    this.stateNotIn,
    this.twinIDIsNull,
    this.twinIDEq,
    this.twinIDNotEq,
    this.twinIDGt,
    this.twinIDGte,
    this.twinIDLt,
    this.twinIDLte,
    this.twinIDIn,
    this.twinIDNotIn,
    this.limit,
    this.offset,
    this.orderBy,
  });

  @override
  String toString() {
    List<String> queryOptions = [];
    _addToQueryList(queryOptions, "contractID_eq", contractIDEq);
    _addToQueryList(queryOptions, "contractID_gt", contractIDGt);
    _addToQueryList(queryOptions, "contractID_gte", contractIDGte);
    _addToQueryList(queryOptions, "contractID_in", contractIDIn);
    _addToQueryList(queryOptions, "contractID_isNull", contractIDIsNull);
    _addToQueryList(queryOptions, "contractID_lt", contractIDLt);
    _addToQueryList(queryOptions, "contractID_lte", contractIDLte);
    _addToQueryList(queryOptions, "contractID_not_eq", contractIDNotEq);
    _addToQueryList(queryOptions, "contractID_not_in", contractIDNotIn);
    _addToQueryList(queryOptions, "gridVersion_isNull", gridVersionIsNull);
    _addToQueryList(queryOptions, "gridVersion_eq", gridVersionEq);
    _addToQueryList(queryOptions, "gridVersion_not_eq", gridVersionNotEq);
    _addToQueryList(queryOptions, "gridVersion_gt", gridVersionGt);
    _addToQueryList(queryOptions, "gridVersion_gte", gridVersionGte);
    _addToQueryList(queryOptions, "gridVersion_lt", gridVersionLt);
    _addToQueryList(queryOptions, "gridVersion_lte", gridVersionLte);
    _addToQueryList(queryOptions, "gridVersion_in", gridVersionIn);
    _addToQueryList(queryOptions, "gridVersion_not_in", gridVersionNotIn);
    _addToQueryList(queryOptions, "id_eq", idEq);
    _addToQueryList(queryOptions, "id_gt", idGt);
    _addToQueryList(queryOptions, "id_gte", idGte);
    _addToQueryList(queryOptions, "id_not_eq", idNotEq);
    _addToQueryList(queryOptions, "id_lt", idLt);
    _addToQueryList(queryOptions, "id_lte", idLte);
    _addToQueryList(queryOptions, "id_contains", idContains);
    _addToQueryList(queryOptions, "id_not_contains", idNotContains);
    _addToQueryList(
        queryOptions, "id_containsInsensitive", idContainsInsensitive);
    _addToQueryList(
        queryOptions, "id_not_containsInsensitive", idNotContainsInsensitive);
    _addToQueryList(queryOptions, "id_startsWith", idStartsWith);
    _addToQueryList(queryOptions, "id_not_startsWith", idNotStartsWith);
    _addToQueryList(queryOptions, "id_endsWith", idEndsWith);
    _addToQueryList(queryOptions, "id_not_endsWith", idNotEndsWith);
    _addToQueryList(queryOptions, "id_in", idIn);
    _addToQueryList(queryOptions, "id_not_in", idNotIn);
    _addToQueryList(
        queryOptions, "solutionProviderID_eq", solutionProviderIDEq);
    _addToQueryList(
        queryOptions, "solutionProviderID_gt", solutionProviderIDGt);
    _addToQueryList(
        queryOptions, "solutionProviderID_gte", solutionProviderIDGte);
    _addToQueryList(
        queryOptions, "solutionProviderID_in", solutionProviderIDIn);
    _addToQueryList(
        queryOptions, "solutionProviderID_isNull", solutionProviderIDIsNull);
    _addToQueryList(
        queryOptions, "solutionProviderID_lt", solutionProviderIDLt);
    _addToQueryList(
        queryOptions, "solutionProviderID_lte", solutionProviderIDLte);
    _addToQueryList(
        queryOptions, "solutionProviderID_not_eq", solutionProviderIDNotEq);
    _addToQueryList(
        queryOptions, "solutionProviderID_not_in", solutionProviderIDNotIn);
    _addToQueryList(queryOptions, "state_eq", stateEq);
    _addToQueryList(queryOptions, "state_in", stateIn);
    _addToQueryList(queryOptions, "state_isNull", stateIsNull);
    _addToQueryList(queryOptions, "state_not_eq", stateNotEq);
    _addToQueryList(queryOptions, "state_not_in", stateNotIn);
    _addToQueryList(queryOptions, "twinID_isNull", twinIDIsNull);
    _addToQueryList(queryOptions, "twinID_eq", twinIDEq);
    _addToQueryList(queryOptions, "twinID_not_eq", twinIDNotEq);
    _addToQueryList(queryOptions, "twinID_gt", twinIDGt);
    _addToQueryList(queryOptions, "twinID_gte", twinIDGte);
    _addToQueryList(queryOptions, "twinID_lt", twinIDLt);
    _addToQueryList(queryOptions, "twinID_lte", twinIDLte);
    _addToQueryList(queryOptions, "twinID_in", twinIDIn);
    _addToQueryList(queryOptions, "twinID_not_in", twinIDNotIn);

    String queryString = '';

    if (queryOptions.isNotEmpty) {
      queryString += '${queryOptions.join(', ')}';
    }

    return queryString;
  }
}

@reflector
class NameContractQueryOptions extends BaseContractQueryOptions {
  String? nameContains;
  String? nameContainsInsensitive;

  NameContractQueryOptions({
    this.nameContains,
    this.nameContainsInsensitive,
    String? contractIDEq,
    String? contractIDGt,
    String? contractIDGte,
    List<String>? contractIDIn,
    bool? contractIDIsNull,
    String? contractIDLt,
    String? contractIDLte,
    String? contractIDNotEq,
    List<String>? contractIDNotIn,
    String? createdAtEq,
    String? createdAtGt,
    String? createdAtGte,
    List<String>? createdAtIn,
    bool? createdAtIsNull,
    String? createdAtLt,
    String? createdAtLte,
    String? createdAtNotEq,
    List<String>? createdAtNotIn,
    bool? gridVersionIsNull,
    int? gridVersionEq,
    int? gridVersionNotEq,
    int? gridVersionGt,
    int? gridVersionGte,
    int? gridVersionLt,
    int? gridVersionLte,
    List<int>? gridVersionIn,
    List<int>? gridVersionNotIn,
    String? idEq,
    String? idGt,
    String? idGte,
    String? idNotEq,
    String? idLt,
    String? idLte,
    String? idContains,
    String? idNotContains,
    String? idContainsInsensitive,
    String? idNotContainsInsensitive,
    String? idStartsWith,
    String? idNotStartsWith,
    String? idEndsWith,
    String? idNotEndsWith,
    List<String>? idIn,
    List<String>? idNotIn,
    int? solutionProviderIDEq,
    int? solutionProviderIDGt,
    int? solutionProviderIDGte,
    List<int>? solutionProviderIDIn,
    bool? solutionProviderIDIsNull,
    int? solutionProviderIDLt,
    int? solutionProviderIDLte,
    int? solutionProviderIDNotEq,
    List<int>? solutionProviderIDNotIn,
    ContractStates? stateEq,
    List<ContractStates>? stateIn,
    bool? stateIsNull,
    ContractStates? stateNotEq,
    List<ContractStates>? stateNotIn,
    bool? twinIDIsNull,
    int? twinIDEq,
    int? twinIDNotEq,
    int? twinIDGt,
    int? twinIDGte,
    int? twinIDLt,
    int? twinIDLte,
    List<int>? twinIDIn,
    List<int>? twinIDNotIn,
    int? limit,
    int? offset,
    ContractsOrderByOptions? orderBy,
  }) : super.BaseContractQueryOptions(
          contractIDEq: contractIDEq,
          contractIDGt: contractIDGt,
          contractIDGte: contractIDGte,
          contractIDIn: contractIDIn,
          contractIDIsNull: contractIDIsNull,
          contractIDLt: contractIDLt,
          contractIDLte: contractIDLte,
          contractIDNotEq: contractIDNotEq,
          contractIDNotIn: contractIDNotIn,
          createdAtEq: createdAtEq,
          createdAtGt: createdAtGt,
          createdAtGte: createdAtGte,
          createdAtIn: createdAtIn,
          createdAtIsNull: createdAtIsNull,
          createdAtLt: createdAtLt,
          createdAtLte: createdAtLte,
          createdAtNotEq: createdAtNotEq,
          createdAtNotIn: createdAtNotIn,
          gridVersionEq: gridVersionEq,
          gridVersionGt: gridVersionGt,
          gridVersionGte: gridVersionGte,
          gridVersionIn: gridVersionIn,
          gridVersionIsNull: gridVersionIsNull,
          gridVersionLt: gridVersionLt,
          gridVersionLte: gridVersionLte,
          gridVersionNotEq: gridVersionNotEq,
          gridVersionNotIn: gridVersionNotIn,
          idContains: idContains,
          idContainsInsensitive: idContainsInsensitive,
          idEndsWith: idEndsWith,
          idEq: idEq,
          idGt: idGt,
          idGte: idGte,
          idLt: idLt,
          idLte: idLte,
          idNotContains: idNotContains,
          idNotContainsInsensitive: idNotContainsInsensitive,
          idNotEndsWith: idNotEndsWith,
          idNotEq: idNotEq,
          idNotStartsWith: idNotStartsWith,
          idStartsWith: idStartsWith,
          limit: limit,
          offset: offset,
          orderBy: orderBy,
          solutionProviderIDEq: solutionProviderIDEq,
          solutionProviderIDGt: solutionProviderIDGt,
          solutionProviderIDGte: solutionProviderIDGte,
          solutionProviderIDIn: solutionProviderIDIn,
          solutionProviderIDIsNull: solutionProviderIDIsNull,
          solutionProviderIDLt: solutionProviderIDLt,
          solutionProviderIDLte: solutionProviderIDLte,
          solutionProviderIDNotEq: solutionProviderIDNotEq,
          solutionProviderIDNotIn: solutionProviderIDNotIn,
          stateEq: stateEq,
          stateIn: stateIn,
          stateIsNull: stateIsNull,
          stateNotEq: stateNotEq,
          stateNotIn: stateNotIn,
          twinIDEq: twinIDEq,
          twinIDGt: twinIDGt,
          twinIDGte: twinIDGte,
          twinIDIn: twinIDIn,
          twinIDIsNull: twinIDIsNull,
          twinIDLt: twinIDLt,
          twinIDLte: twinIDLte,
          twinIDNotEq: twinIDNotEq,
          twinIDNotIn: twinIDNotIn,
        );

  @override
  String toString() {
    String queryString = super.toString();

    List<String> queryOptions = [];
    _addToQueryList(queryOptions, "name_contains", nameContains);
    _addToQueryList(
        queryOptions, "name_containsInsensitive", nameContainsInsensitive);

    if (queryOptions.isNotEmpty) {
      if (queryString.isNotEmpty) {
        queryString += ', ' + queryOptions.join(', ');
      } else {
        queryString += queryOptions.join(', ');
      }
    }

    queryString = 'where: {$queryString}';

    if (limit != null) {
      if (queryString.isNotEmpty) {
        queryString += ', ';
      }
      queryString += 'limit: $limit';
    }

    if (offset != null) {
      if (queryString.isNotEmpty) {
        queryString += ', ';
      }
      queryString += 'offset: $offset';
    }

    if (orderBy != null) {
      if (queryString.isNotEmpty) {
        queryString += ', ';
      }
      queryString += 'orderBy: ${orderBy.toString().split('.').last}';
    }

    if (queryString.isNotEmpty) {
      queryString = '($queryString)';
    }
    return queryString;
  }
}

@reflector
class NodeContractQueryOptions extends BaseContractQueryOptions {
  String? deploymentDataContains;
  String? deploymentDataContainsInsensitive;
  String? deploymentDataEq;
  String? deploymentDataEndsWith;
  String? deploymentDataGt;
  String? deploymentDataGte;
  bool? deploymentDataIsNull;
  List<String>? deploymentDataIn;
  String? deploymentDataLte;
  String? deploymentDataLt;
  String? deploymentDataNotContains;
  String? deploymentDataNotContainsInsensitive;
  String? deploymentDataNotEndsWith;
  String? deploymentDataNotEq;
  List<String>? deploymentDataNotIn;
  String? deploymentDataNotStartsWith;
  String? deploymentDataStartsWith;
  String? deploymentHashEndsWith;
  String? deploymentHashContainsInsensitive;
  String? deploymentHashContains;
  String? deploymentHashEq;
  String? deploymentHashGt;
  String? deploymentHashGte;
  List<String>? deploymentHashIn;
  bool? deploymentHashIsNull;
  String? deploymentHashLt;
  String? deploymentHashNotContains;
  String? deploymentHashNotContainsInsensitive;
  String? deploymentHashLte;
  String? deploymentHashNotEndsWith;
  String? deploymentHashNotEq;
  List<String>? deploymentHashNotIn;
  String? deploymentHashNotStartsWith;
  String? deploymentHashStartsWith;
  bool? nodeIDIsNull;
  int? nodeIDEq;
  int? nodeIDNotEq;
  int? nodeIDGt;
  int? nodeIDGte;
  int? nodeIDLt;
  int? nodeIDLte;
  List<int>? nodeIDIn;
  List<int>? nodeIDNotIn;
  int? numberOfPublicIPsEq;
  int? numberOfPublicIPsGte;
  int? numberOfPublicIPsGt;
  List<int>? numberOfPublicIPsIn;
  bool? numberOfPublicIPsIsNull;
  int? numberOfPublicIPsLt;
  int? numberOfPublicIPsLte;
  int? numberOfPublicIPsNotEq;
  List<int>? numberOfPublicIPsNotIn;
  ResourcesUsedQueryOptions? resourcesUsed;
  bool? resourcesUsedIsNull;

  NodeContractQueryOptions({
    this.deploymentDataContains,
    this.deploymentDataContainsInsensitive,
    this.deploymentDataEq,
    this.deploymentDataEndsWith,
    this.deploymentDataGt,
    this.deploymentDataGte,
    this.deploymentDataIsNull,
    this.deploymentDataIn,
    this.deploymentDataLt,
    this.deploymentDataLte,
    this.deploymentDataNotContains,
    this.deploymentDataNotContainsInsensitive,
    this.deploymentDataNotEndsWith,
    this.deploymentDataNotEq,
    this.deploymentDataNotIn,
    this.deploymentDataNotStartsWith,
    this.deploymentDataStartsWith,
    this.deploymentHashEndsWith,
    this.deploymentHashContainsInsensitive,
    this.deploymentHashContains,
    this.deploymentHashEq,
    this.deploymentHashGt,
    this.deploymentHashGte,
    this.deploymentHashIn,
    this.deploymentHashIsNull,
    this.deploymentHashLt,
    this.deploymentHashNotContains,
    this.deploymentHashNotContainsInsensitive,
    this.deploymentHashLte,
    this.deploymentHashNotEndsWith,
    this.deploymentHashNotEq,
    this.deploymentHashNotIn,
    this.deploymentHashNotStartsWith,
    this.deploymentHashStartsWith,
    this.nodeIDIsNull,
    this.nodeIDEq,
    this.nodeIDNotEq,
    this.nodeIDGt,
    this.nodeIDGte,
    this.nodeIDLt,
    this.nodeIDLte,
    this.nodeIDIn,
    this.nodeIDNotIn,
    this.numberOfPublicIPsEq,
    this.numberOfPublicIPsGte,
    this.numberOfPublicIPsGt,
    this.numberOfPublicIPsIn,
    this.numberOfPublicIPsIsNull,
    this.numberOfPublicIPsLt,
    this.numberOfPublicIPsLte,
    this.numberOfPublicIPsNotEq,
    this.numberOfPublicIPsNotIn,
    this.resourcesUsed,
    this.resourcesUsedIsNull,
    String? contractIDEq,
    String? contractIDGt,
    String? contractIDGte,
    List<String>? contractIDIn,
    bool? contractIDIsNull,
    String? contractIDLt,
    String? contractIDLte,
    String? contractIDNotEq,
    List<String>? contractIDNotIn,
    String? createdAtEq,
    String? createdAtGt,
    String? createdAtGte,
    List<String>? createdAtIn,
    bool? createdAtIsNull,
    String? createdAtLt,
    String? createdAtLte,
    String? createdAtNotEq,
    List<String>? createdAtNotIn,
    bool? gridVersionIsNull,
    int? gridVersionEq,
    int? gridVersionNotEq,
    int? gridVersionGt,
    int? gridVersionGte,
    int? gridVersionLt,
    int? gridVersionLte,
    List<int>? gridVersionIn,
    List<int>? gridVersionNotIn,
    String? idEq,
    String? idGt,
    String? idGte,
    String? idNotEq,
    String? idLt,
    String? idLte,
    String? idContains,
    String? idNotContains,
    String? idContainsInsensitive,
    String? idNotContainsInsensitive,
    String? idStartsWith,
    String? idNotStartsWith,
    String? idEndsWith,
    String? idNotEndsWith,
    List<String>? idIn,
    List<String>? idNotIn,
    int? solutionProviderIDEq,
    int? solutionProviderIDGt,
    int? solutionProviderIDGte,
    List<int>? solutionProviderIDIn,
    bool? solutionProviderIDIsNull,
    int? solutionProviderIDLt,
    int? solutionProviderIDLte,
    int? solutionProviderIDNotEq,
    List<int>? solutionProviderIDNotIn,
    ContractStates? stateEq,
    List<ContractStates>? stateIn,
    bool? stateIsNull,
    ContractStates? stateNotEq,
    List<ContractStates>? stateNotIn,
    bool? twinIDIsNull,
    int? twinIDEq,
    int? twinIDNotEq,
    int? twinIDGt,
    int? twinIDGte,
    int? twinIDLt,
    int? twinIDLte,
    List<int>? twinIDIn,
    List<int>? twinIDNotIn,
    int? limit,
    int? offset,
    ContractsOrderByOptions? orderBy,
  }) : super.BaseContractQueryOptions(
          contractIDEq: contractIDEq,
          contractIDGt: contractIDGt,
          contractIDGte: contractIDGte,
          contractIDIn: contractIDIn,
          contractIDIsNull: contractIDIsNull,
          contractIDLt: contractIDLt,
          contractIDLte: contractIDLte,
          contractIDNotEq: contractIDNotEq,
          contractIDNotIn: contractIDNotIn,
          createdAtEq: createdAtEq,
          createdAtGt: createdAtGt,
          createdAtGte: createdAtGte,
          createdAtIn: createdAtIn,
          createdAtIsNull: createdAtIsNull,
          createdAtLt: createdAtLt,
          createdAtLte: createdAtLte,
          createdAtNotEq: createdAtNotEq,
          createdAtNotIn: createdAtNotIn,
          gridVersionEq: gridVersionEq,
          gridVersionGt: gridVersionGt,
          gridVersionGte: gridVersionGte,
          gridVersionIn: gridVersionIn,
          gridVersionIsNull: gridVersionIsNull,
          gridVersionLt: gridVersionLt,
          gridVersionLte: gridVersionLte,
          gridVersionNotEq: gridVersionNotEq,
          gridVersionNotIn: gridVersionNotIn,
          idContains: idContains,
          idContainsInsensitive: idContainsInsensitive,
          idEndsWith: idEndsWith,
          idEq: idEq,
          idGt: idGt,
          idGte: idGte,
          idLt: idLt,
          idLte: idLte,
          idNotContains: idNotContains,
          idNotContainsInsensitive: idNotContainsInsensitive,
          idNotEndsWith: idNotEndsWith,
          idNotEq: idNotEq,
          idNotStartsWith: idNotStartsWith,
          idStartsWith: idStartsWith,
          limit: limit,
          offset: offset,
          orderBy: orderBy,
          solutionProviderIDEq: solutionProviderIDEq,
          solutionProviderIDGt: solutionProviderIDGt,
          solutionProviderIDGte: solutionProviderIDGte,
          solutionProviderIDIn: solutionProviderIDIn,
          solutionProviderIDIsNull: solutionProviderIDIsNull,
          solutionProviderIDLt: solutionProviderIDLt,
          solutionProviderIDLte: solutionProviderIDLte,
          solutionProviderIDNotEq: solutionProviderIDNotEq,
          solutionProviderIDNotIn: solutionProviderIDNotIn,
          stateEq: stateEq,
          stateIn: stateIn,
          stateIsNull: stateIsNull,
          stateNotEq: stateNotEq,
          stateNotIn: stateNotIn,
          twinIDEq: twinIDEq,
          twinIDGt: twinIDGt,
          twinIDGte: twinIDGte,
          twinIDIn: twinIDIn,
          twinIDIsNull: twinIDIsNull,
          twinIDLt: twinIDLt,
          twinIDLte: twinIDLte,
          twinIDNotEq: twinIDNotEq,
          twinIDNotIn: twinIDNotIn,
        );

  @override
  String toString() {
    String queryString = super.toString();
    List<String> queryOptions = [];

    _addToQueryList(
        queryOptions, "deploymentData_contains", deploymentDataContains);
    _addToQueryList(queryOptions, "deploymentData_containsInsensitive",
        deploymentDataContainsInsensitive);
    _addToQueryList(queryOptions, "deploymentData_eq", deploymentDataEq);
    _addToQueryList(
        queryOptions, "deploymentData_endsWith", deploymentDataEndsWith);
    _addToQueryList(queryOptions, "deploymentData_gt", deploymentDataGt);
    _addToQueryList(queryOptions, "deploymentData_gte", deploymentDataGte);
    _addToQueryList(
        queryOptions, "deploymentData_isNull", deploymentDataIsNull);
    _addToQueryList(queryOptions, "deploymentData_in", deploymentDataIn);
    _addToQueryList(queryOptions, "deploymentData_lt", deploymentDataLt);
    _addToQueryList(queryOptions, "deploymentData_lte", deploymentDataLte);
    _addToQueryList(
        queryOptions, "deploymentData_not_contains", deploymentDataNotContains);
    _addToQueryList(queryOptions, "deploymentData_not_containsInsensitive",
        deploymentDataNotContainsInsensitive);
    _addToQueryList(
        queryOptions, "deploymentData_not_endsWith", deploymentDataNotEndsWith);
    _addToQueryList(queryOptions, "deploymentData_not_eq", deploymentDataNotEq);
    _addToQueryList(queryOptions, "deploymentData_not_in", deploymentDataNotIn);
    _addToQueryList(queryOptions, "deploymentData_not_startsWith",
        deploymentDataNotStartsWith);
    _addToQueryList(
        queryOptions, "deploymentData_startsWith", deploymentDataStartsWith);
    _addToQueryList(
        queryOptions, "deploymentHash_endsWith", deploymentHashEndsWith);
    _addToQueryList(queryOptions, "deploymentHash_containsInsensitive",
        deploymentHashContainsInsensitive);
    _addToQueryList(
        queryOptions, "deploymentHash_contains", deploymentHashContains);
    _addToQueryList(queryOptions, "deploymentHash_eq", deploymentHashEq);
    _addToQueryList(queryOptions, "deploymentHash_gt", deploymentHashGt);
    _addToQueryList(queryOptions, "deploymentHash_gte", deploymentHashGte);
    _addToQueryList(queryOptions, "deploymentHash_in", deploymentHashIn);
    _addToQueryList(
        queryOptions, "deploymentHash_isNull", deploymentHashIsNull);
    _addToQueryList(queryOptions, "deploymentHash_lt", deploymentHashLt);
    _addToQueryList(
        queryOptions, "deploymentHash_not_contains", deploymentHashNotContains);
    _addToQueryList(queryOptions, "deploymentHash_not_containsInsensitive",
        deploymentHashNotContainsInsensitive);
    _addToQueryList(queryOptions, "deploymentHash_lte", deploymentHashLte);
    _addToQueryList(
        queryOptions, "deploymentHash_not_endsWith", deploymentHashNotEndsWith);
    _addToQueryList(queryOptions, "deploymentHash_not_eq", deploymentHashNotEq);
    _addToQueryList(queryOptions, "deploymentHash_not_in", deploymentHashNotIn);
    _addToQueryList(queryOptions, "deploymentHash_not_startsWith",
        deploymentHashNotStartsWith);
    _addToQueryList(
        queryOptions, "deploymentHash_startsWith", deploymentHashStartsWith);
    _addToQueryList(queryOptions, "nodeID_isNull", nodeIDIsNull);
    _addToQueryList(queryOptions, "nodeID_eq", nodeIDEq);
    _addToQueryList(queryOptions, "nodeID_not_eq", nodeIDNotEq);
    _addToQueryList(queryOptions, "nodeID_gt", nodeIDGt);
    _addToQueryList(queryOptions, "nodeID_gte", nodeIDGte);
    _addToQueryList(queryOptions, "nodeID_lt", nodeIDLt);
    _addToQueryList(queryOptions, "nodeID_lte", nodeIDLte);
    _addToQueryList(queryOptions, "nodeID_in", nodeIDIn);
    _addToQueryList(queryOptions, "nodeID_not_in", nodeIDNotIn);
    _addToQueryList(queryOptions, "numberOfPublicIPs_eq", numberOfPublicIPsEq);
    _addToQueryList(
        queryOptions, "numberOfPublicIPs_gte", numberOfPublicIPsGte);
    _addToQueryList(queryOptions, "numberOfPublicIPs_gt", numberOfPublicIPsGt);
    _addToQueryList(queryOptions, "numberOfPublicIPs_in", numberOfPublicIPsIn);
    _addToQueryList(
        queryOptions, "numberOfPublicIPs_isNull", numberOfPublicIPsIsNull);
    _addToQueryList(queryOptions, "numberOfPublicIPs_lt", numberOfPublicIPsLt);
    _addToQueryList(
        queryOptions, "numberOfPublicIPs_lte", numberOfPublicIPsLte);
    _addToQueryList(
        queryOptions, "numberOfPublicIPs_not_eq", numberOfPublicIPsNotEq);
    _addToQueryList(
        queryOptions, "numberOfPublicIPs_not_in", numberOfPublicIPsNotIn);
    _addToQueryList(queryOptions, "resourcesUsed_isNull", resourcesUsedIsNull);
    if (resourcesUsed != null) {
      queryOptions.add('resourcesUsed: {${resourcesUsed.toString()}}');
    }

    if (queryOptions.isNotEmpty) {
      if (queryString.isNotEmpty) {
        queryString += ', ' + queryOptions.join(', ');
      } else {
        queryString += queryOptions.join(', ');
      }
    }

    queryString = 'where: {$queryString}';

    if (limit != null) {
      if (queryString.isNotEmpty) {
        queryString += ', ';
      }
      queryString += 'limit: $limit';
    }

    if (offset != null) {
      if (queryString.isNotEmpty) {
        queryString += ', ';
      }
      queryString += 'offset: $offset';
    }

    if (orderBy != null) {
      if (queryString.isNotEmpty) {
        queryString += ', ';
      }
      queryString += 'orderBy: ${orderBy.toString().split('.').last}';
    }

    if (queryString.isNotEmpty) {
      queryString = '($queryString)';
    }
    return queryString;
  }
}

@reflector
class ResourcesUsedQueryOptions {
  bool? contractIsNull;
  int? cruEq;
  int? cruGt;
  int? cruGte;
  List<int>? cruIn;
  bool? cruIsNull;
  int? cruLt;
  int? cruLte;
  int? cruNotEq;
  List<int>? cruNotIn;
  int? hruEq;
  int? hruGt;
  int? hruGte;
  List<int>? hruIn;
  bool? hruIsNull;
  int? hruLt;
  int? hruLte;
  int? hruNotEq;
  List<int>? hruNotIn;
  int? mruEq;
  int? mruGt;
  int? mruGte;
  List<int>? mruIn;
  bool? mruIsNull;
  int? mruLt;
  int? mruLte;
  int? mruNotEq;
  List<int>? mruNotIn;
  int? sruEq;
  int? sruGt;
  int? sruGte;
  List<int>? sruIn;
  bool? sruIsNull;
  int? sruLt;
  int? sruLte;
  int? sruNotEq;
  List<int>? sruNotIn;
  String? idEq;
  String? idGt;
  String? idGte;
  String? idNotEq;
  String? idLt;
  String? idLte;
  String? idContains;
  String? idNotContains;
  String? idContainsInsensitive;
  String? idNotContainsInsensitive;
  String? idStartsWith;
  String? idNotStartsWith;
  String? idEndsWith;
  String? idNotEndsWith;
  List<String>? idIn;
  List<String>? idNotIn;
  bool? idIsNull;

  ResourcesUsedQueryOptions({
    this.contractIsNull,
    this.cruEq,
    this.cruGt,
    this.cruGte,
    this.cruIn,
    this.cruIsNull,
    this.cruLt,
    this.cruLte,
    this.cruNotEq,
    this.cruNotIn,
    this.hruEq,
    this.hruGt,
    this.hruGte,
    this.hruIn,
    this.hruIsNull,
    this.hruLt,
    this.hruLte,
    this.hruNotEq,
    this.hruNotIn,
    this.mruEq,
    this.mruGt,
    this.mruGte,
    this.mruIn,
    this.mruIsNull,
    this.mruLt,
    this.mruLte,
    this.mruNotEq,
    this.mruNotIn,
    this.sruEq,
    this.sruGt,
    this.sruGte,
    this.sruIn,
    this.sruIsNull,
    this.sruLt,
    this.sruLte,
    this.sruNotEq,
    this.sruNotIn,
    this.idEq,
    this.idGt,
    this.idGte,
    this.idNotEq,
    this.idLt,
    this.idLte,
    this.idContains,
    this.idNotContains,
    this.idContainsInsensitive,
    this.idNotContainsInsensitive,
    this.idStartsWith,
    this.idNotStartsWith,
    this.idEndsWith,
    this.idNotEndsWith,
    this.idIn,
    this.idNotIn,
    this.idIsNull,
  });

  @override
  String toString() {
    List<String> queryOptions = [];

    _addToQueryList(queryOptions, "id_eq", idEq);
    _addToQueryList(queryOptions, "id_gt", idGt);
    _addToQueryList(queryOptions, "id_gte", idGte);
    _addToQueryList(queryOptions, "id_not_eq", idNotEq);
    _addToQueryList(queryOptions, "id_lt", idLt);
    _addToQueryList(queryOptions, "id_lte", idLte);
    _addToQueryList(queryOptions, "id_contains", idContains);
    _addToQueryList(queryOptions, "id_not_contains", idNotContains);
    _addToQueryList(
        queryOptions, "id_containsInsensitive", idContainsInsensitive);
    _addToQueryList(
        queryOptions, "id_not_containsInsensitive", idNotContainsInsensitive);
    _addToQueryList(queryOptions, "id_startsWith", idStartsWith);
    _addToQueryList(queryOptions, "id_not_startsWith", idNotStartsWith);
    _addToQueryList(queryOptions, "id_endsWith", idEndsWith);
    _addToQueryList(queryOptions, "id_not_endsWith", idNotEndsWith);
    _addToQueryList(queryOptions, "id_in", idIn);
    _addToQueryList(queryOptions, "id_not_in", idNotIn);
    _addToQueryList(queryOptions, "id_isNull", idIsNull);
    _addToQueryList(queryOptions, "contract_isNull", contractIsNull);
    _addToQueryList(queryOptions, "cru_eq", cruEq);
    _addToQueryList(queryOptions, "cru_gt", cruGt);
    _addToQueryList(queryOptions, "cru_gte", cruGte);
    _addToQueryList(queryOptions, "cru_in", cruIn);
    _addToQueryList(queryOptions, "cru_isNull", cruIsNull);
    _addToQueryList(queryOptions, "cru_lt", cruLt);
    _addToQueryList(queryOptions, "cru_lte", cruLte);
    _addToQueryList(queryOptions, "cru_not_eq", cruNotEq);
    _addToQueryList(queryOptions, "cru_not_in", cruNotIn);
    _addToQueryList(queryOptions, "hru_eq", hruEq);
    _addToQueryList(queryOptions, "hru_gt", hruGt);
    _addToQueryList(queryOptions, "hru_gte", hruGte);
    _addToQueryList(queryOptions, "hru_in", hruIn);
    _addToQueryList(queryOptions, "hru_isNull", hruIsNull);
    _addToQueryList(queryOptions, "hru_lt", hruLt);
    _addToQueryList(queryOptions, "hru_lte", hruLte);
    _addToQueryList(queryOptions, "hru_not_eq", hruNotEq);
    _addToQueryList(queryOptions, "hru_not_in", hruNotIn);
    _addToQueryList(queryOptions, "mru_eq", mruEq);
    _addToQueryList(queryOptions, "mru_gt", mruGt);
    _addToQueryList(queryOptions, "mru_gte", mruGte);
    _addToQueryList(queryOptions, "mru_in", mruIn);
    _addToQueryList(queryOptions, "mru_isNull", mruIsNull);
    _addToQueryList(queryOptions, "mru_lt", mruLt);
    _addToQueryList(queryOptions, "mru_lte", mruLte);
    _addToQueryList(queryOptions, "mru_not_eq", mruNotEq);
    _addToQueryList(queryOptions, "mru_not_in", mruNotIn);
    _addToQueryList(queryOptions, "sru_eq", sruEq);
    _addToQueryList(queryOptions, "sru_gt", sruGt);
    _addToQueryList(queryOptions, "sru_gte", sruGte);
    _addToQueryList(queryOptions, "sru_in", sruIn);
    _addToQueryList(queryOptions, "sru_isNull", sruIsNull);
    _addToQueryList(queryOptions, "sru_lt", sruLt);
    _addToQueryList(queryOptions, "sru_lte", sruLte);
    _addToQueryList(queryOptions, "sru_not_eq", sruNotEq);
    _addToQueryList(queryOptions, "sru_not_in", sruNotIn);

    return queryOptions.isNotEmpty ? queryOptions.join(', ') : " ";
  }
}

@reflector
class RentContractQueryOptions extends BaseContractQueryOptions {
  bool? nodeIDIsNull;
  int? nodeIDEq;
  int? nodeIDNotEq;
  int? nodeIDGt;
  int? nodeIDGte;
  int? nodeIDLt;
  int? nodeIDLte;
  List<int>? nodeIDIn;
  List<int>? nodeIDNotIn;

  RentContractQueryOptions({
    this.nodeIDIsNull,
    this.nodeIDEq,
    this.nodeIDNotEq,
    this.nodeIDGt,
    this.nodeIDGte,
    this.nodeIDLt,
    this.nodeIDLte,
    this.nodeIDIn,
    this.nodeIDNotIn,
    String? contractIDEq,
    String? contractIDGt,
    String? contractIDGte,
    List<String>? contractIDIn,
    bool? contractIDIsNull,
    String? contractIDLt,
    String? contractIDLte,
    String? contractIDNotEq,
    List<String>? contractIDNotIn,
    String? createdAtEq,
    String? createdAtGt,
    String? createdAtGte,
    List<String>? createdAtIn,
    bool? createdAtIsNull,
    String? createdAtLt,
    String? createdAtLte,
    String? createdAtNotEq,
    List<String>? createdAtNotIn,
    bool? gridVersionIsNull,
    int? gridVersionEq,
    int? gridVersionNotEq,
    int? gridVersionGt,
    int? gridVersionGte,
    int? gridVersionLt,
    int? gridVersionLte,
    List<int>? gridVersionIn,
    List<int>? gridVersionNotIn,
    String? idEq,
    String? idGt,
    String? idGte,
    String? idNotEq,
    String? idLt,
    String? idLte,
    String? idContains,
    String? idNotContains,
    String? idContainsInsensitive,
    String? idNotContainsInsensitive,
    String? idStartsWith,
    String? idNotStartsWith,
    String? idEndsWith,
    String? idNotEndsWith,
    List<String>? idIn,
    List<String>? idNotIn,
    int? solutionProviderIDEq,
    int? solutionProviderIDGt,
    int? solutionProviderIDGte,
    List<int>? solutionProviderIDIn,
    bool? solutionProviderIDIsNull,
    int? solutionProviderIDLt,
    int? solutionProviderIDLte,
    int? solutionProviderIDNotEq,
    List<int>? solutionProviderIDNotIn,
    ContractStates? stateEq,
    List<ContractStates>? stateIn,
    bool? stateIsNull,
    ContractStates? stateNotEq,
    List<ContractStates>? stateNotIn,
    bool? twinIDIsNull,
    int? twinIDEq,
    int? twinIDNotEq,
    int? twinIDGt,
    int? twinIDGte,
    int? twinIDLt,
    int? twinIDLte,
    List<int>? twinIDIn,
    List<int>? twinIDNotIn,
    int? limit,
    int? offset,
    ContractsOrderByOptions? orderBy,
  }) : super.BaseContractQueryOptions(
          contractIDEq: contractIDEq,
          contractIDGt: contractIDGt,
          contractIDGte: contractIDGte,
          contractIDIn: contractIDIn,
          contractIDIsNull: contractIDIsNull,
          contractIDLt: contractIDLt,
          contractIDLte: contractIDLte,
          contractIDNotEq: contractIDNotEq,
          contractIDNotIn: contractIDNotIn,
          createdAtEq: createdAtEq,
          createdAtGt: createdAtGt,
          createdAtGte: createdAtGte,
          createdAtIn: createdAtIn,
          createdAtIsNull: createdAtIsNull,
          createdAtLt: createdAtLt,
          createdAtLte: createdAtLte,
          createdAtNotEq: createdAtNotEq,
          createdAtNotIn: createdAtNotIn,
          gridVersionEq: gridVersionEq,
          gridVersionGt: gridVersionGt,
          gridVersionGte: gridVersionGte,
          gridVersionIn: gridVersionIn,
          gridVersionIsNull: gridVersionIsNull,
          gridVersionLt: gridVersionLt,
          gridVersionLte: gridVersionLte,
          gridVersionNotEq: gridVersionNotEq,
          gridVersionNotIn: gridVersionNotIn,
          idContains: idContains,
          idContainsInsensitive: idContainsInsensitive,
          idEndsWith: idEndsWith,
          idEq: idEq,
          idGt: idGt,
          idGte: idGte,
          idLt: idLt,
          idLte: idLte,
          idNotContains: idNotContains,
          idNotContainsInsensitive: idNotContainsInsensitive,
          idNotEndsWith: idNotEndsWith,
          idNotEq: idNotEq,
          idNotStartsWith: idNotStartsWith,
          idStartsWith: idStartsWith,
          limit: limit,
          offset: offset,
          orderBy: orderBy,
          solutionProviderIDEq: solutionProviderIDEq,
          solutionProviderIDGt: solutionProviderIDGt,
          solutionProviderIDGte: solutionProviderIDGte,
          solutionProviderIDIn: solutionProviderIDIn,
          solutionProviderIDIsNull: solutionProviderIDIsNull,
          solutionProviderIDLt: solutionProviderIDLt,
          solutionProviderIDLte: solutionProviderIDLte,
          solutionProviderIDNotEq: solutionProviderIDNotEq,
          solutionProviderIDNotIn: solutionProviderIDNotIn,
          stateEq: stateEq,
          stateIn: stateIn,
          stateIsNull: stateIsNull,
          stateNotEq: stateNotEq,
          stateNotIn: stateNotIn,
          twinIDEq: twinIDEq,
          twinIDGt: twinIDGt,
          twinIDGte: twinIDGte,
          twinIDIn: twinIDIn,
          twinIDIsNull: twinIDIsNull,
          twinIDLt: twinIDLt,
          twinIDLte: twinIDLte,
          twinIDNotEq: twinIDNotEq,
          twinIDNotIn: twinIDNotIn,
        );

  @override
  String toString() {
    String queryString = super.toString();

    List<String> queryOptions = [];
    _addToQueryList(queryOptions, "nodeID_isNull", nodeIDIsNull);
    _addToQueryList(queryOptions, "nodeID_eq", nodeIDEq);
    _addToQueryList(queryOptions, "nodeID_not_eq", nodeIDNotEq);
    _addToQueryList(queryOptions, "nodeID_gt", nodeIDGt);
    _addToQueryList(queryOptions, "nodeID_gte", nodeIDGte);
    _addToQueryList(queryOptions, "nodeID_lt", nodeIDLt);
    _addToQueryList(queryOptions, "nodeID_lte", nodeIDLte);
    _addToQueryList(queryOptions, "nodeID_in", nodeIDIn);
    _addToQueryList(queryOptions, "nodeID_not_in", nodeIDNotIn);

    if (queryOptions.isNotEmpty) {
      if (queryString.isNotEmpty) {
        queryString += ', ' + queryOptions.join(', ');
      } else {
        queryString += queryOptions.join(', ');
      }
    }

    queryString = 'where: {$queryString}';

    if (limit != null) {
      if (queryString.isNotEmpty) {
        queryString += ', ';
      }
      queryString += 'limit: $limit';
    }

    if (offset != null) {
      if (queryString.isNotEmpty) {
        queryString += ', ';
      }
      queryString += 'offset: $offset';
    }

    if (orderBy != null) {
      if (queryString.isNotEmpty) {
        queryString += ', ';
      }
      queryString += 'orderBy: ${orderBy.toString().split('.').last}';
    }

    if (queryString.isNotEmpty) {
      queryString = '($queryString)';
    }
    return queryString;
  }
}
