part of '../models.dart';

@reflector
class PublicIpsInfo {
  String? id;
  String? contractId;
  String? ip;
  String? gateway;

  PublicIpsInfo({
    this.id,
    this.contractId,
    this.ip,
    this.gateway,
  });

  factory PublicIpsInfo.fromJson(Map<String, dynamic> json) {
    return fromJson(json);
  }

  @override
  String toString() {
    return generateToString(this);
  }
}

@reflector
class PublicIpsReturnOptions {
  bool contractId;
  bool ip;
  bool gateway;
  bool id;

  PublicIpsReturnOptions({
    this.id = false,
    this.contractId = false,
    this.ip = false,
    this.gateway = false,
  });

  @override
  String toString() {
    return generateToString(this);
  }
}

class PublicIpsQueryOptions {}
