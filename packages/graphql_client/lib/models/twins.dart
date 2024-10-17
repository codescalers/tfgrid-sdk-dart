// ignore_for_file: constant_identifier_names

part of '../models.dart';

enum TwinOrderByOptions {
  none,
  id_ASC,
  id_DESC,
  gridVersion_ASC,
  gridVersion_DESC,
  twinID_ASC,
  twinID_DESC,
  accountID_ASC,
  accountID_DESC,
  relay_ASC,
  relay_DESC,
  publicKey_ASC,
  publicKey_DESC;

  @override
  String toString() {
    return name;
  }
}

@reflector
class TwinQueryWhereOptions {
  //ids options
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

  //grid options
  bool? gridVersionisNull;
  int? gridVersionEq;
  int? gridVersionNotEq;
  int? gridVersionGt;
  int? gridVersionGte;
  int? gridVersionLt;
  int? gridVersionLte;
  List<int>? gridVersionIn;
  List<int>? gridVersionNotIn;

  //twins options
  bool? twinIDIsNull;
  int? twinIDEq;
  int? twinIDNotEq;
  int? twinIDGt;
  int? twinIDGte;
  int? twinIDLt;
  int? twinIDLte;
  List<int>? twinIDIn;
  List<int>? twinIDNotIn;

  //account options
  bool? accountIDIsNull;
  String? accountIDEq;
  String? accountIDNotEq;
  String? accountIDGt;
  String? accountIDGte;
  String? accountIDLt;
  String? accountIDLte;
  List<String>? accountIDIn;
  List<String>? accountIDNotIn;
  String? accountIDContains;
  String? accountIDNotContains;
  String? accountIDContainsInsensitive;
  String? accountIDNotContainsInsensitive;
  String? accountIDStartsWith;
  String? accountIDNotStartsWith;
  String? accountIDEndsWith;
  String? accountIDNotEndsWith;

  //relay
  bool? relayIsNull;
  String? relayEq;
  String? relayNotEq;
  String? relayGt;
  String? relayGte;
  String? relayLt;
  String? relayLte;
  List<String>? relayIn;
  List<String>? relayNotIn;
  String? relayContains;
  String? relayNotContains;
  String? relayContainsInsensitive;
  String? relayNotContainsInsensitive;
  String? relayStartsWith;
  String? relayNotStartsWith;
  String? relayEndsWith;
  String? relayNotEndsWith;

  //public keys
  bool? publicKeyIsNull;
  String? publicKeyEq;
  String? publicKeyNotEq;
  String? publicKeyGt;
  String? publicKeyGte;
  String? publicKeyLt;
  String? publicKeyLte;
  List<String>? publicKeyIn;
  List<String>? publicKeyNotIn;
  String? publicKeyContains;
  String? publicKeyNotContains;
  String? publicKeyContainsInsensitive;
  String? publicKeyNotContainsInsensitive;
  String? publicKeyStartsWith;
  String? publicKeyNotStartsWith;
  String? publicKeyEndsWith;
  String? publicKeyNotEndsWith;

