part of '../models.dart';

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
    return PageInfo(
      startCursor: json['startCursor'] ?? "",
      endCursor: json['endCursor'] ?? "",
      hasNextPage: json['hasNextPage'] ?? false,
      hasPreviousPage: json['hasPreviousPage'] ?? false,
    );
  }

  @override
  String toString() {
    return 'PageInfo{startCursor: $startCursor, endCursor: $endCursor, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage}';
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
    String returnOptions = "";
    returnOptions = _addToReturnList(returnOptions, "endCursor", endCursor);
    returnOptions = _addToReturnList(returnOptions, "hasNextPage", hasNextPage);
    returnOptions =
        _addToReturnList(returnOptions, "hasPreviousPage", hasPreviousPage);
    returnOptions = _addToReturnList(returnOptions, "startCursor", startCursor);
    if (returnOptions != "") {
      returnOptions = "pageInfo { \n $returnOptions } \n";
    }
    return returnOptions;
  }
}
