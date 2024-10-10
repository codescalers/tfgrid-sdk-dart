// ignore_for_file: constant_identifier_names

part of '../models.dart';

enum NodeCertification {
  Diy,
  Certified;

  @override
  String toString() {
    return name;
  }
}

NodeCertification certificationFromJson(String jsonString) {
  switch (jsonString) {
    case 'Certified':
      return NodeCertification.Certified;
    case 'Diy':
    default:
      return NodeCertification.Diy;
  }
}

enum NodesOrderByOptions {
  none,
  id_ASC,
  id_DESC,
  gridVersion_ASC,
  gridVersion_DESC,
  nodeID_ASC,
  nodeID_DESC,
  farmID_ASC,
  farmID_DESC,
  twinID_ASC,
  twinID_DESC,
  location_id_ASC,
  location_id_DESC,
  location_longitude_ASC,
  location_longitude_DESC,
  location_latitude_ASC,
  location_latitude_DESC,
  country_ASC,
  country_DESC,
  city_ASC,
  city_DESC,
  publicConfig_id_ASC,
  publicConfig_id_DESC,
  publicConfig_ipv4_ASC,
  publicConfig_ipv4_DESC,
  publicConfig_ipv6_ASC,
  publicConfig_ipv6_DESC,
  publicConfig_gw4_ASC,
  publicConfig_gw4_DESC,
  publicConfig_gw6_ASC,
  publicConfig_gw6_DESC,
  publicConfig_domain_ASC,
  publicConfig_domain_DESC,
  resourcesTotal_id_ASC,
  resourcesTotal_id_DESC,
  resourcesTotal_hru_ASC,
  resourcesTotal_hru_DESC,
  resourcesTotal_sru_ASC,
  resourcesTotal_sru_DESC,
  resourcesTotal_cru_ASC,
  resourcesTotal_cru_DESC,
  resourcesTotal_mru_ASC,
  resourcesTotal_mru_DESC,
  uptime_ASC,
  uptime_DESC,
  created_ASC,
  created_DESC,
  farmingPolicyId_ASC,
  farmingPolicyId_DESC,
  certification_ASC,
  certification_DESC,
  secure_ASC,
  secure_DESC,
  virtualized_ASC,
  virtualized_DESC,
  serialNumber_ASC,
  serialNumber_DESC,
  createdAt_ASC,
  createdAt_DESC,
  updatedAt_ASC,
  updatedAt_DESC,
  connectionPrice_ASC,
  connectionPrice_DESC,
  power_state_ASC,
  power_state_DESC,
  power_target_ASC,
  power_target_DESC,
  dedicated_ASC,
  dedicated_DESC,
  extraFee_ASC,
  extraFee_DESC;

  @override
  String toString() {
    return name;
  }
}

class NodesQueryWhereOptions {
  // ids
  bool? idIsNull;
  String? idEq;
  String? idNotEq;
  String? idGt;
  String? idGte;
  String? idLt;
  String? idLte;
  List<String>? idIn;
  List<String>? idNotIn;
  String? idContains;
  String? idNotContains;
  String? idContainsInsensitive;
  String? idNotContainsInsensitive;
  String? idStartsWith;
  String? idNotStartsWith;
  String? idEndsWith;
  String? idNotEndsWith;

  // grid
  bool? gridVersionIsNull;
  int? gridVersionEq;
  int? gridVersionNotEq;
  int? gridVersionGt;
  int? gridVersionGte;
  int? gridVersionLt;
  int? gridVersionLte;
  List<int>? gridVersionIn;
  List<int>? gridVersionNotIn;

  // nodeID
  bool? nodeIDIsNull;
  int? nodeIDEq;
  int? nodeIDNotEq;
  int? nodeIDGt;
  int? nodeIDGte;
  int? nodeIDLt;
  int? nodeIDLte;
  List<int>? nodeIDIn;
  List<int>? nodeIDNotIn;

  // farmID
  bool? farmIDIsNull;
  int? farmIDEq;
  int? farmIDNotEq;
  int? farmIDGt;
  int? farmIDGte;
  int? farmIDLt;
  int? farmIDLte;
  List<int>? farmIDIn;
  List<int>? farmIDNotIn;

  // twins
  bool? twinIDIsNull;
  int? twinIDEq;
  int? twinIDNotEq;
  int? twinIDGt;
  int? twinIDGte;
  int? twinIDLt;
  int? twinIDLte;
  List<int>? twinIDIn;
  List<int>? twinIDNotIn;

  // location
  bool? locationIsNull;
  LocationWhereOptions? location;

  // country
  bool? countryIsNull;
  String? countryEq;
  String? countryNotEq;
  String? countryGt;
  String? countryGte;
  String? countryLt;
  String? countryLte;
  List<String>? countryIn;
  List<String>? countryNotIn;
  String? countryContains;
  String? countryNotContains;
  String? countryContainsInsensitive;
  String? countryNotContainsInsensitive;
  String? countryStartsWith;
  String? countryNotStartsWith;
  String? countryEndsWith;
  String? countryNotEndsWith;

  // city
  bool? cityIsNull;
  String? cityEq;
  String? cityNotEq;
  String? cityGt;
  String? cityGte;
  String? cityLt;
  String? cityLte;
  List<String>? cityIn;
  List<String>? cityNotIn;
  String? cityContains;
  String? cityNotContains;
  String? cityContainsInsensitive;
  String? cityNotContainsInsensitive;
  String? cityStartsWith;
  String? cityNotStartsWith;
  String? cityEndsWith;
  String? cityNotEndsWith;

  // publicConfig
  bool? publicConfigIsNull;
  PublicConfigWhereOptions? publicConfig;

  // resourcesTotal
  bool? resourcesTotalIsNull;
  NodeResourcesWhereOptions? resourcesTotal;

  // uptime
  bool? uptimeIsNull;
  BigInt? uptimeEq;
  BigInt? uptimeNotEq;
  BigInt? uptimeGt;
  BigInt? uptimeGte;
  BigInt? uptimeLt;
  BigInt? uptimeLte;
  List<BigInt>? uptimeIn;
  List<BigInt>? uptimeNotIn;

  // created
  bool? createdIsNull;
  int? createdEq;
  int? createdNotEq;
  int? createdGt;
  int? createdGte;
  int? createdLt;
  int? createdLte;
  List<int>? createdIn;
  List<int>? createdNotIn;

  // farmingPolicyId
  bool? farmingPolicyIdIsNull;
  int? farmingPolicyIdEq;
  int? farmingPolicyIdNotEq;
  int? farmingPolicyIdGt;
  int? farmingPolicyIdGte;
  int? farmingPolicyIdLt;
  int? farmingPolicyIdLte;
  List<int>? farmingPolicyIdIn;
  List<int>? farmingPolicyIdNotIn;

  // interfaces
  InterfaceWhereOptions? interfacesEvery;
  InterfaceWhereOptions? interfacesSome;
  InterfaceWhereOptions? interfacesNone;

  // certification
  bool? certificationIsNull;
  NodeCertification? certificationEq;
  NodeCertification? certificationNotEq;
  List<NodeCertification>? certificationIn;
  List<NodeCertification>? certificationNotIn;

  // secure
  bool? secureIsNull;
  bool? secureEq;
  bool? secureNotEq;