  TwinQueryWhereOptions({
    //ids
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

    //grid
    this.gridVersionisNull,
    this.gridVersionEq,
    this.gridVersionNotEq,
    this.gridVersionGt,
    this.gridVersionGte,
    this.gridVersionLt,
    this.gridVersionLte,
    this.gridVersionIn,
    this.gridVersionNotIn,

    //twins
    this.twinIDIsNull,
    this.twinIDEq,
    this.twinIDNotEq,
    this.twinIDGt,
    this.twinIDGte,
    this.twinIDLt,
    this.twinIDLte,
    this.twinIDIn,
    this.twinIDNotIn,

    //account
    this.accountIDIsNull,
    this.accountIDEq,
    this.accountIDNotEq,
    this.accountIDGt,
    this.accountIDGte,
    this.accountIDLt,
    this.accountIDLte,
    this.accountIDIn,
    this.accountIDNotIn,
    this.accountIDContains,
    this.accountIDNotContains,
    this.accountIDContainsInsensitive,
    this.accountIDNotContainsInsensitive,
    this.accountIDStartsWith,
    this.accountIDNotStartsWith,
    this.accountIDEndsWith,
    this.accountIDNotEndsWith,

    //relay
    this.relayIsNull,
    this.relayEq,
    this.relayNotEq,
    this.relayGt,
    this.relayGte,
    this.relayLt,
    this.relayLte,
    this.relayIn,
    this.relayNotIn,
    this.relayContains,
    this.relayNotContains,
    this.relayContainsInsensitive,
    this.relayNotContainsInsensitive,
    this.relayStartsWith,
    this.relayNotStartsWith,
    this.relayEndsWith,
    this.relayNotEndsWith,

    // public Key
    this.publicKeyIsNull,
    this.publicKeyEq,
    this.publicKeyNotEq,
    this.publicKeyGt,
    this.publicKeyGte,
    this.publicKeyLt,
    this.publicKeyLte,
    this.publicKeyIn,
    this.publicKeyNotIn,
    this.publicKeyContains,
    this.publicKeyNotContains,
    this.publicKeyContainsInsensitive,
    this.publicKeyNotContainsInsensitive,
    this.publicKeyStartsWith,
    this.publicKeyNotStartsWith,
    this.publicKeyEndsWith,
    this.publicKeyNotEndsWith,
  });

