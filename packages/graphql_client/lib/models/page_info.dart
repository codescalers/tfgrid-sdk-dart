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
