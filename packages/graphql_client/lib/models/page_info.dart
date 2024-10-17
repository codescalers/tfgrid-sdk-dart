part of '../models.dart';

@reflector
class PageInfo {
  String? startCursor;
  String? endCursor;
  bool? hasNextPage;
  bool? hasPreviousPage;

  PageInfo({
    this.startCursor,
    this.endCursor,
    this.hasNextPage,
    this.hasPreviousPage,
  });

  factory PageInfo.fromJson(Map<String, dynamic> json) {
    return fromJson(json);
  }

  @override
  String toString() {
    return generateToString(this);
  }
}

@reflector
class PageInfoReturnOptions {
  bool endCursor;
  bool hasNextPage;
  bool hasPreviousPage;
  bool startCursor;

  PageInfoReturnOptions({
    this.endCursor = false,
    this.hasNextPage = false,
    this.hasPreviousPage = false,
    this.startCursor = false,
  });

  @override
  String toString() {
    return generateToString(this);
  }
}