  // virtualized
  bool? virtualizedIsNull;
  bool? virtualizedEq;
  bool? virtualizedNotEq;

  // serialNumber
  bool? serialNumberIsNull;
  String? serialNumberEq;
  String? serialNumberNotEq;
  String? serialNumberGt;
  String? serialNumberGte;
  String? serialNumberLt;
  String? serialNumberLte;
  List<String>? serialNumberIn;
  List<String>? serialNumberNotIn;
  String? serialNumberContains;
  String? serialNumberNotContains;
  String? serialNumberContainsInsensitive;
  String? serialNumberNotContainsInsensitive;
  String? serialNumberStartsWith;
  String? serialNumberNotStartsWith;
  String? serialNumberEndsWith;
  String? serialNumberNotEndsWith;

  // createdAt
  bool? createdAtIsNull;
  BigInt? createdAtEq;
  BigInt? createdAtNotEq;
  BigInt? createdAtGt;
  BigInt? createdAtGte;
  BigInt? createdAtLt;
  BigInt? createdAtLte;
  List<BigInt>? createdAtIn;
  List<BigInt>? createdAtNotIn;

  // updatedAt
  bool? updatedAtIsNull;
  BigInt? updatedAtEq;
  BigInt? updatedAtNotEq;
  BigInt? updatedAtGt;
  BigInt? updatedAtGte;
  BigInt? updatedAtLt;
  BigInt? updatedAtLte;
  List<BigInt>? updatedAtIn;
  List<BigInt>? updatedAtNotIn;

  // connectionPrice
  bool? connectionPriceIsNull;
  int? connectionPriceEq;
  int? connectionPriceNotEq;
  int? connectionPriceGt;
  int? connectionPriceGte;
  int? connectionPriceLt;
  int? connectionPriceLte;
  List<int>? connectionPriceIn;
  List<int>? connectionPriceNotIn;

  // power
  bool? powerIsNull;
  PowerWhereOptions? power;

  // dedicated
  bool? dedicatedIsNull;
  bool? dedicatedEq;
  bool? dedicatedNotEq;

  // extraFee
  bool? extraFeeIsNull;
  BigInt? extraFeeEq;
  BigInt? extraFeeNotEq;
  BigInt? extraFeeGt;
  BigInt? extraFeeGte;
  BigInt? extraFeeLt;
  BigInt? extraFeeLte;
  List<BigInt>? extraFeeIn;
  List<BigInt>? extraFeeNotIn;

  NodesQueryWhereOptions({
    // ids
    this.idIsNull,
    this.idEq,
    this.idNotEq,
    this.idGt,
    this.idGte,
    this.idLt,
    this.idLte,
    this.idIn,
    this.idNotIn,
    this.idContains,
    this.idNotContains,
    this.idContainsInsensitive,
    this.idNotContainsInsensitive,
    this.idStartsWith,
    this.idNotStartsWith,
    this.idEndsWith,
    this.idNotEndsWith,

    // grid
    this.gridVersionIsNull,
    this.gridVersionEq,
    this.gridVersionNotEq,
    this.gridVersionGt,
    this.gridVersionGte,
    this.gridVersionLt,
    this.gridVersionLte,
    this.gridVersionIn,
    this.gridVersionNotIn,

    // nodeID
    this.nodeIDIsNull,
    this.nodeIDEq,
    this.nodeIDNotEq,
    this.nodeIDGt,
    this.nodeIDGte,
    this.nodeIDLt,
    this.nodeIDLte,
    this.nodeIDIn,
    this.nodeIDNotIn,

    // farmID
    this.farmIDIsNull,
    this.farmIDEq,
    this.farmIDNotEq,
    this.farmIDGt,
    this.farmIDGte,
    this.farmIDLt,
    this.farmIDLte,
    this.farmIDIn,
    this.farmIDNotIn,

    // twins
    this.twinIDIsNull,
    this.twinIDEq,
    this.twinIDNotEq,
    this.twinIDGt,
    this.twinIDGte,
    this.twinIDLt,
    this.twinIDLte,
    this.twinIDIn,
    this.twinIDNotIn,

    // location
    this.locationIsNull,
    this.location,

    // country
    this.countryIsNull,
    this.countryEq,
    this.countryNotEq,
    this.countryGt,
    this.countryGte,
    this.countryLt,
    this.countryLte,
    this.countryIn,
    this.countryNotIn,
    this.countryContains,
    this.countryNotContains,
    this.countryContainsInsensitive,
    this.countryNotContainsInsensitive,
    this.countryStartsWith,
    this.countryNotStartsWith,
    this.countryEndsWith,
    this.countryNotEndsWith,

    // city
    this.cityIsNull,
    this.cityEq,
    this.cityNotEq,
    this.cityGt,
    this.cityGte,
    this.cityLt,
    this.cityLte,
    this.cityIn,
    this.cityNotIn,
    this.cityContains,
    this.cityNotContains,
    this.cityContainsInsensitive,
    this.cityNotContainsInsensitive,
    this.cityStartsWith,
    this.cityNotStartsWith,
    this.cityEndsWith,
    this.cityNotEndsWith,

    // publicConfig
    this.publicConfigIsNull,
    this.publicConfig,

    // resourcesTotal
    this.resourcesTotalIsNull,
    this.resourcesTotal,

    // uptime
    this.uptimeIsNull,
    this.uptimeEq,
    this.uptimeNotEq,
    this.uptimeGt,
    this.uptimeGte,
    this.uptimeLt,
    this.uptimeLte,
    this.uptimeIn,
    this.uptimeNotIn,

    // created
    this.createdIsNull,
    this.createdEq,
    this.createdNotEq,
    this.createdGt,
    this.createdGte,
    this.createdLt,
    this.createdLte,
    this.createdIn,
    this.createdNotIn,

    // farmingPolicyId
    this.farmingPolicyIdIsNull,
    this.farmingPolicyIdEq,
    this.farmingPolicyIdNotEq,
    this.farmingPolicyIdGt,
    this.farmingPolicyIdGte,
    this.farmingPolicyIdLt,
    this.farmingPolicyIdLte,
    this.farmingPolicyIdIn,
    this.farmingPolicyIdNotIn,

    // interfaces
    this.interfacesEvery,
    this.interfacesSome,
    this.interfacesNone,

    // certification
    this.certificationIsNull,
    this.certificationEq,
    this.certificationNotEq,
    this.certificationIn,
    this.certificationNotIn,

    // secure
    this.secureIsNull,
    this.secureEq,
    this.secureNotEq,

    // virtualized
    this.virtualizedIsNull,
    this.virtualizedEq,
    this.virtualizedNotEq,

    // serialNumber
    this.serialNumberIsNull,
    this.serialNumberEq,
    this.serialNumberNotEq,
    this.serialNumberGt,
    this.serialNumberGte,
    this.serialNumberLt,
    this.serialNumberLte,
    this.serialNumberIn,
    this.serialNumberNotIn,
    this.serialNumberContains,
    this.serialNumberNotContains,
    this.serialNumberContainsInsensitive,
    this.serialNumberNotContainsInsensitive,
    this.serialNumberStartsWith,
    this.serialNumberNotStartsWith,
    this.serialNumberEndsWith,
    this.serialNumberNotEndsWith,

    // createdAt
    this.createdAtIsNull,
    this.createdAtEq,
    this.createdAtNotEq,
    this.createdAtGt,
    this.createdAtGte,
    this.createdAtLt,
    this.createdAtLte,
    this.createdAtIn,
    this.createdAtNotIn,

    // updatedAt
    this.updatedAtIsNull,
    this.updatedAtEq,
    this.updatedAtNotEq,
    this.updatedAtGt,
    this.updatedAtGte,
    this.updatedAtLt,
    this.updatedAtLte,
    this.updatedAtIn,
    this.updatedAtNotIn,

    // connectionPrice
    this.connectionPriceIsNull,
    this.connectionPriceEq,
    this.connectionPriceNotEq,
    this.connectionPriceGt,
    this.connectionPriceGte,
    this.connectionPriceLt,
    this.connectionPriceLte,
    this.connectionPriceIn,
    this.connectionPriceNotIn,

    // power
    this.powerIsNull,
    this.power,

    // dedicated
    this.dedicatedIsNull,
    this.dedicatedEq,
    this.dedicatedNotEq,

    // extraFee
    this.extraFeeIsNull,
    this.extraFeeEq,
    this.extraFeeNotEq,
    this.extraFeeGt,
    this.extraFeeGte,
    this.extraFeeLt,
    this.extraFeeLte,
    this.extraFeeIn,
    this.extraFeeNotIn,
  });

