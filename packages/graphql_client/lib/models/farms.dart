// ignore_for_file: constant_identifier_names

part of '../models.dart';

enum FarmsOrderByOptions {
  id_ASC,
  id_DESC,
  gridVersion_ASC,
  gridVersion_DESC,
  farmID_ASC,
  farmID_DESC,
  name_ASC,
  name_DESC,
  twinID_ASC,
  twinID_DESC,
  pricingPolicyID_ASC,
  pricingPolicyID_DESC,
  certification_ASC,
  certification_DESC,
  stellarAddress_ASC,
  stellarAddress_DESC,
  dedicatedFarm_ASC,
  dedicatedFarm_DESC,
}

enum Certification {
  NotCertified,
  Gold,
}

@reflector
class FarmsReturnOptions {
  bool farmID;
  bool id;
  bool name;
  bool certification;
  bool dedicatedFarm;
  bool pricingPolicyID;
  bool stellarAddress;
  bool twinID;
  PublicIpsReturnOptions? publicIps;

  FarmsReturnOptions({
    this.id = false,
    this.farmID = false,
    this.name = false,
    this.certification = false,
    this.dedicatedFarm = false,
    this.pricingPolicyID = false,
    this.stellarAddress = false,
    this.twinID = false,
    this.publicIps,
  });

  @override
  String toString() {
    String returnOptions = "";
    returnOptions = _addToReturnList(returnOptions, "id", id);
    returnOptions = _addToReturnList(returnOptions, "farmID", farmID);
    returnOptions = _addToReturnList(returnOptions, "name", name);
    returnOptions =
        _addToReturnList(returnOptions, "certification", certification);
    returnOptions =
        _addToReturnList(returnOptions, "dedicatedFarm", dedicatedFarm);
    returnOptions =
        _addToReturnList(returnOptions, "pricingPolicyID", pricingPolicyID);
    returnOptions =
        _addToReturnList(returnOptions, "stellarAddress", stellarAddress);
    returnOptions = _addToReturnList(returnOptions, "twinID", twinID);
    returnOptions =
        _addToReturnList(returnOptions, "publicIPs {", publicIps != null);
    returnOptions = _addToReturnList(
        returnOptions, publicIps.toString(), publicIps != null);
    returnOptions = _addToReturnList(returnOptions, "}", publicIps != null);
    return returnOptions;
  }
}

class FarmsQueryOptions {
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
  bool? gridVersionIsNull;
  int? gridVersionEq;
  int? gridVersionNotEq;
  int? gridVersionGt;
  int? gridVersionGte;
  int? gridVersionLt;
  int? gridVersionLte;
  List<int>? gridVersionIn;
  List<int>? gridVersionNotIn;
  bool? farmIDIsNull;
  int? farmIDEq;
  int? farmIDNotEq;
  int? farmIDGt;
  int? farmIDGte;
  int? farmIDLt;
  int? farmIDLte;
  List<int>? farmIDIn;
  List<int>? farmIDNotIn;
  bool? nameIsNull;
  String? nameEq;
  String? nameNotEq;
  String? nameGt;
  String? nameGte;
  String? nameLt;
  String? nameLte;
  List<String>? nameIn;
  List<String>? nameNotIn;
  String? nameContains;
  String? nameNotContains;
  String? nameContainsInsensitive;
  String? nameNotContainsInsensitive;
  String? nameStartsWith;
  String? nameNotStartsWith;
  String? nameEndsWith;
  String? nameNotEndsWith;
  bool? twinIDIsNull;
  int? twinIDEq;
  int? twinIDNotEq;
  int? twinIDGt;
  int? twinIDGte;
  int? twinIDLt;
  int? twinIDLte;
  List<int>? twinIDIn;
  List<int>? twinIDNotIn;
  bool? pricingPolicyIDIsNull;
  int? pricingPolicyIDEq;
  int? pricingPolicyIDNotEq;
  int? pricingPolicyIDGt;
  int? pricingPolicyIDGte;
  int? pricingPolicyIDLt;
  int? pricingPolicyIDLte;
  List<int>? pricingPolicyIDIn;
  List<int>? pricingPolicyIDNotIn;
  bool? certificationIsNull;
  Certification? certificationEq;
  Certification? certificationNotEq;
  List<Certification>? certificationIn;
  List<Certification>? certificationNotIn;
  bool? stellarAddressIsNull;
  String? stellarAddressEq;
  String? stellarAddressNotEq;
  String? stellarAddressGt;
  String? stellarAddressGte;
  String? stellarAddressLt;
  String? stellarAddressLte;
  List<String>? stellarAddressIn;
  List<String>? stellarAddressNotIn;
  String? stellarAddressContains;
  String? stellarAddressNotContains;
  String? stellarAddressContainsInsensitive;
  String? stellarAddressNotContainsInsensitive;
  String? stellarAddressStartsWith;
  String? stellarAddressNotStartsWith;
  String? stellarAddressEndsWith;
  String? stellarAddressNotEndsWith;
  bool? dedicatedFarmIsNull;
  bool? dedicatedFarmEq;
  bool? dedicatedFarmNotEq;
  int? limit;
  int? offset;
  FarmsOrderByOptions? orderBy;