  @override
  String toString() {
    List<String> queryOptions = [];
    //ids
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

    //grid
    _addToQueryList(queryOptions, "gridVersion_isNull", gridVersionisNull);
    _addToQueryList(queryOptions, "gridVersion_eq", gridVersionEq);
    _addToQueryList(queryOptions, "gridVersion_not_eq", gridVersionNotEq);
    _addToQueryList(queryOptions, "gridVersion_gt", gridVersionGt);
    _addToQueryList(queryOptions, "gridVersion_gte", gridVersionGte);
    _addToQueryList(queryOptions, "gridVersion_lt", gridVersionLt);
    _addToQueryList(queryOptions, "gridVersion_lte", gridVersionLte);
    _addToQueryList(queryOptions, "gridVersion_in", gridVersionIn);
    _addToQueryList(queryOptions, "gridVersion_not_in", gridVersionNotIn);

    //twins
    _addToQueryList(queryOptions, "twinID_isNull", twinIDIsNull);
    _addToQueryList(queryOptions, "twinID_eq", twinIDEq);
    _addToQueryList(queryOptions, "twinID_not_eq", twinIDNotEq);
    _addToQueryList(queryOptions, "twinID_gt", twinIDGt);
    _addToQueryList(queryOptions, "twinID_gte", twinIDGte);
    _addToQueryList(queryOptions, "twinID_lt", twinIDLt);
    _addToQueryList(queryOptions, "twinID_lte", twinIDLte);
    _addToQueryList(queryOptions, "twinID_in", twinIDIn);
    _addToQueryList(queryOptions, "twinID_not_in", twinIDNotIn);

    //accounts
    _addToQueryList(queryOptions, "accountID_isNull", accountIDIsNull);
    _addToQueryList(queryOptions, "accountID_eq", accountIDEq);
    _addToQueryList(queryOptions, "accountID_not_eq", accountIDNotEq);
    _addToQueryList(queryOptions, "accountID_gt", accountIDGt);
    _addToQueryList(queryOptions, "accountID_gte", accountIDGte);
    _addToQueryList(queryOptions, "accountID_lt", accountIDLt);
    _addToQueryList(queryOptions, "accountID_lte", accountIDLte);
    _addToQueryList(queryOptions, "accountID_in", accountIDIn);
    _addToQueryList(queryOptions, "accountID_not_in", accountIDNotIn);
    _addToQueryList(queryOptions, "accountID_contains", accountIDContains);
    _addToQueryList(
        queryOptions, "accountID_not_contains", accountIDNotContains);
    _addToQueryList(queryOptions, "accountID_containsInsensitive",
        accountIDContainsInsensitive);
    _addToQueryList(queryOptions, "accountID_not_containsInsensitive",
        accountIDNotContainsInsensitive);
    _addToQueryList(queryOptions, "accountID_startsWith", accountIDStartsWith);
    _addToQueryList(
        queryOptions, "accountID_not_startsWith", accountIDNotStartsWith);
    _addToQueryList(queryOptions, "accountID_endsWith", accountIDEndsWith);
    _addToQueryList(
        queryOptions, "accountID_not_endsWith", accountIDNotEndsWith);

    //relay
    _addToQueryList(queryOptions, "relay_isNull", relayIsNull);
    _addToQueryList(queryOptions, "relay_eq", relayEq);
    _addToQueryList(queryOptions, "relay_not_eq", relayNotEq);
    _addToQueryList(queryOptions, "relay_gt", relayGt);
    _addToQueryList(queryOptions, "relay_gte", relayGte);
    _addToQueryList(queryOptions, "relay_lt", relayLt);
    _addToQueryList(queryOptions, "relay_lte", relayLte);
    _addToQueryList(queryOptions, "relay_in", relayIn);
    _addToQueryList(queryOptions, "relay_not_in", relayNotIn);
    _addToQueryList(queryOptions, "relay_contains", relayContains);
    _addToQueryList(queryOptions, "relay_not_contains", relayNotContains);
    _addToQueryList(
        queryOptions, "relay_containsInsensitive", relayContainsInsensitive);
    _addToQueryList(queryOptions, "relay_not_containsInsensitive",
        relayNotContainsInsensitive);
    _addToQueryList(queryOptions, "relay_startsWith", relayStartsWith);
    _addToQueryList(queryOptions, "relay_not_startsWith", relayNotStartsWith);
    _addToQueryList(queryOptions, "relay_endsWith", relayEndsWith);
    _addToQueryList(queryOptions, "relay_not_endsWith", relayNotEndsWith);

    // public key
    _addToQueryList(queryOptions, "publicKey_isNull", publicKeyIsNull);
    _addToQueryList(queryOptions, "publicKey_eq", publicKeyEq);
    _addToQueryList(queryOptions, "publicKey_not_eq", publicKeyNotEq);
    _addToQueryList(queryOptions, "publicKey_gt", publicKeyGt);
    _addToQueryList(queryOptions, "publicKey_gte", publicKeyGte);
    _addToQueryList(queryOptions, "publicKey_lt", publicKeyLt);
    _addToQueryList(queryOptions, "publicKey_lte", publicKeyLte);
    _addToQueryList(queryOptions, "publicKey_in", publicKeyIn);
    _addToQueryList(queryOptions, "publicKey_not_in", publicKeyNotIn);
    _addToQueryList(queryOptions, "publicKey_contains", publicKeyContains);
    _addToQueryList(
        queryOptions, "publicKey_not_contains", publicKeyNotContains);
    _addToQueryList(queryOptions, "publicKey_containsInsensitive",
        publicKeyContainsInsensitive);
    _addToQueryList(queryOptions, "publicKey_not_containsInsensitive",
        publicKeyNotContainsInsensitive);
    _addToQueryList(queryOptions, "publicKey_startsWith", publicKeyStartsWith);
    _addToQueryList(
        queryOptions, "publicKey_not_startsWith", publicKeyNotStartsWith);
    _addToQueryList(queryOptions, "publicKey_endsWith", publicKeyEndsWith);
    _addToQueryList(
        queryOptions, "publicKey_not_endsWith", publicKeyNotEndsWith);

    return queryOptions.isNotEmpty ? queryOptions.join(', ') : " ";
  }
}

class TwinQueryOptions {
  TwinOrderByOptions? orderby;
  int? limit;
  int? offset;
  TwinQueryWhereOptions? whereOptions;