  @override
  String toString() {
    List<String> queryOptions = [];

    // ids
    _addToQueryList(queryOptions, "id_isNull", idIsNull);
    _addToQueryList(queryOptions, "id_eq", idEq);
    _addToQueryList(queryOptions, "id_not_eq", idNotEq);
    _addToQueryList(queryOptions, "id_gt", idGt);
    _addToQueryList(queryOptions, "id_gte", idGte);
    _addToQueryList(queryOptions, "id_lt", idLt);
    _addToQueryList(queryOptions, "id_lte", idLte);
    _addToQueryList(queryOptions, "id_in", idIn);
    _addToQueryList(queryOptions, "id_not_in", idNotIn);
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

    // grid
    _addToQueryList(queryOptions, "gridVersion_isNull", gridVersionIsNull);
    _addToQueryList(queryOptions, "gridVersion_eq", gridVersionEq);
    _addToQueryList(queryOptions, "gridVersion_not_eq", gridVersionNotEq);
    _addToQueryList(queryOptions, "gridVersion_gt", gridVersionGt);
    _addToQueryList(queryOptions, "gridVersion_gte", gridVersionGte);
    _addToQueryList(queryOptions, "gridVersion_lt", gridVersionLt);
    _addToQueryList(queryOptions, "gridVersion_lte", gridVersionLte);
    _addToQueryList(queryOptions, "gridVersion_in", gridVersionIn);
    _addToQueryList(queryOptions, "gridVersion_not_in", gridVersionNotIn);

    // nodeID
    _addToQueryList(queryOptions, "nodeID_isNull", nodeIDIsNull);
    _addToQueryList(queryOptions, "nodeID_eq", nodeIDEq);
    _addToQueryList(queryOptions, "nodeID_not_eq", nodeIDNotEq);
    _addToQueryList(queryOptions, "nodeID_gt", nodeIDGt);
    _addToQueryList(queryOptions, "nodeID_gte", nodeIDGte);
    _addToQueryList(queryOptions, "nodeID_lt", nodeIDLt);
    _addToQueryList(queryOptions, "nodeID_lte", nodeIDLte);
    _addToQueryList(queryOptions, "nodeID_in", nodeIDIn);
    _addToQueryList(queryOptions, "nodeID_not_in", nodeIDNotIn);

    // farmID
    _addToQueryList(queryOptions, "farmID_isNull", farmIDIsNull);
    _addToQueryList(queryOptions, "farmID_eq", farmIDEq);
    _addToQueryList(queryOptions, "farmID_not_eq", farmIDNotEq);
    _addToQueryList(queryOptions, "farmID_gt", farmIDGt);
    _addToQueryList(queryOptions, "farmID_gte", farmIDGte);
    _addToQueryList(queryOptions, "farmID_lt", farmIDLt);
    _addToQueryList(queryOptions, "farmID_lte", farmIDLte);
    _addToQueryList(queryOptions, "farmID_in", farmIDIn);
    _addToQueryList(queryOptions, "farmID_not_in", farmIDNotIn);

    // twins
    _addToQueryList(queryOptions, "twinID_isNull", twinIDIsNull);
    _addToQueryList(queryOptions, "twinID_eq", twinIDEq);
    _addToQueryList(queryOptions, "twinID_not_eq", twinIDNotEq);
    _addToQueryList(queryOptions, "twinID_gt", twinIDGt);
    _addToQueryList(queryOptions, "twinID_gte", twinIDGte);
    _addToQueryList(queryOptions, "twinID_lt", twinIDLt);
    _addToQueryList(queryOptions, "twinID_lte", twinIDLte);
    _addToQueryList(queryOptions, "twinID_in", twinIDIn);
    _addToQueryList(queryOptions, "twinID_not_in", twinIDNotIn);

    // location
    _addToQueryList(queryOptions, "location_isNull", locationIsNull);
    if (location != null) {
      queryOptions.add('location: {${location.toString()}}');
    }

    // country
    _addToQueryList(queryOptions, "country_isNull", countryIsNull);
    _addToQueryList(queryOptions, "country_eq", countryEq);
    _addToQueryList(queryOptions, "country_not_eq", countryNotEq);
    _addToQueryList(queryOptions, "country_gt", countryGt);
    _addToQueryList(queryOptions, "country_gte", countryGte);
    _addToQueryList(queryOptions, "country_lt", countryLt);
    _addToQueryList(queryOptions, "country_lte", countryLte);
    _addToQueryList(queryOptions, "country_in", countryIn);
    _addToQueryList(queryOptions, "country_not_in", countryNotIn);
    _addToQueryList(queryOptions, "country_contains", countryContains);
    _addToQueryList(queryOptions, "country_not_contains", countryNotContains);
    _addToQueryList(queryOptions, "country_containsInsensitive",
        countryContainsInsensitive);
    _addToQueryList(queryOptions, "country_not_containsInsensitive",
        countryNotContainsInsensitive);
    _addToQueryList(queryOptions, "country_startsWith", countryStartsWith);
    _addToQueryList(
        queryOptions, "country_not_startsWith", countryNotStartsWith);
    _addToQueryList(queryOptions, "country_endsWith", countryEndsWith);
    _addToQueryList(queryOptions, "country_not_endsWith", countryNotEndsWith);

    // city
    _addToQueryList(queryOptions, "city_isNull", cityIsNull);
    _addToQueryList(queryOptions, "city_eq", cityEq);
    _addToQueryList(queryOptions, "city_not_eq", cityNotEq);
    _addToQueryList(queryOptions, "city_gt", cityGt);
    _addToQueryList(queryOptions, "city_gte", cityGte);
    _addToQueryList(queryOptions, "city_lt", cityLt);
    _addToQueryList(queryOptions, "city_lte", cityLte);
    _addToQueryList(queryOptions, "city_in", cityIn);
    _addToQueryList(queryOptions, "city_not_in", cityNotIn);
    _addToQueryList(queryOptions, "city_contains", cityContains);
    _addToQueryList(queryOptions, "city_not_contains", cityNotContains);
    _addToQueryList(
        queryOptions, "city_containsInsensitive", cityContainsInsensitive);
    _addToQueryList(queryOptions, "city_not_containsInsensitive",
        cityNotContainsInsensitive);
    _addToQueryList(queryOptions, "city_startsWith", cityStartsWith);
    _addToQueryList(queryOptions, "city_not_startsWith", cityNotStartsWith);
    _addToQueryList(queryOptions, "city_endsWith", cityEndsWith);
    _addToQueryList(queryOptions, "city_not_endsWith", cityNotEndsWith);

    // publicConfig
    _addToQueryList(queryOptions, "publicConfig_isNull", publicConfigIsNull);
    if (publicConfig != null) {
      queryOptions.add('publicConfig: {${publicConfig.toString()}}');
    }

    // resourcesTotal
    _addToQueryList(
        queryOptions, "resourcesTotal_isNull", resourcesTotalIsNull);
    if (resourcesTotal != null) {
      queryOptions.add('resourcesTotal: {${resourcesTotal.toString()}}');
    }

    // uptime
    _addToQueryList(queryOptions, "uptime_isNull", uptimeIsNull);
    _addToQueryList(queryOptions, "uptime_eq", uptimeEq);
    _addToQueryList(queryOptions, "uptime_not_eq", uptimeNotEq);
    _addToQueryList(queryOptions, "uptime_gt", uptimeGt);
    _addToQueryList(queryOptions, "uptime_gte", uptimeGte);
    _addToQueryList(queryOptions, "uptime_lt", uptimeLt);
    _addToQueryList(queryOptions, "uptime_lte", uptimeLte);
    _addToQueryList(queryOptions, "uptime_in", uptimeIn);
    _addToQueryList(queryOptions, "uptime_not_in", uptimeNotIn);

    // created
    _addToQueryList(queryOptions, "created_isNull", createdIsNull);
    _addToQueryList(queryOptions, "created_eq", createdEq);
    _addToQueryList(queryOptions, "created_not_eq", createdNotEq);
    _addToQueryList(queryOptions, "created_gt", createdGt);
    _addToQueryList(queryOptions, "created_gte", createdGte);
    _addToQueryList(queryOptions, "created_lt", createdLt);
    _addToQueryList(queryOptions, "created_lte", createdLte);
    _addToQueryList(queryOptions, "created_in", createdIn);
    _addToQueryList(queryOptions, "created_not_in", createdNotIn);

    // farmingPolicyId
    _addToQueryList(
        queryOptions, "farmingPolicyId_isNull", farmingPolicyIdIsNull);
    _addToQueryList(queryOptions, "farmingPolicyId_eq", farmingPolicyIdEq);
    _addToQueryList(
        queryOptions, "farmingPolicyId_not_eq", farmingPolicyIdNotEq);
    _addToQueryList(queryOptions, "farmingPolicyId_gt", farmingPolicyIdGt);
    _addToQueryList(queryOptions, "farmingPolicyId_gte", farmingPolicyIdGte);
    _addToQueryList(queryOptions, "farmingPolicyId_lt", farmingPolicyIdLt);
    _addToQueryList(queryOptions, "farmingPolicyId_lte", farmingPolicyIdLte);
    _addToQueryList(queryOptions, "farmingPolicyId_in", farmingPolicyIdIn);
    _addToQueryList(
        queryOptions, "farmingPolicyId_not_in", farmingPolicyIdNotIn);

    // interfaces
    if (interfacesEvery != null) {
      queryOptions.add('interfaces_every: {${interfacesEvery.toString()}}');
    }
    if (interfacesSome != null) {
      queryOptions.add('interfaces_some: {${interfacesSome.toString()}}');
    }
    if (interfacesNone != null) {
      queryOptions.add('interfaces_none: {${interfacesNone.toString()}}');
    }

    // certification
    _addToQueryList(queryOptions, "certification_isNull", certificationIsNull);
    _addToQueryList(queryOptions, "certification_eq", certificationEq);
    _addToQueryList(queryOptions, "certification_not_eq", certificationNotEq);
    _addToQueryList(queryOptions, "certification_in", certificationIn);
    _addToQueryList(queryOptions, "certification_not_in", certificationNotIn);

    // secure
    _addToQueryList(queryOptions, "secure_isNull", secureIsNull);
    _addToQueryList(queryOptions, "secure_eq", secureEq);
    _addToQueryList(queryOptions, "secure_not_eq", secureNotEq);

    // virtualized
    _addToQueryList(queryOptions, "virtualized_isNull", virtualizedIsNull);
    _addToQueryList(queryOptions, "virtualized_eq", virtualizedEq);
    _addToQueryList(queryOptions, "virtualized_not_eq", virtualizedNotEq);

    // serialNumber
    _addToQueryList(queryOptions, "serialNumber_isNull", serialNumberIsNull);
    _addToQueryList(queryOptions, "serialNumber_eq", serialNumberEq);
    _addToQueryList(queryOptions, "serialNumber_not_eq", serialNumberNotEq);
    _addToQueryList(queryOptions, "serialNumber_gt", serialNumberGt);
    _addToQueryList(queryOptions, "serialNumber_gte", serialNumberGte);
    _addToQueryList(queryOptions, "serialNumber_lt", serialNumberLt);
    _addToQueryList(queryOptions, "serialNumber_lte", serialNumberLte);
    _addToQueryList(queryOptions, "serialNumber_in", serialNumberIn);
    _addToQueryList(queryOptions, "serialNumber_not_in", serialNumberNotIn);
    _addToQueryList(
        queryOptions, "serialNumber_contains", serialNumberContains);
    _addToQueryList(
        queryOptions, "serialNumber_not_contains", serialNumberNotContains);
    _addToQueryList(queryOptions, "serialNumber_containsInsensitive",
        serialNumberContainsInsensitive);
    _addToQueryList(queryOptions, "serialNumber_not_containsInsensitive",
        serialNumberNotContainsInsensitive);
    _addToQueryList(
        queryOptions, "serialNumber_startsWith", serialNumberStartsWith);
    _addToQueryList(
        queryOptions, "serialNumber_not_startsWith", serialNumberNotStartsWith);
    _addToQueryList(
        queryOptions, "serialNumber_endsWith", serialNumberEndsWith);
    _addToQueryList(
        queryOptions, "serialNumber_not_endsWith", serialNumberNotEndsWith);

    // createdAt
    _addToQueryList(queryOptions, "createdAt_isNull", createdAtIsNull);
    _addToQueryList(queryOptions, "createdAt_eq", createdAtEq);
    _addToQueryList(queryOptions, "createdAt_not_eq", createdAtNotEq);
    _addToQueryList(queryOptions, "createdAt_gt", createdAtGt);
    _addToQueryList(queryOptions, "createdAt_gte", createdAtGte);
    _addToQueryList(queryOptions, "createdAt_lt", createdAtLt);
    _addToQueryList(queryOptions, "createdAt_lte", createdAtLte);
    _addToQueryList(queryOptions, "createdAt_in", createdAtIn);
    _addToQueryList(queryOptions, "createdAt_not_in", createdAtNotIn);

    // updatedAt
    _addToQueryList(queryOptions, "updatedAt_isNull", updatedAtIsNull);
    _addToQueryList(queryOptions, "updatedAt_eq", updatedAtEq);
    _addToQueryList(queryOptions, "updatedAt_not_eq", updatedAtNotEq);
    _addToQueryList(queryOptions, "updatedAt_gt", updatedAtGt);
    _addToQueryList(queryOptions, "updatedAt_gte", updatedAtGte);
    _addToQueryList(queryOptions, "updatedAt_lt", updatedAtLt);
    _addToQueryList(queryOptions, "updatedAt_lte", updatedAtLte);
    _addToQueryList(queryOptions, "updatedAt_in", updatedAtIn);
    _addToQueryList(queryOptions, "updatedAt_not_in", updatedAtNotIn);

    // connectionPrice
    _addToQueryList(
        queryOptions, "connectionPrice_isNull", connectionPriceIsNull);
    _addToQueryList(queryOptions, "connectionPrice_eq", connectionPriceEq);
    _addToQueryList(
        queryOptions, "connectionPrice_not_eq", connectionPriceNotEq);
    _addToQueryList(queryOptions, "connectionPrice_gt", connectionPriceGt);
    _addToQueryList(queryOptions, "connectionPrice_gte", connectionPriceGte);
    _addToQueryList(queryOptions, "connectionPrice_lt", connectionPriceLt);
    _addToQueryList(queryOptions, "connectionPrice_lte", connectionPriceLte);
    _addToQueryList(queryOptions, "connectionPrice_in", connectionPriceIn);
    _addToQueryList(
        queryOptions, "connectionPrice_not_in", connectionPriceNotIn);

    // power
    _addToQueryList(queryOptions, "power_isNull", powerIsNull);
    if (power != null) queryOptions.add('power: {${power.toString()}}');

    // dedicated
    _addToQueryList(queryOptions, "dedicated_isNull", dedicatedIsNull);
    _addToQueryList(queryOptions, "dedicated_eq", dedicatedEq);
    _addToQueryList(queryOptions, "dedicated_not_eq", dedicatedNotEq);

    // extraFee
    _addToQueryList(queryOptions, "extraFee_isNull", extraFeeIsNull);
    _addToQueryList(queryOptions, "extraFee_eq", extraFeeEq);
    _addToQueryList(queryOptions, "extraFee_not_eq", extraFeeNotEq);
    _addToQueryList(queryOptions, "extraFee_gt", extraFeeGt);
    _addToQueryList(queryOptions, "extraFee_gte", extraFeeGte);
    _addToQueryList(queryOptions, "extraFee_lt", extraFeeLt);
    _addToQueryList(queryOptions, "extraFee_lte", extraFeeLte);
    _addToQueryList(queryOptions, "extraFee_in", extraFeeIn);
    _addToQueryList(queryOptions, "extraFee_not_in", extraFeeNotIn);

    return queryOptions.isNotEmpty ? queryOptions.join(', ') : " ";
  }
}

