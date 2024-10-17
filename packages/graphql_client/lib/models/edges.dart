part of '../models.dart';

@reflector
class EdgesInfo {
  String cursor;
  NodeInfo? node;

  EdgesInfo({
    required this.cursor,
    this.node,
  });

  factory EdgesInfo.fromJson(Map<String, dynamic> json) {
    return EdgesInfo(
      cursor: json['cursor'],
      node: json['node'] != null ? NodeInfo.fromJson(json['node']) : null,
    );
  }

  @override
  String toString() {
    return generateToString(this);
  }
}

@reflector
class EdgesReturnOptions {
  NodeReturnOptions? nodeReturnOptions;

  EdgesReturnOptions({
    this.nodeReturnOptions,
  });

  @override
  String toString() {
    String returnOptions = "cursor \n";
    returnOptions =
        _addToReturnList(returnOptions, "node {", nodeReturnOptions != null);
    returnOptions = _addToReturnList(
        returnOptions, nodeReturnOptions.toString(), nodeReturnOptions != null);
    returnOptions =
        _addToReturnList(returnOptions, "}", nodeReturnOptions != null);
    return returnOptions;
  }
}
