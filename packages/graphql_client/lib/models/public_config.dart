part of '../models.dart';

@reflector
class PublicConfigReturnOptions {
  bool id;
  NodesReturnOptions? node;
  bool ipv4;
  bool ipv6;
  bool gw4;
  bool gw6;
  bool domain;

  PublicConfigReturnOptions({
    this.id = false,
    this.node,
    this.ipv4 = false,
    this.ipv6 = false,
    this.gw4 = false,
    this.gw6 = false,
    this.domain = false,
  });
  @override
  String toString() {
    String returnOptions = "";
    returnOptions = _addToReturnList(returnOptions, "id", id);
    returnOptions = _addToReturnList(returnOptions, "ipv4", ipv4);
    returnOptions = _addToReturnList(returnOptions, "ipv6", ipv6);
    returnOptions = _addToReturnList(returnOptions, "gw4", gw4);
    returnOptions = _addToReturnList(returnOptions, "gw6", gw6);
    returnOptions = _addToReturnList(returnOptions, "domain", domain);
    returnOptions = _addToReturnList(returnOptions, "node {", node != null);
    returnOptions =
        _addToReturnList(returnOptions, node.toString(), node != null);
    returnOptions = _addToReturnList(returnOptions, "} ", node != null);
    return returnOptions;
  }
}

class PublicConfig {
  String? id;
  Node? node;
  String? ipv4;
  String? ipv6;
  String? gw4;
  String? gw6;
  String? domain;

  PublicConfig({
    this.id,
    this.node,
    this.ipv4,
    this.ipv6,
    this.gw4,
    this.gw6,
    this.domain,
  });

  factory PublicConfig.fromJson(Map<String, dynamic> json) {
    return PublicConfig(
      id: json['id'] ?? "",
      node: json['node'] != null
          ? Node.fromJson(json['node'] as Map<String, dynamic>)
          : null,
      ipv4: json['ipv4'] ?? "",
      ipv6: json['ipv6'] ?? "",
      gw4: json['gw4'] ?? "",
      gw6: json['gw6'] ?? "",
      domain: json['domain'] ?? "",
    );
  }

  @override
  String toString() {
    return 'PublicConfig(id: $id, node: $node, ipv4: ${ipv4 ?? "N/A"}, ipv6: $ipv6, gw4: $gw4, gw6: $gw6, domain: $domain)';
  }
}

class PublicConfigWhereOptions {
  //ids
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

  //ipv4
  bool? ipv4IsNull;
  String? ipv4Eq;
  String? ipv4NotEq;
  String? ipv4Gt;
  String? ipv4Gte;
  String? ipv4Lt;
  String? ipv4Lte;
  List<String>? ipv4In;
  List<String>? ipv4NotIn;
  String? ipv4Contains;
  String? ipv4NotContains;
  String? ipv4ContainsInsensitive;
  String? ipv4NotContainsInsensitive;
  String? ipv4StartsWith;
  String? ipv4NotStartsWith;
  String? ipv4EndsWith;
  String? ipv4NotEndsWith;

  //ipv6
  bool? ipv6IsNull;
  String? ipv6Eq;
  String? ipv6NotEq;
  String? ipv6Gt;
  String? ipv6Gte;
  String? ipv6Lt;
  String? ipv6Lte;
  List<String>? ipv6In;
  List<String>? ipv6NotIn;
  String? ipv6Contains;
  String? ipv6NotContains;
  String? ipv6ContainsInsensitive;
  String? ipv6NotContainsInsensitive;
  String? ipv6StartsWith;
  String? ipv6NotStartsWith;
  String? ipv6EndsWith;
  String? ipv6NotEndsWith;

  //gw4
  bool? gw4IsNull;
  String? gw4Eq;
  String? gw4NotEq;
  String? gw4Gt;
  String? gw4Gte;
  String? gw4Lt;
  String? gw4Lte;
  List<String>? gw4In;
  List<String>? gw4NotIn;
  String? gw4Contains;
  String? gw4NotContains;
  String? gw4ContainsInsensitive;
  String? gw4NotContainsInsensitive;
  String? gw4StartsWith;
  String? gw4NotStartsWith;
  String? gw4EndsWith;
  String? gw4NotEndsWith;