class NodesQueryOptions {
  NodesOrderByOptions orderby;
  int? limit;
  int? offset;
  NodesQueryWhereOptions? whereOptions;

  NodesQueryOptions({
    this.orderby = NodesOrderByOptions.none,
    this.limit,
    this.offset,
    this.whereOptions,
  });
  @override
  String toString() {
    String? order =
        orderby == NodesOrderByOptions.none ? null : orderby.toString();
    if ((whereOptions != null && whereOptions.toString() == " ") &&
        order == null &&
        limit == null &&
        offset == null) return "";
    List<String> queryString = [];
    if (whereOptions != null && whereOptions.toString() != " ") {
      queryString.add("where: {${whereOptions.toString()}}");
    }
    if (order != null) queryString.add("orderBy: $order");
    if (limit != null) queryString.add("limit: $limit");
    if (offset != null) queryString.add("offset: $offset");
    return queryString.isNotEmpty ? "(${queryString.join(', ')})" : "";
  }
}

@reflector
class NodesReturnOptions {
  bool id;
  bool gridVersion;
  bool nodeID;
  bool farmID;
  bool twinID;
  LocationReturnOptions? location;
  bool country;
  bool city;
  PublicConfigReturnOptions? publicConfig;
  NodeResourcesTotalReturnOptions? resourcesTotal;
  bool uptime;
  bool created;
  bool farmingPolicyId;
  InterfacesReturnOptions? interfaces;
  bool certification;
  bool secure;
  bool virtualized;
  bool serialNumber;
  bool createdAt;
  bool updatedAt;
  bool connectionPrice;
  NodePowerReturnOptions? power;
  bool dedicated;
  bool extraFee;

