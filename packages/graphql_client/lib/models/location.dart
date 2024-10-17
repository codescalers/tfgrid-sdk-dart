part of '../models.dart';

@reflector
class LocationReturnOptions {
  bool id;
  bool longitude;
  bool latitude;

  LocationReturnOptions({
    this.id = false,
    this.longitude = false,
    this.latitude = false,
  });
  @override
  String toString() {
    return generateToString(this);
  }
}

@reflector
class Location {
  String? id;
  String? longitude;
  String? latitude;

  Location({
    this.id,
    this.longitude,
    this.latitude,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return fromJson(json);
  }

  @override
  String toString() {
    return generateToString(this);
  }
}

class LocationWhereOptions {
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

  //longitude
  bool? longitudeIsNull;
  String? longitudeEq;
  String? longitudeNotEq;
  String? longitudeGt;
  String? longitudeGte;
  String? longitudeLt;
  String? longitudeLte;
  List<String>? longitudeIn;
  List<String>? longitudeNotIn;
  String? longitudeContains;
  String? longitudeNotContains;
  String? longitudeContainsInsensitive;
  String? longitudeNotContainsInsensitive;
  String? longitudeStartsWith;
  String? longitudeNotStartsWith;
  String? longitudeEndsWith;
  String? longitudeNotEndsWith;

  //latitude
  bool? latitudeIsNull;
  String? latitudeEq;
  String? latitudeNotEq;
  String? latitudeGt;
  String? latitudeGte;
  String? latitudeLt;
  String? latitudeLte;
  List<String>? latitudeIn;
  List<String>? latitudeNotIn;
  String? latitudeContains;
  String? latitudeNotContains;
  String? latitudeContainsInsensitive;
  String? latitudeNotContainsInsensitive;
  String? latitudeStartsWith;
  String? latitudeNotStartsWith;
  String? latitudeEndsWith;
  String? latitudeNotEndsWith;

  LocationWhereOptions({
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

    //longitude
    this.longitudeIsNull,
    this.longitudeEq,
    this.longitudeNotEq,
    this.longitudeGt,
    this.longitudeGte,
    this.longitudeLt,
    this.longitudeLte,
    this.longitudeIn,
    this.longitudeNotIn,
    this.longitudeContains,
    this.longitudeNotContains,
    this.longitudeContainsInsensitive,
    this.longitudeNotContainsInsensitive,
    this.longitudeStartsWith,
    this.longitudeNotStartsWith,
    this.longitudeEndsWith,
    this.longitudeNotEndsWith,

    //latitude
    this.latitudeIsNull,
    this.latitudeEq,
    this.latitudeNotEq,
    this.latitudeGt,
    this.latitudeGte,
    this.latitudeLt,
    this.latitudeLte,
    this.latitudeIn,
    this.latitudeNotIn,
    this.latitudeContains,
    this.latitudeNotContains,
    this.latitudeContainsInsensitive,
    this.latitudeNotContainsInsensitive,
    this.latitudeStartsWith,
    this.latitudeNotStartsWith,
    this.latitudeEndsWith,
    this.latitudeNotEndsWith,
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

    //longitude
    _addToQueryList(queryOptions, "longitude_isNull", longitudeIsNull);
    _addToQueryList(queryOptions, "longitude_eq", longitudeEq);
    _addToQueryList(queryOptions, "longitude_not_eq", longitudeNotEq);
    _addToQueryList(queryOptions, "longitude_gt", longitudeGt);
    _addToQueryList(queryOptions, "longitude_gte", longitudeGte);
    _addToQueryList(queryOptions, "longitude_lt", longitudeLt);
    _addToQueryList(queryOptions, "longitude_lte", longitudeLte);
    _addToQueryList(queryOptions, "longitude_in", longitudeIn);
    _addToQueryList(queryOptions, "longitude_not_in", longitudeNotIn);
    _addToQueryList(queryOptions, "longitude_contains", longitudeContains);
    _addToQueryList(
        queryOptions, "longitude_not_contains", longitudeNotContains);
    _addToQueryList(queryOptions, "longitude_containsInsensitive",
        longitudeContainsInsensitive);
    _addToQueryList(queryOptions, "longitude_not_containsInsensitive",
        longitudeNotContainsInsensitive);
    _addToQueryList(queryOptions, "longitude_startsWith", longitudeStartsWith);
    _addToQueryList(
        queryOptions, "longitude_not_startsWith", longitudeNotStartsWith);
    _addToQueryList(queryOptions, "longitude_endsWith", longitudeEndsWith);
    _addToQueryList(
        queryOptions, "longitude_not_endsWith", longitudeNotEndsWith);

    //latitude
    _addToQueryList(queryOptions, "latitude_isNull", latitudeIsNull);
    _addToQueryList(queryOptions, "latitude_eq", latitudeEq);
    _addToQueryList(queryOptions, "latitude_not_eq", latitudeNotEq);
    _addToQueryList(queryOptions, "latitude_gt", latitudeGt);
    _addToQueryList(queryOptions, "latitude_gte", latitudeGte);
    _addToQueryList(queryOptions, "latitude_lt", latitudeLt);
    _addToQueryList(queryOptions, "latitude_lte", latitudeLte);
    _addToQueryList(queryOptions, "latitude_in", latitudeIn);
    _addToQueryList(queryOptions, "latitude_not_in", latitudeNotIn);
    _addToQueryList(queryOptions, "latitude_contains", latitudeContains);
    _addToQueryList(queryOptions, "latitude_not_contains", latitudeNotContains);
    _addToQueryList(queryOptions, "latitude_containsInsensitive",
        latitudeContainsInsensitive);
    _addToQueryList(queryOptions, "latitude_not_containsInsensitive",
        latitudeNotContainsInsensitive);
    _addToQueryList(queryOptions, "latitude_startsWith", latitudeStartsWith);
    _addToQueryList(
        queryOptions, "latitude_not_startsWith", latitudeNotStartsWith);
    _addToQueryList(queryOptions, "latitude_endsWith", latitudeEndsWith);
    _addToQueryList(queryOptions, "latitude_not_endsWith", latitudeNotEndsWith);

    return queryOptions.isNotEmpty ? queryOptions.join(', ') : " ";
  }
}
