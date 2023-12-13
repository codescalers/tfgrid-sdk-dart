// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

import 'name_contract.dart' as _i4;
import 'node_contract.dart' as _i3;
import 'rent_contract.dart' as _i5;

abstract class ContractData {
  const ContractData();

  factory ContractData.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $ContractDataCodec codec = $ContractDataCodec();

  static const $ContractData values = $ContractData();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, Map<String, dynamic>> toJson();
}

class $ContractData {
  const $ContractData();

  NodeContract nodeContract(_i3.NodeContract value0) {
    return NodeContract(value0);
  }

  NameContract nameContract(_i4.NameContract value0) {
    return NameContract(value0);
  }

  RentContract rentContract(_i5.RentContract value0) {
    return RentContract(value0);
  }
}

class $ContractDataCodec with _i1.Codec<ContractData> {
  const $ContractDataCodec();

  @override
  ContractData decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return NodeContract._decode(input);
      case 1:
        return NameContract._decode(input);
      case 2:
        return RentContract._decode(input);
      default:
        throw Exception('ContractData: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    ContractData value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case NodeContract:
        (value as NodeContract).encodeTo(output);
        break;
      case NameContract:
        (value as NameContract).encodeTo(output);
        break;
      case RentContract:
        (value as RentContract).encodeTo(output);
        break;
      default:
        throw Exception(
            'ContractData: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(ContractData value) {
    switch (value.runtimeType) {
      case NodeContract:
        return (value as NodeContract)._sizeHint();
      case NameContract:
        return (value as NameContract)._sizeHint();
      case RentContract:
        return (value as RentContract)._sizeHint();
      default:
        throw Exception(
            'ContractData: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class NodeContract extends ContractData {
  const NodeContract(this.value0);

  factory NodeContract._decode(_i1.Input input) {
    return NodeContract(_i3.NodeContract.codec.decode(input));
  }

  /// NodeContract<T>
  final _i3.NodeContract value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'NodeContract': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i3.NodeContract.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i3.NodeContract.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is NodeContract && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class NameContract extends ContractData {
  const NameContract(this.value0);

  factory NameContract._decode(_i1.Input input) {
    return NameContract(_i4.NameContract.codec.decode(input));
  }

  /// NameContract<T>
  final _i4.NameContract value0;

  @override
  Map<String, Map<String, List<int>>> toJson() =>
      {'NameContract': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i4.NameContract.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    _i4.NameContract.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is NameContract && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class RentContract extends ContractData {
  const RentContract(this.value0);

  factory RentContract._decode(_i1.Input input) {
    return RentContract(_i5.RentContract.codec.decode(input));
  }

  /// RentContract
  final _i5.RentContract value0;

  @override
  Map<String, Map<String, int>> toJson() => {'RentContract': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i5.RentContract.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    _i5.RentContract.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RentContract && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}