  NodesReturnOptions({
    this.id = false,
    this.gridVersion = false,
    this.nodeID = false,
    this.farmID = false,
    this.twinID = false,
    this.location,
    this.country = false,
    this.city = false,
    this.publicConfig,
    this.resourcesTotal,
    this.uptime = false,
    this.created = false,
    this.farmingPolicyId = false,
    this.interfaces,
    this.certification = false,
    this.secure = false,
    this.virtualized = false,
    this.serialNumber = false,
    this.createdAt = false,
    this.updatedAt = false,
    this.connectionPrice = false,
    this.power,
    this.dedicated = false,
    this.extraFee = false,
  });

  @override
  String toString() {
    String returnOptions = "";
    returnOptions = _addToReturnList(returnOptions, "id", id);
    returnOptions = _addToReturnList(returnOptions, "gridVersion", gridVersion);
    returnOptions = _addToReturnList(returnOptions, "nodeID", nodeID);
    returnOptions = _addToReturnList(returnOptions, "farmID", farmID);
    returnOptions = _addToReturnList(returnOptions, "twinID", twinID);
    if (location != null && location.toString() != "") {
      returnOptions += "location { \n ${location.toString()} } \n";
    }
    returnOptions = _addToReturnList(returnOptions, "country", country);
    returnOptions = _addToReturnList(returnOptions, "city", city);
    if (publicConfig != null && publicConfig.toString() != "") {
      returnOptions += "publicConfig { \n ${publicConfig.toString()} } \n";
    }
    if (resourcesTotal != null && resourcesTotal.toString() != "") {
      returnOptions += "resourcesTotal { \n ${resourcesTotal.toString()} } \n";
    }
    returnOptions = _addToReturnList(returnOptions, "uptime", uptime);
    returnOptions = _addToReturnList(returnOptions, "created", created);
    returnOptions =
        _addToReturnList(returnOptions, "farmingPolicyId", farmingPolicyId);
    if (interfaces != null && interfaces.toString() != "") {
      returnOptions += "interfaces { \n ${interfaces.toString()} } \n";
    }
    returnOptions =
        _addToReturnList(returnOptions, "certification", certification);
    returnOptions = _addToReturnList(returnOptions, "secure", secure);
    returnOptions = _addToReturnList(returnOptions, "virtualized", virtualized);
    returnOptions =
        _addToReturnList(returnOptions, "serialNumber", serialNumber);
    returnOptions = _addToReturnList(returnOptions, "createdAt", createdAt);
    returnOptions = _addToReturnList(returnOptions, "updatedAt", updatedAt);
    returnOptions =
        _addToReturnList(returnOptions, "connectionPrice", connectionPrice);
    if (power != null) returnOptions += power.toString();
    returnOptions = _addToReturnList(returnOptions, "dedicated", dedicated);
    returnOptions = _addToReturnList(returnOptions, "extraFee", extraFee);
    return returnOptions;
  }
}