  FarmsQueryOptions({
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
    this.gridVersionIsNull,
    this.gridVersionEq,
    this.gridVersionNotEq,
    this.gridVersionGt,
    this.gridVersionGte,
    this.gridVersionLt,
    this.gridVersionLte,
    this.gridVersionIn,
    this.gridVersionNotIn,
    this.farmIDIsNull,
    this.farmIDEq,
    this.farmIDNotEq,
    this.farmIDGt,
    this.farmIDLte,
    this.farmIDIn,
    this.farmIDNotIn,
    this.nameIsNull,
    this.nameEq,
    this.nameNotEq,
    this.nameGt,
    this.nameGte,
    this.nameLt,
    this.nameLte,
    this.nameIn,
    this.nameNotIn,
    this.nameContains,
    this.nameNotContains,
    this.nameContainsInsensitive,
    this.nameNotContainsInsensitive,
    this.nameStartsWith,
    this.nameNotStartsWith,
    this.nameEndsWith,
    this.nameNotEndsWith,
    this.twinIDIsNull,
    this.twinIDEq,
    this.twinIDNotEq,
    this.twinIDGt,
    this.twinIDGte,
    this.twinIDLt,
    this.twinIDLte,
    this.twinIDIn,
    this.twinIDNotIn,
    this.pricingPolicyIDIsNull,
    this.pricingPolicyIDEq,
    this.pricingPolicyIDNotEq,
    this.pricingPolicyIDGt,
    this.pricingPolicyIDGte,
    this.pricingPolicyIDLt,
    this.pricingPolicyIDLte,
    this.pricingPolicyIDIn,
    this.pricingPolicyIDNotIn,
    this.certificationIsNull,
    this.certificationEq,
    this.certificationNotEq,
    this.certificationIn,
    this.certificationNotIn,
    this.stellarAddressIsNull,
    this.stellarAddressEq,
    this.stellarAddressNotEq,
    this.stellarAddressGt,
    this.stellarAddressGte,
    this.stellarAddressLt,
    this.stellarAddressLte,
    this.stellarAddressIn,
    this.stellarAddressNotIn,
    this.stellarAddressContains,
    this.stellarAddressNotContains,
    this.stellarAddressContainsInsensitive,
    this.stellarAddressNotContainsInsensitive,
    this.stellarAddressStartsWith,
    this.stellarAddressNotStartsWith,
    this.stellarAddressEndsWith,
    this.stellarAddressNotEndsWith,
    this.dedicatedFarmIsNull,
    this.dedicatedFarmEq,
    this.dedicatedFarmNotEq,
    this.limit,
    this.offset,
    this.orderBy,
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
    _addToQueryList(queryOptions, "gridVersion_is_null", gridVersionIsNull);
    _addToQueryList(queryOptions, "gridVersion_eq", gridVersionEq);
    _addToQueryList(queryOptions, "gridVersion_not_eq", gridVersionNotEq);
    _addToQueryList(queryOptions, "gridVersion_gt", gridVersionGt);
    _addToQueryList(queryOptions, "gridVersion_gte", gridVersionGte);
    _addToQueryList(queryOptions, "gridVersion_lt", gridVersionLt);
    _addToQueryList(queryOptions, "gridVersion_lte", gridVersionLte);
    _addToQueryList(queryOptions, "gridVersion_in", gridVersionIn);
    _addToQueryList(queryOptions, "gridVersion_not_in", gridVersionNotIn);
    _addToQueryList(queryOptions, "farmID_is_null", farmIDIsNull);
    _addToQueryList(queryOptions, "farmID_eq", farmIDEq);
    _addToQueryList(queryOptions, "farmID_not_eq", farmIDNotEq);
    _addToQueryList(queryOptions, "farmID_gt", farmIDGt);
    _addToQueryList(queryOptions, "farmID_gte", farmIDGte);
    _addToQueryList(queryOptions, "farmID_lt", farmIDLt);
    _addToQueryList(queryOptions, "farmID_lte", farmIDLte);
    _addToQueryList(queryOptions, "farmID_in", farmIDIn);
    _addToQueryList(queryOptions, "farmID_not_in", farmIDNotIn);
    _addToQueryList(queryOptions, "name_isNull", nameIsNull);
    _addToQueryList(queryOptions, "name_eq", nameEq);
    _addToQueryList(queryOptions, "name_not_eq", nameNotEq);
    _addToQueryList(queryOptions, "name_gt", nameGt);
    _addToQueryList(queryOptions, "name_gte", nameGte);
    _addToQueryList(queryOptions, "name_lt", nameLt);
    _addToQueryList(queryOptions, "name_lte", nameLte);
    _addToQueryList(queryOptions, "name_in", nameIn);
    _addToQueryList(queryOptions, "name_not_in", nameNotIn);
    _addToQueryList(queryOptions, "name_contains", nameContains);
    _addToQueryList(queryOptions, "name_not_contains", nameNotContains);
    _addToQueryList(
        queryOptions, "name_containsInsensitive", nameContainsInsensitive);
    _addToQueryList(queryOptions, "name_not_containsInsensitive",
        nameNotContainsInsensitive);
    _addToQueryList(queryOptions, "name_startsWith", nameStartsWith);
    _addToQueryList(queryOptions, "name_not_startsWith", nameNotStartsWith);
    _addToQueryList(queryOptions, "name_endsWith", nameEndsWith);
    _addToQueryList(queryOptions, "name_not_endsWith", nameNotEndsWith);
    _addToQueryList(queryOptions, "twinID_isNull", twinIDIsNull);
    _addToQueryList(queryOptions, "twinID_eq", twinIDEq);
    _addToQueryList(queryOptions, "twinID_not_eq", twinIDNotEq);
    _addToQueryList(queryOptions, "twinID_gt", twinIDGt);
    _addToQueryList(queryOptions, "twinID_gte", twinIDGte);
    _addToQueryList(queryOptions, "twinID_lt", twinIDLt);
    _addToQueryList(queryOptions, "twinID_lte", twinIDLte);
    _addToQueryList(queryOptions, "twinID_in", twinIDIn);
    _addToQueryList(queryOptions, "twinID_not_in", twinIDNotIn);
    _addToQueryList(
        queryOptions, "pricingPolicyID_isNull", pricingPolicyIDIsNull);
    _addToQueryList(queryOptions, "pricingPolicyID_eq", pricingPolicyIDEq);
    _addToQueryList(
        queryOptions, "pricingPolicyID_not_eq", pricingPolicyIDNotEq);
    _addToQueryList(queryOptions, "pricingPolicyID_gt", pricingPolicyIDGt);
    _addToQueryList(queryOptions, "pricingPolicyID_gte", pricingPolicyIDGte);
    _addToQueryList(queryOptions, "pricingPolicyID_lt", pricingPolicyIDLt);
    _addToQueryList(queryOptions, "pricingPolicyID_lte", pricingPolicyIDLte);
    _addToQueryList(queryOptions, "pricingPolicyID_in", pricingPolicyIDIn);
    _addToQueryList(
        queryOptions, "pricingPolicyID_not_in", pricingPolicyIDNotIn);
    _addToQueryList(queryOptions, "certification_isNull", certificationIsNull);
    _addToQueryList(queryOptions, "certification_eq", certificationEq);
    _addToQueryList(queryOptions, "certification_not_eq", certificationNotEq);
    _addToQueryList(queryOptions, "certification_in", certificationIn);
    _addToQueryList(queryOptions, "certification_not_in", certificationNotIn);
    _addToQueryList(
        queryOptions, "stellarAddress_isNull", stellarAddressIsNull);
    _addToQueryList(queryOptions, "stellarAddress_eq", stellarAddressEq);
    _addToQueryList(queryOptions, "stellarAddress_not_eq", stellarAddressNotEq);
    _addToQueryList(queryOptions, "stellarAddress_gt", stellarAddressGt);
    _addToQueryList(queryOptions, "stellarAddress_gte", stellarAddressGte);
    _addToQueryList(queryOptions, "stellarAddress_lt", stellarAddressLt);
    _addToQueryList(queryOptions, "stellarAddress_lte", stellarAddressLte);
    _addToQueryList(queryOptions, "stellarAddress_in", stellarAddressIn);
    _addToQueryList(queryOptions, "stellarAddress_not_in", stellarAddressNotIn);
    _addToQueryList(
        queryOptions, "stellarAddress_contains", stellarAddressContains);
    _addToQueryList(
        queryOptions, "stellarAddress_not_contains", stellarAddressNotContains);
    _addToQueryList(queryOptions, "stellarAddress_containsInsensitive",
        stellarAddressContainsInsensitive);
    _addToQueryList(queryOptions, "stellarAddress_not_containsInsensitive",
        stellarAddressNotContainsInsensitive);
    _addToQueryList(
        queryOptions, "stellarAddress_startsWith", stellarAddressStartsWith);
    _addToQueryList(queryOptions, "stellarAddress_not_startsWith",
        stellarAddressNotStartsWith);
    _addToQueryList(
        queryOptions, "stellarAddress_endsWith", stellarAddressEndsWith);
    _addToQueryList(
        queryOptions, "stellarAddress_not_endsWith", stellarAddressNotEndsWith);
    _addToQueryList(queryOptions, "dedicatedFarm_isNull", dedicatedFarmIsNull);
    _addToQueryList(queryOptions, "dedicatedFarm_eq", dedicatedFarmEq);
    _addToQueryList(queryOptions, "dedicatedFarm_not_eq", dedicatedFarmNotEq);

    String queryString = '';

    if (queryOptions.isNotEmpty) {
      queryString += 'where: {${queryOptions.join(', ')} }';
    }

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
class FarmInfo {
  String? id;
  String? gridVersion;
  int? farmID;
  String? name;
  String? certification;
  bool? dedicatedFarm;
  int? pricingPolicyID;
  String? stellarAddress;
  int? twinID;
  List<PublicIpsInfo>? publicIPs;

  FarmInfo({
    this.id,
    this.gridVersion,
    this.farmID,
    this.name,
    this.certification,
    this.dedicatedFarm,
    this.pricingPolicyID,
    this.stellarAddress,
    this.twinID,
    this.publicIPs,
  });

  @override
  String toString() {
    return generateToString(this);
  }

  factory FarmInfo.fromJson(Map<String, dynamic> json) {
    return FarmInfo(
      id: json['id'] ?? '',
      farmID: json['farmID'] ?? 0,
      certification: json['certification'] ?? '',
      dedicatedFarm: json['dedicatedFarm'] ?? false,
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

//pageinfo returns all 4 parameters
@reflector
class FarmsConnectionReturnOptions {
  bool totalCount;
  bool pageInfo;
  EdgesReturnOptions? edges;

  FarmsConnectionReturnOptions({
    this.totalCount = false,
    this.pageInfo = false,
    this.edges,
  });

  @override
  String toString() {
    String returnOptions = '';
    returnOptions = _addToReturnList(returnOptions, "totalCount", totalCount);
    returnOptions = _addToReturnList(
        returnOptions,
        "pageInfo{\n startCursor \n endCursor \n hasNextPage \n hasPreviousPage \n }",
        pageInfo);
    returnOptions = _addToReturnList(returnOptions, "edges {", edges != null);
    returnOptions =
        _addToReturnList(returnOptions, edges.toString(), edges != null);
    returnOptions = _addToReturnList(returnOptions, "}", edges != null);

    return returnOptions;
  }
}

class FarmsConnectionQueryOptions {
  FarmsOrderByOptions orderBy;
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
  bool? certificationIsNull;
  Certification? certificationEq;
  Certification? certificationNotEq;
  List<Certification>? certificationIn;
  List<Certification>? certificationNotIn;
  bool? dedicatedFarmIsNull;
  bool? dedicatedFarmEq;
  bool? dedicatedFarmNotEq;
  bool? farmIDIsNull;
  int? farmIDEq;
  int? farmIDNotEq;
  int? farmIDGt;
  int? farmIDGte;
  int? farmIDLt;
  int? farmIDLte;
  List<int>? farmIDIn;
  List<int>? farmIDNotIn;
  bool? gridVersionIsNull;
  int? gridVersionEq;
  int? gridVersionNotEq;
  int? gridVersionGt;
  int? gridVersionGte;
  int? gridVersionLt;
  int? gridVersionLte;
  List<int>? gridVersionIn;
  List<int>? gridVersionNotIn;
  bool? nameIsNull;
  String? nameEq;
  String? nameNotEq;
  String? nameGt;
  String? nameGte;
  String? nameLt;
  String? nameLte;
  List<String>? nameIn;
  List<String>? nameNotIn;
  String? nameContains;
  String? nameNotContains;
  String? nameContainsInsensitive;
  String? nameNotContainsInsensitive;
  String? nameStartsWith;
  String? nameNotStartsWith;
  String? nameEndsWith;
  String? nameNotEndsWith;
  bool? pricingPolicyIDIsNull;
  int? pricingPolicyIDEq;
  int? pricingPolicyIDNotEq;
  int? pricingPolicyIDGt;
  int? pricingPolicyIDGte;
  int? pricingPolicyIDLt;
  int? pricingPolicyIDLte;
  List<int>? pricingPolicyIDIn;
  List<int>? pricingPolicyIDNotIn;
  bool? stellarAddressIsNull;
  String? stellarAddressEq;
  String? stellarAddressNotEq;
  String? stellarAddressGt;
  String? stellarAddressGte;
  String? stellarAddressLt;
  String? stellarAddressLte;
  List<String>? stellarAddressIn;
  List<String>? stellarAddressNotIn;
  String? stellarAddressContains;
  String? stellarAddressNotContains;
  String? stellarAddressContainsInsensitive;
  String? stellarAddressNotContainsInsensitive;
  String? stellarAddressStartsWith;
  String? stellarAddressNotStartsWith;
  String? stellarAddressEndsWith;
  String? stellarAddressNotEndsWith;
  bool? twinIDIsNull;
  int? twinIDEq;
  int? twinIDNotEq;
  int? twinIDGt;
  int? twinIDGte;
  int? twinIDLt;
  int? twinIDLte;
  List<int>? twinIDIn;
  List<int>? twinIDNotIn;
  int? first;
  String? after;

  FarmsConnectionQueryOptions({
    required this.orderBy,
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
    this.gridVersionIsNull,
    this.gridVersionEq,
    this.gridVersionNotEq,
    this.gridVersionGt,
    this.gridVersionGte,
    this.gridVersionLt,
    this.gridVersionLte,
    this.gridVersionIn,
    this.gridVersionNotIn,
    this.farmIDIsNull,
    this.farmIDEq,
    this.farmIDNotEq,
    this.farmIDGt,
    this.farmIDLte,
    this.farmIDIn,
    this.farmIDNotIn,
    this.nameIsNull,
    this.nameEq,
    this.nameNotEq,
    this.nameGt,
    this.nameGte,
    this.nameLt,
    this.nameLte,
    this.nameIn,
    this.nameNotIn,
    this.nameContains,
    this.nameNotContains,
    this.nameContainsInsensitive,
    this.nameNotContainsInsensitive,
    this.nameStartsWith,
    this.nameNotStartsWith,
    this.nameEndsWith,
    this.nameNotEndsWith,
    this.twinIDIsNull,
    this.twinIDEq,
    this.twinIDNotEq,
    this.twinIDGt,
    this.twinIDGte,
    this.twinIDLt,
    this.twinIDLte,
    this.twinIDIn,
    this.twinIDNotIn,
    this.pricingPolicyIDIsNull,
    this.pricingPolicyIDEq,
    this.pricingPolicyIDNotEq,
    this.pricingPolicyIDGt,
    this.pricingPolicyIDGte,
    this.pricingPolicyIDLt,
    this.pricingPolicyIDLte,
    this.pricingPolicyIDIn,
    this.pricingPolicyIDNotIn,
    this.certificationIsNull,
    this.certificationEq,
    this.certificationNotEq,
    this.certificationIn,
    this.certificationNotIn,
    this.stellarAddressIsNull,
    this.stellarAddressEq,
    this.stellarAddressNotEq,
    this.stellarAddressGt,
    this.stellarAddressGte,
    this.stellarAddressLt,
    this.stellarAddressLte,
    this.stellarAddressIn,
    this.stellarAddressNotIn,
    this.stellarAddressContains,
    this.stellarAddressNotContains,
    this.stellarAddressContainsInsensitive,
    this.stellarAddressNotContainsInsensitive,
    this.stellarAddressStartsWith,
    this.stellarAddressNotStartsWith,
    this.stellarAddressEndsWith,
    this.stellarAddressNotEndsWith,
    this.dedicatedFarmIsNull,
    this.dedicatedFarmEq,
    this.dedicatedFarmNotEq,
    this.after,
    this.first,
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
    _addToQueryList(queryOptions, "gridVersion_is_null", gridVersionIsNull);
    _addToQueryList(queryOptions, "gridVersion_eq", gridVersionEq);
    _addToQueryList(queryOptions, "gridVersion_not_eq", gridVersionNotEq);
    _addToQueryList(queryOptions, "gridVersion_gt", gridVersionGt);
    _addToQueryList(queryOptions, "gridVersion_gte", gridVersionGte);
    _addToQueryList(queryOptions, "gridVersion_lt", gridVersionLt);
    _addToQueryList(queryOptions, "gridVersion_lte", gridVersionLte);
    _addToQueryList(queryOptions, "gridVersion_in", gridVersionIn);
    _addToQueryList(queryOptions, "gridVersion_not_in", gridVersionNotIn);
    _addToQueryList(queryOptions, "farmID_is_null", farmIDIsNull);
    _addToQueryList(queryOptions, "farmID_eq", farmIDEq);
    _addToQueryList(queryOptions, "farmID_not_eq", farmIDNotEq);
    _addToQueryList(queryOptions, "farmID_gt", farmIDGt);
    _addToQueryList(queryOptions, "farmID_gte", farmIDGte);
    _addToQueryList(queryOptions, "farmID_lt", farmIDLt);
    _addToQueryList(queryOptions, "farmID_lte", farmIDLte);
    _addToQueryList(queryOptions, "farmID_in", farmIDIn);
    _addToQueryList(queryOptions, "farmID_not_in", farmIDNotIn);
    _addToQueryList(queryOptions, "name_isNull", nameIsNull);
    _addToQueryList(queryOptions, "name_eq", nameEq);
    _addToQueryList(queryOptions, "name_not_eq", nameNotEq);
    _addToQueryList(queryOptions, "name_gt", nameGt);
    _addToQueryList(queryOptions, "name_gte", nameGte);
    _addToQueryList(queryOptions, "name_lt", nameLt);
    _addToQueryList(queryOptions, "name_lte", nameLte);
    _addToQueryList(queryOptions, "name_in", nameIn);
    _addToQueryList(queryOptions, "name_not_in", nameNotIn);
    _addToQueryList(queryOptions, "name_contains", nameContains);
    _addToQueryList(queryOptions, "name_not_contains", nameNotContains);
    _addToQueryList(
        queryOptions, "name_containsInsensitive", nameContainsInsensitive);
    _addToQueryList(queryOptions, "name_not_containsInsensitive",
        nameNotContainsInsensitive);
    _addToQueryList(queryOptions, "name_startsWith", nameStartsWith);
    _addToQueryList(queryOptions, "name_not_startsWith", nameNotStartsWith);
    _addToQueryList(queryOptions, "name_endsWith", nameEndsWith);
    _addToQueryList(queryOptions, "name_not_endsWith", nameNotEndsWith);
    _addToQueryList(queryOptions, "twinID_isNull", twinIDIsNull);
    _addToQueryList(queryOptions, "twinID_eq", twinIDEq);
    _addToQueryList(queryOptions, "twinID_not_eq", twinIDNotEq);
    _addToQueryList(queryOptions, "twinID_gt", twinIDGt);
    _addToQueryList(queryOptions, "twinID_gte", twinIDGte);
    _addToQueryList(queryOptions, "twinID_lt", twinIDLt);
    _addToQueryList(queryOptions, "twinID_lte", twinIDLte);
    _addToQueryList(queryOptions, "twinID_in", twinIDIn);
    _addToQueryList(queryOptions, "twinID_not_in", twinIDNotIn);
    _addToQueryList(
        queryOptions, "pricingPolicyID_isNull", pricingPolicyIDIsNull);
    _addToQueryList(queryOptions, "pricingPolicyID_eq", pricingPolicyIDEq);
    _addToQueryList(
        queryOptions, "pricingPolicyID_not_eq", pricingPolicyIDNotEq);
    _addToQueryList(queryOptions, "pricingPolicyID_gt", pricingPolicyIDGt);
    _addToQueryList(queryOptions, "pricingPolicyID_gte", pricingPolicyIDGte);
    _addToQueryList(queryOptions, "pricingPolicyID_lt", pricingPolicyIDLt);
    _addToQueryList(queryOptions, "pricingPolicyID_lte", pricingPolicyIDLte);
    _addToQueryList(queryOptions, "pricingPolicyID_in", pricingPolicyIDIn);
    _addToQueryList(
        queryOptions, "pricingPolicyID_not_in", pricingPolicyIDNotIn);
    _addToQueryList(queryOptions, "certification_isNull", certificationIsNull);
    _addToQueryList(queryOptions, "certification_eq", certificationEq);
    _addToQueryList(queryOptions, "certification_not_eq", certificationNotEq);
    _addToQueryList(queryOptions, "certification_in", certificationIn);
    _addToQueryList(queryOptions, "certification_not_in", certificationNotIn);
    _addToQueryList(
        queryOptions, "stellarAddress_isNull", stellarAddressIsNull);
    _addToQueryList(queryOptions, "stellarAddress_eq", stellarAddressEq);
    _addToQueryList(queryOptions, "stellarAddress_not_eq", stellarAddressNotEq);
    _addToQueryList(queryOptions, "stellarAddress_gt", stellarAddressGt);
    _addToQueryList(queryOptions, "stellarAddress_gte", stellarAddressGte);
    _addToQueryList(queryOptions, "stellarAddress_lt", stellarAddressLt);
    _addToQueryList(queryOptions, "stellarAddress_lte", stellarAddressLte);
    _addToQueryList(queryOptions, "stellarAddress_in", stellarAddressIn);
    _addToQueryList(queryOptions, "stellarAddress_not_in", stellarAddressNotIn);
    _addToQueryList(
        queryOptions, "stellarAddress_contains", stellarAddressContains);
    _addToQueryList(
        queryOptions, "stellarAddress_not_contains", stellarAddressNotContains);
    _addToQueryList(queryOptions, "stellarAddress_containsInsensitive",
        stellarAddressContainsInsensitive);
    _addToQueryList(queryOptions, "stellarAddress_not_containsInsensitive",
        stellarAddressNotContainsInsensitive);
    _addToQueryList(
        queryOptions, "stellarAddress_startsWith", stellarAddressStartsWith);
    _addToQueryList(queryOptions, "stellarAddress_not_startsWith",
        stellarAddressNotStartsWith);
    _addToQueryList(
        queryOptions, "stellarAddress_endsWith", stellarAddressEndsWith);
    _addToQueryList(
        queryOptions, "stellarAddress_not_endsWith", stellarAddressNotEndsWith);
    _addToQueryList(queryOptions, "dedicatedFarm_isNull", dedicatedFarmIsNull);
    _addToQueryList(queryOptions, "dedicatedFarm_eq", dedicatedFarmEq);
    _addToQueryList(queryOptions, "dedicatedFarm_not_eq", dedicatedFarmNotEq);

    String queryString = '';
    if (queryOptions.isNotEmpty) {
      queryString += 'where: {${queryOptions.join(', ')} }';
    }

    if (after != null) {
      if (queryString.isNotEmpty) {
        queryString += ',';
      }
      queryString += 'after: "$after"';
    }

    if (first != null) {
      if (queryString.isNotEmpty) {
        queryString += ',';
      }
      queryString += 'first: $first';
    }

    if (queryString.isNotEmpty) {
      queryString += ', ';
    }
    queryString += 'orderBy: ${orderBy.toString().split('.').last}';
    queryString = '($queryString)';
    return queryString;
  }
}

@reflector
class FarmsConnectionInfo {
  int? totalCount;
  PageInfo? pageInfo;
  List<EdgesInfo>? edges;

  FarmsConnectionInfo({
    this.totalCount,
    this.pageInfo,
    this.edges,
  });

  factory FarmsConnectionInfo.fromJson(Map<String, dynamic> json) {
    return FarmsConnectionInfo(
      totalCount: json['totalCount'] ?? 0,
      pageInfo:
          json['pageInfo'] != null ? PageInfo.fromJson(json['pageInfo']) : null,
      edges: json['edges'] != null
          ? (json['edges'] as List).map((e) => EdgesInfo.fromJson(e)).toList()
          : null,
    );
  }

  @override
  String toString() {
    return generateToString(this);
  }
}