  TwinQueryOptions({
    this.orderby,
    this.limit,
    this.offset,
    this.whereOptions,
  });
  @override
  String toString() {
    if ((whereOptions == null || whereOptions.toString() == " ") &&
        orderby == null &&
        limit == null &&
        offset == null) return "";
    List<String> queryString = [];
    if (whereOptions != null && whereOptions.toString() != " ") {
      queryString.add("where: {${whereOptions.toString()}}");
    }
    if (orderby != null) queryString.add("orderBy: $orderby");
    if (limit != null) queryString.add("limit: $limit");
    if (offset != null) queryString.add("offset: $offset");
    return queryString.isEmpty ? "" : "(${queryString.join(', ')})";
  }
}

class TwinConnectionsQueryOptions {
  TwinOrderByOptions orderby;
  int? first;
  int? after;
  TwinQueryWhereOptions? whereOptions;

  TwinConnectionsQueryOptions({
    this.orderby = TwinOrderByOptions.id_ASC,
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
    return queryString.isEmpty ? "" : "(${queryString.join(', ')})";
  }
}

@reflector
class TwinReturnOptions {
  bool id;
  bool accountID;
  bool gridVersion;
  bool publicKey;
  bool relay;
  bool twinID;

  TwinReturnOptions({
    this.id = false,
    this.accountID = false,
    this.gridVersion = false,
    this.publicKey = false,
    this.relay = false,
    this.twinID = false,
  });

  @override
  String toString() {
    String returnOptions = "";
    returnOptions = _addToReturnList(returnOptions, "id", id);
    returnOptions = _addToReturnList(returnOptions, "accountID", accountID);
    returnOptions = _addToReturnList(returnOptions, "gridVersion", gridVersion);
    returnOptions = _addToReturnList(returnOptions, "publicKey", publicKey);
    returnOptions = _addToReturnList(returnOptions, "relay", relay);
    returnOptions = _addToReturnList(returnOptions, "twinID", twinID);
    return returnOptions;
  }
}

@reflector
class TwinConnectionsEdgeReturnOptions {
  bool cursor;
  TwinReturnOptions? node;

  TwinConnectionsEdgeReturnOptions({
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
class TwinConnectionsReturnOptions {
  TwinConnectionsEdgeReturnOptions? edges;
  PageInfoReturnOptions? pageInfo;
  bool totalCount;

  TwinConnectionsReturnOptions({
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

@reflector
class TwinInfo {
  String? id;
  String? accountID;
  int? gridVersion;
  String? publicKey;
  String? relay;
  int? twinID;

  TwinInfo({
    this.id,
    this.accountID,
    this.gridVersion,
    this.publicKey,
    this.relay,
    this.twinID,
  });

  factory TwinInfo.fromJson(Map<String, dynamic> json) {
    return fromJson(json);
  }

  @override
  String toString() {
    return generateToString(this);
  }
}

class TwinConnectionsEdgeInfo {
  String? cursor;
  TwinInfo? node;

  TwinConnectionsEdgeInfo({
    this.cursor,
    this.node,
  });

  factory TwinConnectionsEdgeInfo.fromJson(Map<String, dynamic> json) {
    return TwinConnectionsEdgeInfo(
      cursor: json['cursor'] ?? '',
      node: json['node'] != null
          ? TwinInfo.fromJson(json['node'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  String toString() {
    return generateToString(this);
  }
}

class TwinConnectionsInfo {
  List<TwinConnectionsEdgeInfo>? edges;
  PageInfo? pageInfo;
  int? totalCount;

  TwinConnectionsInfo({
    this.edges,
    this.pageInfo,
    this.totalCount,
  });

  factory TwinConnectionsInfo.fromJson(Map<String, dynamic> json) {
    return TwinConnectionsInfo(
      edges: json['edges'] != null
          ? (json['edges'] as List)
              .map((i) =>
                  TwinConnectionsEdgeInfo.fromJson(i as Map<String, dynamic>))
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