@reflector
class Node {
  String? id;
  int? gridVersion;
  int? nodeID;
  int? farmID;
  int? twinID;
  Location? location;
  String? country;
  String? city;
  PublicConfig? publicConfig;
  NodeResourcesTotal? resourcesTotal;
  BigInt? uptime;
  int? created;
  int? farmingPolicyId;
  List<Interfaces>? interfaces;
  NodeCertification? certification;
  bool? secure;
  bool? virtualized;
  String? serialNumber;
  BigInt? createdAt;
  BigInt? updatedAt;
  int? connectionPrice;
  NodePower? power;
  bool? dedicated;
  BigInt? extraFee;

  Node({
    this.id,
    this.gridVersion,
    this.nodeID,
    this.farmID,
    this.twinID,
    this.location,
    this.country,
    this.city,
    this.publicConfig,
    this.resourcesTotal,
    this.uptime,
    this.created,
    this.farmingPolicyId,
    this.interfaces,
    this.certification,
    this.secure,
    this.virtualized,
    this.serialNumber,
    this.createdAt,
    this.updatedAt,
    this.connectionPrice,
    this.power,
    this.dedicated,
    this.extraFee,
  });

  factory Node.fromJson(Map<String, dynamic> json) {
    return Node(
      id: json['id'] ?? "",
      gridVersion: json['gridVersion'] ?? 0,
      nodeID: json['nodeID'] ?? 0,
      farmID: json['farmID'] ?? 0,
      twinID: json['twinID'] ?? 0,
      location: json['location'] != null
          ? Location.fromJson(json['location'] as Map<String, dynamic>)
          : null,
      country: json['country'] ?? "",
      city: json['city'] ?? "",
      publicConfig: json['publicConfig'] != null
          ? PublicConfig.fromJson(json['publicConfig'] as Map<String, dynamic>)
          : null,
      resourcesTotal: json['resourcesTotal'] != null
          ? NodeResourcesTotal.fromJson(
              json['resourcesTotal'] as Map<String, dynamic>)
          : null,
      uptime: BigInt.parse(json['uptime'] ?? '0'),
      created: json['created'] ?? 0,
      farmingPolicyId: json['farmingPolicyId'] ?? 0,
      interfaces: json['interfaces'] != null
          ? (json['interfaces'] as List)
              .map((i) => Interfaces.fromJson(i as Map<String, dynamic>))
              .toList()
          : null,
      certification: json['certification'] != null
          ? certificationFromJson(json['certification'])
          : null,
      secure: json['secure'] ?? false,
      virtualized: json['virtualized'] ?? false,
      serialNumber: json['serialNumber'] ?? "",
      createdAt: BigInt.parse(json['createdAt'] ?? '0'),
      updatedAt: BigInt.parse(json['updatedAt'] ?? '0'),
      connectionPrice: json['connectionPrice'] ?? 0,
      power: json['power'] != null
          ? NodePower.fromJson(json['power'] as Map<String, dynamic>)
          : null,
      dedicated: json['dedicated'] ?? false,
      extraFee: BigInt.parse(json['extraFee'] ?? '0'),
    );
  }

  @override
  String toString() {
    return generateToString(this);
  }
}

class NodeEdgeInfo {
  String? cursor;
  Node? node;

  NodeEdgeInfo({
    this.cursor,
    this.node,
  });

  factory NodeEdgeInfo.fromJson(Map<String, dynamic> json) {
    return NodeEdgeInfo(
      cursor: json['cursor'] ?? '',
      node: json['node'] != null ? Node.fromJson(json['node']) : null,
    );
  }

  @override
  String toString() {
    return generateToString(this);
  }
}

class NodeConnectionsInfo {
  List<NodeEdgeInfo>? edges;
  PageInfo? pageInfo;
  int? totalCount;

  NodeConnectionsInfo({
    this.edges,
    this.pageInfo,
    this.totalCount,
  });

  factory NodeConnectionsInfo.fromJson(Map<String, dynamic> json) {
    return NodeConnectionsInfo(
      edges: json['edges'] != null
          ? (json['edges'] as List)
              .map((i) => NodeEdgeInfo.fromJson(i as Map<String, dynamic>))
              .toList()
          : null,
      pageInfo: json['pageInfo'] != null
          ? PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>)
          : null,
      totalCount: json['totalCount'] ?? 0,
    );
  }

  @override
  String toString() {
    return generateToString(this);
  }
}

class NodesConnectionsQueryOptions {
  NodesOrderByOptions orderby;
  int? first;
  int? after;
  NodesQueryWhereOptions? whereOptions;

  NodesConnectionsQueryOptions({
    this.orderby = NodesOrderByOptions.id_ASC,
    this.first,
    this.after,
    this.whereOptions,
  });
  @override
  String toString() {
    List<String> queryString = [];
    if (whereOptions != null && whereOptions.toString() != " ") {
      queryString.add("where: {${whereOptions.toString()}}");
    }
    queryString.add("orderBy: $orderby");
    if (first != null) queryString.add("first: $first");
    if (after != null) queryString.add('after: "$after"');
    return queryString.isNotEmpty ? "(${queryString.join(', ')})" : "";
  }
}

@reflector
class NodeEdgeReturnOptions {
  bool cursor;
  NodesReturnOptions? node;

  NodeEdgeReturnOptions({
    this.cursor = false,
    this.node,
  });

  @override
  String toString() {
    String returnOptions = "";
    returnOptions = _addToReturnList(returnOptions, "cursor", cursor);
    returnOptions = _addToReturnList(returnOptions, "node {", node != null);
    returnOptions =
        _addToReturnList(returnOptions, node.toString(), node != null);
    returnOptions = _addToReturnList(returnOptions, "} ", node != null);
    if (returnOptions != "") returnOptions = "edges { \n $returnOptions } \n";
    return returnOptions;
  }
}

@reflector
class NodesConnectionsReturnOptions {
  NodeEdgeReturnOptions? edges;
  PageInfoReturnOptions? pageInfo;
  bool totalCount;

  NodesConnectionsReturnOptions({
    this.edges,
    this.pageInfo,
    this.totalCount = false,
  });

  @override
  String toString() {
    String returnOptions = "";
    if (edges != null) returnOptions += edges.toString();
    if (pageInfo != null) returnOptions += pageInfo.toString();
    returnOptions = _addToReturnList(returnOptions, "totalCount", totalCount);
    return returnOptions;
  }
}

