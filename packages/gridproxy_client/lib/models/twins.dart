// ignore_for_file: constant_identifier_names

import 'package:gridproxy_client/models/reflector.dart';
import 'package:gridproxy_client/models/sort_order.dart';
import 'package:gridproxy_client/src/query_builder.dart';

enum TwinSortBy {
  relay,
  public_key,
  account_id,
  twin_id;

  @override
  String toString() {
    return name;
  }
}

@reflector
class TwinsQueryParams {
  int? page;
  int? size;
  bool? ret_count;
  bool? randomize;
  TwinSortBy? sort_by;
  sortOrder? sort_order;
  int? twin_id;
  String? account_id;
  String? relay;
  String? public_key;

  TwinsQueryParams({
    this.page,
    this.size,
    this.ret_count,
    this.randomize,
    this.sort_by,
    this.sort_order,
    this.twin_id,
    this.account_id,
    this.relay,
    this.public_key,
  });

  Map<String, dynamic> toJson() {
    return toMap(this);
  }
}

@reflector
class TwinsInfo {
  String accountId;
  String publicKey;
  String relay;
  int twinId;

  TwinsInfo({
    required this.accountId,
    required this.publicKey,
    required this.relay,
    required this.twinId,
  });

  factory TwinsInfo.fromJson(Map<String, dynamic> json) {
    return fromJson(json);
  }

  Map<String, dynamic> toJson() {
    return toMap(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

@reflector
class TwinConsumption {
  double last_hour_consumption;
  double overall_consumption;

  TwinConsumption({
    required this.last_hour_consumption,
    required this.overall_consumption,
  });

  factory TwinConsumption.fromJson(Map<String, dynamic> json) {
    return fromJson(json);
  }

  Map<String, dynamic> toJson() {
    return toMap(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
