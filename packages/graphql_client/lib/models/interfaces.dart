part of '../models.dart';

class Interfaces {
  String? id;
  Node? node;
  String? name;
  String? mac;
  String? ips;

  Interfaces({
    this.id,
    this.node,
    this.name,
    this.mac,
    this.ips,
  });

  factory Interfaces.fromJson(Map<String, dynamic> json) {
    return Interfaces(
      id: json['id'] ?? "",
      node: json['node'] != null
          ? Node.fromJson(json['node'] as Map<String, dynamic>)
          : null,
      name: json['name'] ?? "",
      mac: json['mac'] ?? "",
      ips: json['ips'] ?? "",
    );
  }

  @override
  String toString() {
    return 'Interfaces(id: $id, node: $node, name: $name, mac: $mac, ips: $ips)';
  }
}

@reflector
class InterfacesReturnOptions {
  bool id;
  NodesReturnOptions? node;
  bool name;
  bool mac;
  bool ips;

  InterfacesReturnOptions({
    this.id = false,
    this.node,
    this.name = false,
    this.mac = false,
    this.ips = false,
  });

  @override
  String toString() {
    String returnOptions = "";
    returnOptions = _addToReturnList(returnOptions, "id", id);
    returnOptions = _addToReturnList(returnOptions, "name", name);
    returnOptions = _addToReturnList(returnOptions, "mac", mac);
    returnOptions = _addToReturnList(returnOptions, "ips", ips);
    returnOptions = _addToReturnList(returnOptions, "node {", node != null);
    returnOptions =
        _addToReturnList(returnOptions, node.toString(), node != null);
    returnOptions = _addToReturnList(returnOptions, "} ", node != null);
    return returnOptions;
  }
}

class InterfaceWhereOptions {
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

  //name
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

  //mac
  bool? macIsNull;
  String? macEq;
  String? macNotEq;
  String? macGt;
  String? macGte;
  String? macLt;
  String? macLte;
  List<String>? macIn;
  List<String>? macNotIn;
  String? macContains;
  String? macNotContains;
  String? macContainsInsensitive;
  String? macNotContainsInsensitive;
  String? macStartsWith;
  String? macNotStartsWith;
  String? macEndsWith;
  String? macNotEndsWith;

  //ips
  bool? ipsIsNull;
  String? ipsEq;
  String? ipsNotEq;
  String? ipsGt;
  String? ipsGte;
  String? ipsLt;
  String? ipsLte;
  List<String>? ipsIn;
  List<String>? ipsNotIn;
  String? ipsContains;
  String? ipsNotContains;
  String? ipsContainsInsensitive;
  String? ipsNotContainsInsensitive;
  String? ipsStartsWith;
  String? ipsNotStartsWith;
  String? ipsEndsWith;
  String? ipsNotEndsWith;

  InterfaceWhereOptions({
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

    //name
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

    //mac
    this.macIsNull,
    this.macEq,
    this.macNotEq,
    this.macGt,
    this.macGte,
    this.macLt,
    this.macLte,
    this.macIn,
    this.macNotIn,
    this.macContains,
    this.macNotContains,
    this.macContainsInsensitive,
    this.macNotContainsInsensitive,
    this.macStartsWith,
    this.macNotStartsWith,
    this.macEndsWith,
    this.macNotEndsWith,

    //ips
    this.ipsIsNull,
    this.ipsEq,
    this.ipsNotEq,
    this.ipsGt,
    this.ipsGte,
    this.ipsLt,
    this.ipsLte,
    this.ipsIn,
    this.ipsNotIn,
    this.ipsContains,
    this.ipsNotContains,
    this.ipsContainsInsensitive,
    this.ipsNotContainsInsensitive,
    this.ipsStartsWith,
    this.ipsNotStartsWith,
    this.ipsEndsWith,
    this.ipsNotEndsWith,
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

    //name
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

    //mac
    _addToQueryList(queryOptions, "mac_isNull", macIsNull);
    _addToQueryList(queryOptions, "mac_eq", macEq);
    _addToQueryList(queryOptions, "mac_not_eq", macNotEq);
    _addToQueryList(queryOptions, "mac_gt", macGt);
    _addToQueryList(queryOptions, "mac_gte", macGte);
    _addToQueryList(queryOptions, "mac_lt", macLt);
    _addToQueryList(queryOptions, "mac_lte", macLte);
    _addToQueryList(queryOptions, "mac_in", macIn);
    _addToQueryList(queryOptions, "mac_not_in", macNotIn);
    _addToQueryList(queryOptions, "mac_contains", macContains);
    _addToQueryList(queryOptions, "mac_not_contains", macNotContains);
    _addToQueryList(
        queryOptions, "mac_containsInsensitive", macContainsInsensitive);
    _addToQueryList(
        queryOptions, "mac_not_containsInsensitive", macNotContainsInsensitive);
    _addToQueryList(queryOptions, "mac_startsWith", macStartsWith);
    _addToQueryList(queryOptions, "mac_not_startsWith", macNotStartsWith);
    _addToQueryList(queryOptions, "mac_endsWith", macEndsWith);
    _addToQueryList(queryOptions, "mac_not_endsWith", macNotEndsWith);

    //ips
    _addToQueryList(queryOptions, "ips_isNull", ipsIsNull);
    _addToQueryList(queryOptions, "ips_eq", ipsEq);
    _addToQueryList(queryOptions, "ips_not_eq", ipsNotEq);
    _addToQueryList(queryOptions, "ips_gt", ipsGt);
    _addToQueryList(queryOptions, "ips_gte", ipsGte);
    _addToQueryList(queryOptions, "ips_lt", ipsLt);
    _addToQueryList(queryOptions, "ips_lte", ipsLte);
    _addToQueryList(queryOptions, "ips_in", ipsIn);
    _addToQueryList(queryOptions, "ips_not_in", ipsNotIn);
    _addToQueryList(queryOptions, "ips_contains", ipsContains);
    _addToQueryList(queryOptions, "ips_not_contains", ipsNotContains);
    _addToQueryList(
        queryOptions, "ips_containsInsensitive", ipsContainsInsensitive);
    _addToQueryList(
        queryOptions, "ips_not_containsInsensitive", ipsNotContainsInsensitive);
    _addToQueryList(queryOptions, "ips_startsWith", ipsStartsWith);
    _addToQueryList(queryOptions, "ips_not_startsWith", ipsNotStartsWith);
    _addToQueryList(queryOptions, "ips_endsWith", ipsEndsWith);
    _addToQueryList(queryOptions, "ips_not_endsWith", ipsNotEndsWith);

    return queryOptions.isNotEmpty ? queryOptions.join(', ') : " ";
  }
}