enum NodeResourcesTotalOrderByOptions {
  none,
  id_ASC,
  id_DESC,
  node_id_ASC,
  node_id_DESC,
  node_gridVersion_ASC,
  node_gridVersion_DESC,
  node_nodeID_ASC,
  node_nodeID_DESC,
  node_farmID_ASC,
  node_farmID_DESC,
  node_twinID_ASC,
  node_twinID_DESC,
  node_country_ASC,
  node_country_DESC,
  node_city_ASC,
  node_city_DESC,
  node_uptime_ASC,
  node_uptime_DESC,
  node_created_ASC,
  node_created_DESC,
  node_farmingPolicyId_ASC,
  node_farmingPolicyId_DESC,
  node_certification_ASC,
  node_certification_DESC,
  node_secure_ASC,
  node_secure_DESC,
  node_virtualized_ASC,
  node_virtualized_DESC,
  node_serialNumber_ASC,
  node_serialNumber_DESC,
  node_createdAt_ASC,
  node_createdAt_DESC,
  node_updatedAt_ASC,
  node_updatedAt_DESC,
  node_connectionPrice_ASC,
  node_connectionPrice_DESC,
  node_dedicated_ASC,
  node_dedicated_DESC,
  node_extraFee_ASC,
  node_extraFee_DESC,
  hru_ASC,
  hru_DESC,
  sru_ASC,
  sru_DESC,
  cru_ASC,
  cru_DESC,
  mru_ASC,
  mru_DESC;

  @override
  String toString() {
    return name;
  }
}

@reflector
class NodeResourcesTotalReturnOptions {
  bool id;
  bool cru;
  bool hru;
  bool mru;
  bool sru;
  NodesReturnOptions? node;

  NodeResourcesTotalReturnOptions({
    this.id = false,
    this.cru = false,
    this.hru = false,
    this.mru = false,
    this.sru = false,
    this.node,
  });
  @override
  String toString() {
    String returnOptions = "";
    returnOptions = _addToReturnList(returnOptions, "id", id);
    returnOptions = _addToReturnList(returnOptions, "cru", cru);
    returnOptions = _addToReturnList(returnOptions, "hru", hru);
    returnOptions = _addToReturnList(returnOptions, "mru", mru);
    returnOptions = _addToReturnList(returnOptions, "sru", sru);
    returnOptions = _addToReturnList(returnOptions, "node {", node != null);
    returnOptions =
        _addToReturnList(returnOptions, node.toString(), node != null);
    returnOptions = _addToReturnList(returnOptions, "} ", node != null);
    return returnOptions;
  }
}

@reflector
class NodeResourcesTotal {
  String? id;
  Node? node;
  BigInt? hru;
  BigInt? sru;
  BigInt? cru;
  BigInt? mru;

  NodeResourcesTotal({
    this.id,
    this.node,
    this.hru,
    this.sru,
    this.cru,
    this.mru,
  });

  factory NodeResourcesTotal.fromJson(Map<String, dynamic> json) {
    return NodeResourcesTotal(
      id: json['id'] ?? "",
      node: json['node'] != null
          ? Node.fromJson(json['node'] as Map<String, dynamic>)
          : null,
      hru: BigInt.parse(json['hru'] ?? '0'),
      sru: BigInt.parse(json['sru'] ?? '0'),
      cru: BigInt.parse(json['cru'] ?? '0'),
      mru: BigInt.parse(json['mru'] ?? '0'),
    );
  }

  @override
  String toString() {
    return generateToString(this);
  }
}

class NodeResourcesWhereOptions {
  //id
  bool? idIsNull;
  String? idEq;
  String? idNotEq;
  String? idGt;
  String? idGte;
  String? idLt;
  String? idLte;
  List<String>? idIn;
  List<String>? idNotIn;
  String? idContains;
  String? idNotContains;
  String? idContainsInsensitive;
  String? idNotContainsInsensitive;
  String? idStartsWith;
  String? idNotStartsWith;
  String? idEndsWith;
  String? idNotEndsWith;

  //node
  bool? nodeIsNull;
  NodesQueryWhereOptions? node;

  //hru
  bool? hruIsNull;
  BigInt? hruEq;
  BigInt? hruNotEq;
  BigInt? hruGt;
  BigInt? hruGte;
  BigInt? hruLt;
  BigInt? hruLte;
  List<BigInt>? hruIn;
  List<BigInt>? hruNotIn;

  //sru
  bool? sruIsNull;
  BigInt? sruEq;
  BigInt? sruNotEq;
  BigInt? sruGt;
  BigInt? sruGte;
  BigInt? sruLt;
  BigInt? sruLte;
  List<BigInt>? sruIn;
  List<BigInt>? sruNotIn;

  //cru
  bool? cruIsNull;
  BigInt? cruEq;
  BigInt? cruNotEq;
  BigInt? cruGt;
  BigInt? cruGte;
  BigInt? cruLt;
  BigInt? cruLte;
  List<BigInt>? cruIn;
  List<BigInt>? cruNotIn;

  //mru
  bool? mruIsNull;
  BigInt? mruEq;
  BigInt? mruNotEq;
  BigInt? mruGt;
  BigInt? mruGte;
  BigInt? mruLt;
  BigInt? mruLte;
  List<BigInt>? mruIn;
  List<BigInt>? mruNotIn;

  NodeResourcesWhereOptions({
    //id
    this.idIsNull,
    this.idEq,
    this.idNotEq,
    this.idGt,
    this.idGte,
    this.idLt,
    this.idLte,
    this.idIn,
    this.idNotIn,
    this.idContains,
    this.idNotContains,
    this.idContainsInsensitive,
    this.idNotContainsInsensitive,
    this.idStartsWith,
    this.idNotStartsWith,
    this.idEndsWith,
    this.idNotEndsWith,

    //node
    this.nodeIsNull,
    this.node,

    //hru
    this.hruIsNull,
    this.hruEq,
    this.hruNotEq,
    this.hruGt,
    this.hruGte,
    this.hruLt,
    this.hruLte,
    this.hruIn,
    this.hruNotIn,

    //sru
    this.sruIsNull,
    this.sruEq,
    this.sruNotEq,
    this.sruGt,
    this.sruGte,
    this.sruLt,
    this.sruLte,
    this.sruIn,
    this.sruNotIn,

    //cru
    this.cruIsNull,
    this.cruEq,
    this.cruNotEq,
    this.cruGt,
    this.cruGte,
    this.cruLt,
    this.cruLte,
    this.cruIn,
    this.cruNotIn,

    //mru
    this.mruIsNull,
    this.mruEq,
    this.mruNotEq,
    this.mruGt,
    this.mruGte,
    this.mruLt,
    this.mruLte,
    this.mruIn,
    this.mruNotIn,
  });