  //gw6
  bool? gw6IsNull;
  String? gw6Eq;
  String? gw6NotEq;
  String? gw6Gt;
  String? gw6Gte;
  String? gw6Lt;
  String? gw6Lte;
  List<String>? gw6In;
  List<String>? gw6NotIn;
  String? gw6Contains;
  String? gw6NotContains;
  String? gw6ContainsInsensitive;
  String? gw6NotContainsInsensitive;
  String? gw6StartsWith;
  String? gw6NotStartsWith;
  String? gw6EndsWith;
  String? gw6NotEndsWith;

  //domain
  bool? domainIsNull;
  String? domainEq;
  String? domainNotEq;
  String? domainGt;
  String? domainGte;
  String? domainLt;
  String? domainLte;
  List<String>? domainIn;
  List<String>? domainNotIn;
  String? domainContains;
  String? domainNotContains;
  String? domainContainsInsensitive;
  String? domainNotContainsInsensitive;
  String? domainStartsWith;
  String? domainNotStartsWith;
  String? domainEndsWith;
  String? domainNotEndsWith;

  PublicConfigWhereOptions({
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

    //node
    this.nodeIsNull,
    this.node,

    //ipv4
    this.ipv4IsNull,
    this.ipv4Eq,
    this.ipv4NotEq,
    this.ipv4Gt,
    this.ipv4Gte,
    this.ipv4Lt,
    this.ipv4Lte,
    this.ipv4In,
    this.ipv4NotIn,
    this.ipv4Contains,
    this.ipv4NotContains,
    this.ipv4ContainsInsensitive,
    this.ipv4NotContainsInsensitive,
    this.ipv4StartsWith,
    this.ipv4NotStartsWith,
    this.ipv4EndsWith,
    this.ipv4NotEndsWith,

    //ipv6
    this.ipv6IsNull,
    this.ipv6Eq,
    this.ipv6NotEq,
    this.ipv6Gt,
    this.ipv6Gte,
    this.ipv6Lt,
    this.ipv6Lte,
    this.ipv6In,
    this.ipv6NotIn,
    this.ipv6Contains,
    this.ipv6NotContains,
    this.ipv6ContainsInsensitive,
    this.ipv6NotContainsInsensitive,
    this.ipv6StartsWith,
    this.ipv6NotStartsWith,
    this.ipv6EndsWith,
    this.ipv6NotEndsWith,

    //gw4
    this.gw4IsNull,
    this.gw4Eq,
    this.gw4NotEq,
    this.gw4Gt,
    this.gw4Gte,
    this.gw4Lt,
    this.gw4Lte,
    this.gw4In,
    this.gw4NotIn,
    this.gw4Contains,
    this.gw4NotContains,
    this.gw4ContainsInsensitive,
    this.gw4NotContainsInsensitive,
    this.gw4StartsWith,
    this.gw4NotStartsWith,
    this.gw4EndsWith,
    this.gw4NotEndsWith,

    //gw6
    this.gw6IsNull,
    this.gw6Eq,
    this.gw6NotEq,
    this.gw6Gt,
    this.gw6Gte,
    this.gw6Lt,
    this.gw6Lte,
    this.gw6In,
    this.gw6NotIn,
    this.gw6Contains,
    this.gw6NotContains,
    this.gw6ContainsInsensitive,
    this.gw6NotContainsInsensitive,
    this.gw6StartsWith,
    this.gw6NotStartsWith,
    this.gw6EndsWith,
    this.gw6NotEndsWith,

    //domain
    this.domainIsNull,
    this.domainEq,
    this.domainNotEq,
    this.domainGt,
    this.domainGte,
    this.domainLt,
    this.domainLte,
    this.domainIn,
    this.domainNotIn,
    this.domainContains,
    this.domainNotContains,
    this.domainContainsInsensitive,
    this.domainNotContainsInsensitive,
    this.domainStartsWith,
    this.domainNotStartsWith,
    this.domainEndsWith,
    this.domainNotEndsWith,
  });

