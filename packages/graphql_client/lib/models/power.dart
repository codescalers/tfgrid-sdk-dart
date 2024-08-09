// ignore_for_file: constant_identifier_names

part of '../models.dart';

enum PowerState {
  Up,
  Down;

  @override
  String toString() {
    return name;
  }
}

enum Power {
  Up,
  Down;

  @override
  String toString() {
    return name;
  }
}

Power powerFromJson(String jsonString) {
  switch (jsonString) {
    case 'Up':
      return Power.Up;
    case 'Down':
    default:
      return Power.Down;
  }
}

PowerState powerStateFromJson(String jsonString) {
  switch (jsonString) {
    case 'Up':
      return PowerState.Up;
    case 'Down':
    default:
      return PowerState.Down;
  }
}

@reflector
class NodePowerReturnOptions {
  bool state;
  bool target;

  NodePowerReturnOptions({
    this.state = false,
    this.target = false,
  });
  @override
  String toString() {
    String returnOptions = "";
    returnOptions = _addToReturnList(returnOptions, "state", state);
    returnOptions = _addToReturnList(returnOptions, "target", target);
    if (returnOptions != "") returnOptions = "power { \n $returnOptions } \n";
    return returnOptions;
  }
}

class NodePower {
  PowerState? state;
  Power? target;

  NodePower({
    this.state,
    this.target,
  });

  factory NodePower.fromJson(Map<String, dynamic> json) {
    return NodePower(
      state: json['state'] != null ? powerStateFromJson(json['state']) : null,
      target: json['target'] != null ? powerFromJson(json['target']) : null,
    );
  }

  @override
  String toString() {
    return 'NodePower(state: $state, target: $target)';
  }
}

class PowerWhereOptions {
  //state
  bool? stateIsNull;
  PowerState? stateEq;
  PowerState? stateNotEq;
  List<PowerState>? stateIn;
  List<PowerState>? stateNotIn;

  //target
  bool? targetIsNull;
  Power? targetEq;
  Power? targetNotEq;
  List<Power>? targetIn;
  List<Power>? targetNotIn;

  PowerWhereOptions({
    //state
    this.stateIsNull,
    this.stateEq,
    this.stateNotEq,
    this.stateIn,
    this.stateNotIn,

    //target
    this.targetIsNull,
    this.targetEq,
    this.targetNotEq,
    this.targetIn,
    this.targetNotIn,
  });

  @override
  String toString() {
    List<String> queryOptions = [];
    //state
    _addToQueryList(queryOptions, "state_isNull", stateIsNull);
    _addToQueryList(queryOptions, "state_eq", stateEq);
    _addToQueryList(queryOptions, "state_not_eq", stateNotEq);
    _addToQueryList(queryOptions, "state_in", stateIn);
    _addToQueryList(queryOptions, "state_not_in", stateNotIn);

    //target
    _addToQueryList(queryOptions, "target_isNull", targetIsNull);
    _addToQueryList(queryOptions, "target_eq", targetEq);
    _addToQueryList(queryOptions, "target_not_eq", targetNotEq);
    _addToQueryList(queryOptions, "target_in", targetIn);
    _addToQueryList(queryOptions, "target_not_in", targetNotIn);

    return queryOptions.isNotEmpty ? queryOptions.join(', ') : " ";
  }
}