  @override
  String toString() {
    List<String> queryOptions = [];
    //id
    _addToQueryList(queryOptions, "id_isNull", idIsNull);
    _addToQueryList(queryOptions, "id_eq", idEq);
    _addToQueryList(queryOptions, "id_not_eq", idNotEq);
    _addToQueryList(queryOptions, "id_gt", idGt);
    _addToQueryList(queryOptions, "id_gte", idGte);
    _addToQueryList(queryOptions, "id_lt", idLt);
    _addToQueryList(queryOptions, "id_lte", idLte);
    _addToQueryList(queryOptions, "id_in", idIn);
    _addToQueryList(queryOptions, "id_not_in", idNotIn);
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

    //node
    _addToQueryList(queryOptions, "node_isNull", nodeIsNull);
    if (node != null) queryOptions.add('node: {${node.toString()}}');

    //hru
    _addToQueryList(queryOptions, "hru_isNull", hruIsNull);
    _addToQueryList(queryOptions, "hru_eq", hruEq);
    _addToQueryList(queryOptions, "hru_not_eq", hruNotEq);
    _addToQueryList(queryOptions, "hru_gt", hruGt);
    _addToQueryList(queryOptions, "hru_gte", hruGte);
    _addToQueryList(queryOptions, "hru_lt", hruLt);
    _addToQueryList(queryOptions, "hru_lte", hruLte);
    _addToQueryList(queryOptions, "hru_in", hruIn);
    _addToQueryList(queryOptions, "hru_not_in", hruNotIn);
    //sru
    _addToQueryList(queryOptions, "sru_isNull", sruIsNull);
    _addToQueryList(queryOptions, "sru_eq", sruEq);
    _addToQueryList(queryOptions, "sru_not_eq", sruNotEq);
    _addToQueryList(queryOptions, "sru_gt", sruGt);
    _addToQueryList(queryOptions, "sru_gte", sruGte);
    _addToQueryList(queryOptions, "sru_lt", sruLt);
    _addToQueryList(queryOptions, "sru_lte", sruLte);
    _addToQueryList(queryOptions, "sru_in", sruIn);
    _addToQueryList(queryOptions, "sru_not_in", sruNotIn);

    //cru
    _addToQueryList(queryOptions, "cru_isNull", cruIsNull);
    _addToQueryList(queryOptions, "cru_eq", cruEq);
    _addToQueryList(queryOptions, "cru_not_eq", cruNotEq);
    _addToQueryList(queryOptions, "cru_gt", cruGt);
    _addToQueryList(queryOptions, "cru_gte", cruGte);
    _addToQueryList(queryOptions, "cru_lt", cruLt);
    _addToQueryList(queryOptions, "cru_lte", cruLte);
    _addToQueryList(queryOptions, "cru_in", cruIn);
    _addToQueryList(queryOptions, "cru_not_in", cruNotIn);

    //mru
    _addToQueryList(queryOptions, "mru_isNull", mruIsNull);
    _addToQueryList(queryOptions, "mru_eq", mruEq);
    _addToQueryList(queryOptions, "mru_not_eq", mruNotEq);
    _addToQueryList(queryOptions, "mru_gt", mruGt);
    _addToQueryList(queryOptions, "mru_gte", mruGte);
    _addToQueryList(queryOptions, "mru_lt", mruLt);
    _addToQueryList(queryOptions, "mru_lte", mruLte);
    _addToQueryList(queryOptions, "mru_in", mruIn);
    _addToQueryList(queryOptions, "mru_not_in", mruNotIn);

    return queryOptions.isNotEmpty ? queryOptions.join(', ') : " ";
  }
}

class NodeResourcesTotalQueryOptions {
  NodeResourcesTotalOrderByOptions orderby;
  int? limit;
  int? offset;
  NodeResourcesWhereOptions? whereOptions;

  NodeResourcesTotalQueryOptions({
    this.orderby = NodeResourcesTotalOrderByOptions.none,
    this.limit,
    this.offset,
    this.whereOptions,
  });
  @override
  String toString() {
    String? order = orderby == NodeResourcesTotalOrderByOptions.none
        ? null
        : orderby.toString();
    if ((whereOptions != null && whereOptions.toString() == " ") &&
        order == null &&
        limit == null &&
        offset == null) return "";
    List<String> queryString = [];
    if (whereOptions != null && whereOptions.toString() != " ") {
      queryString.add("where: {${whereOptions.toString()}}");
    }
    if (order != null) queryString.add("orderBy: $order");
    if (limit != null) queryString.add("limit: $limit");
    if (offset != null) queryString.add("offset: $offset");
    return queryString.isEmpty ? "" : "(${queryString.join(', ')})";
  }
}

class NodeResourcesTotalEdgeInfo {
  String? cursor;
  NodeResourcesTotal? node;

  NodeResourcesTotalEdgeInfo({
    this.cursor,
    this.node,
  });

  factory NodeResourcesTotalEdgeInfo.fromJson(Map<String, dynamic> json) {
    return NodeResourcesTotalEdgeInfo(
      cursor: json['cursor'] ?? '',
      node: json['node'] != null
          ? NodeResourcesTotal.fromJson(json['node'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  String toString() {
    return generateToString(this);
  }
}

class NodeResourcesTotalsConnectionInfo {
  List<NodeResourcesTotalEdgeInfo>? edges;
  PageInfo? pageInfo;
  int? totalCount;

  NodeResourcesTotalsConnectionInfo({
    this.edges,
    this.pageInfo,
    this.totalCount,
  });

  factory NodeResourcesTotalsConnectionInfo.fromJson(
      Map<String, dynamic> json) {
    return NodeResourcesTotalsConnectionInfo(
      edges: json['edges'] != null
          ? (json['edges'] as List)
              .map((i) => NodeResourcesTotalEdgeInfo.fromJson(
                  i as Map<String, dynamic>))
              .toList()
          : null,
      pageInfo: json['pageInfo'] != null
          ? PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>)
          : null,
      totalCount: json['totalCount'] ?? 0,
    );
  }

  @override
  String toString() {
    return generateToString(this);
  }
}

class NodeResourcesTotalsConnectionQueryOptions {
  NodeResourcesTotalOrderByOptions orderby;
  int? first;
  int? after;
  NodesQueryWhereOptions? whereOptions;

  NodeResourcesTotalsConnectionQueryOptions({
    this.orderby = NodeResourcesTotalOrderByOptions.id_ASC,
    this.first,
    this.after,
    this.whereOptions,
  });
  @override
  String toString() {
    List<String> queryString = [];
    if (whereOptions != null && whereOptions.toString() != " ") {
      queryString.add("where: {${whereOptions.toString()}}");
    }
    queryString.add("orderBy: $orderby");
    if (first != null) queryString.add("first: $first");
    if (after != null) queryString.add('after: "$after"');
    return queryString.isNotEmpty ? "(${queryString.join(', ')})" : "";
  }
}

@reflector
class NodeResourcesTotalEdgeReturnOptions {
  bool cursor;
  NodeResourcesTotalReturnOptions? node;

  NodeResourcesTotalEdgeReturnOptions({
    this.cursor = false,
    this.node,
  });

  @override
  String toString() {
    String returnOptions = "";
    returnOptions = _addToReturnList(returnOptions, "cursor", cursor);
    returnOptions = _addToReturnList(returnOptions, "node {", node != null);
    returnOptions =
        _addToReturnList(returnOptions, node.toString(), node != null);
    returnOptions = _addToReturnList(returnOptions, "} ", node != null);
    if (returnOptions != "") returnOptions = "edges { \n $returnOptions } \n";
    return returnOptions;
  }
}

@reflector
class NodeResourcesTotalsConnectionReturnOptions {
  NodeResourcesTotalEdgeReturnOptions? edges;
  PageInfoReturnOptions? pageInfo;
  bool totalCount;

  NodeResourcesTotalsConnectionReturnOptions({
    this.edges,
    this.pageInfo,
    this.totalCount = false,
  });

  @override
  String toString() {
    String returnOptions = "";
    if (edges != null) returnOptions += edges.toString();
    if (pageInfo != null) returnOptions += pageInfo.toString();
    returnOptions = _addToReturnList(returnOptions, "totalCount", totalCount);
    return returnOptions;
  }
}