  @override
  String toString() {
    List<String> queryOptions = [];

    // id
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

    //ipv4
    _addToQueryList(queryOptions, "ipv4_isNull", ipv4IsNull);
    _addToQueryList(queryOptions, "ipv4_eq", ipv4Eq);
    _addToQueryList(queryOptions, "ipv4_not_eq", ipv4NotEq);
    _addToQueryList(queryOptions, "ipv4_gt", ipv4Gt);
    _addToQueryList(queryOptions, "ipv4_gte", ipv4Gte);
    _addToQueryList(queryOptions, "ipv4_lt", ipv4Lt);
    _addToQueryList(queryOptions, "ipv4_lte", ipv4Lte);
    _addToQueryList(queryOptions, "ipv4_in", ipv4In);
    _addToQueryList(queryOptions, "ipv4_not_in", ipv4NotIn);
    _addToQueryList(queryOptions, "ipv4_contains", ipv4Contains);
    _addToQueryList(queryOptions, "ipv4_not_contains", ipv4NotContains);
    _addToQueryList(
        queryOptions, "ipv4_containsInsensitive", ipv4ContainsInsensitive);
    _addToQueryList(queryOptions, "ipv4_not_containsInsensitive",
        ipv4NotContainsInsensitive);
    _addToQueryList(queryOptions, "ipv4_startsWith", ipv4StartsWith);
    _addToQueryList(queryOptions, "ipv4_not_startsWith", ipv4NotStartsWith);
    _addToQueryList(queryOptions, "ipv4_endsWith", ipv4EndsWith);
    _addToQueryList(queryOptions, "ipv4_not_endsWith", ipv4NotEndsWith);

    //ipv6
    _addToQueryList(queryOptions, "ipv6_isNull", ipv6IsNull);
    _addToQueryList(queryOptions, "ipv6_eq", ipv6Eq);
    _addToQueryList(queryOptions, "ipv6_not_eq", ipv6NotEq);
    _addToQueryList(queryOptions, "ipv6_gt", ipv6Gt);
    _addToQueryList(queryOptions, "ipv6_gte", ipv6Gte);
    _addToQueryList(queryOptions, "ipv6_lt", ipv6Lt);
    _addToQueryList(queryOptions, "ipv6_lte", ipv6Lte);
    _addToQueryList(queryOptions, "ipv6_in", ipv6In);
    _addToQueryList(queryOptions, "ipv6_not_in", ipv6NotIn);
    _addToQueryList(queryOptions, "ipv6_contains", ipv6Contains);
    _addToQueryList(queryOptions, "ipv6_not_contains", ipv6NotContains);
    _addToQueryList(
        queryOptions, "ipv6_containsInsensitive", ipv6ContainsInsensitive);
    _addToQueryList(queryOptions, "ipv6_not_containsInsensitive",
        ipv6NotContainsInsensitive);
    _addToQueryList(queryOptions, "ipv6_startsWith", ipv6StartsWith);
    _addToQueryList(queryOptions, "ipv6_not_startsWith", ipv6NotStartsWith);
    _addToQueryList(queryOptions, "ipv6_endsWith", ipv6EndsWith);
    _addToQueryList(queryOptions, "ipv6_not_endsWith", ipv6NotEndsWith);

    //gw4
    _addToQueryList(queryOptions, "gw4_isNull", gw4IsNull);
    _addToQueryList(queryOptions, "gw4_eq", gw4Eq);
    _addToQueryList(queryOptions, "gw4_not_eq", gw4NotEq);
    _addToQueryList(queryOptions, "gw4_gt", gw4Gt);
    _addToQueryList(queryOptions, "gw4_gte", gw4Gte);
    _addToQueryList(queryOptions, "gw4_lt", gw4Lt);
    _addToQueryList(queryOptions, "gw4_lte", gw4Lte);
    _addToQueryList(queryOptions, "gw4_in", gw4In);
    _addToQueryList(queryOptions, "gw4_not_in", gw4NotIn);
    _addToQueryList(queryOptions, "gw4_contains", gw4Contains);
    _addToQueryList(queryOptions, "gw4_not_contains", gw4NotContains);
    _addToQueryList(
        queryOptions, "gw4_containsInsensitive", gw4ContainsInsensitive);
    _addToQueryList(
        queryOptions, "gw4_not_containsInsensitive", gw4NotContainsInsensitive);
    _addToQueryList(queryOptions, "gw4_startsWith", gw4StartsWith);
    _addToQueryList(queryOptions, "gw4_not_startsWith", gw4NotStartsWith);
    _addToQueryList(queryOptions, "gw4_endsWith", gw4EndsWith);
    _addToQueryList(queryOptions, "gw4_not_endsWith", gw4NotEndsWith);

    //gw6
    _addToQueryList(queryOptions, "gw6_isNull", gw6IsNull);
    _addToQueryList(queryOptions, "gw6_eq", gw6Eq);
    _addToQueryList(queryOptions, "gw6_not_eq", gw6NotEq);
    _addToQueryList(queryOptions, "gw6_gt", gw6Gt);
    _addToQueryList(queryOptions, "gw6_gte", gw6Gte);
    _addToQueryList(queryOptions, "gw6_lt", gw6Lt);
    _addToQueryList(queryOptions, "gw6_lte", gw6Lte);
    _addToQueryList(queryOptions, "gw6_in", gw6In);
    _addToQueryList(queryOptions, "gw6_not_in", gw6NotIn);
    _addToQueryList(queryOptions, "gw6_contains", gw6Contains);
    _addToQueryList(queryOptions, "gw6_not_contains", gw6NotContains);
    _addToQueryList(
        queryOptions, "gw6_containsInsensitive", gw6ContainsInsensitive);
    _addToQueryList(
        queryOptions, "gw6_not_containsInsensitive", gw6NotContainsInsensitive);
    _addToQueryList(queryOptions, "gw6_startsWith", gw6StartsWith);
    _addToQueryList(queryOptions, "gw6_not_startsWith", gw6NotStartsWith);
    _addToQueryList(queryOptions, "gw6_endsWith", gw6EndsWith);
    _addToQueryList(queryOptions, "gw6_not_endsWith", gw6NotEndsWith);

    //domain
    _addToQueryList(queryOptions, "domain_isNull", domainIsNull);
    _addToQueryList(queryOptions, "domain_eq", domainEq);
    _addToQueryList(queryOptions, "domain_not_eq", domainNotEq);
    _addToQueryList(queryOptions, "domain_gt", domainGt);
    _addToQueryList(queryOptions, "domain_gte", domainGte);
    _addToQueryList(queryOptions, "domain_lt", domainLt);
    _addToQueryList(queryOptions, "domain_lte", domainLte);
    _addToQueryList(queryOptions, "domain_in", domainIn);
    _addToQueryList(queryOptions, "domain_not_in", domainNotIn);
    _addToQueryList(queryOptions, "domain_contains", domainContains);
    _addToQueryList(queryOptions, "domain_not_contains", domainNotContains);
    _addToQueryList(
        queryOptions, "domain_containsInsensitive", domainContainsInsensitive);
    _addToQueryList(queryOptions, "domain_not_containsInsensitive",
        domainNotContainsInsensitive);
    _addToQueryList(queryOptions, "domain_startsWith", domainStartsWith);
    _addToQueryList(queryOptions, "domain_not_startsWith", domainNotStartsWith);
    _addToQueryList(queryOptions, "domain_endsWith", domainEndsWith);
    _addToQueryList(queryOptions, "domain_not_endsWith", domainNotEndsWith);

    return queryOptions.isNotEmpty ? queryOptions.join(', ') : " ";
  }
}
