// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

import 'cause.dart' as _i3;

abstract class ContractState {
  const ContractState();

  factory ContractState.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $ContractStateCodec codec = $ContractStateCodec();

  static const $ContractState values = $ContractState();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, dynamic> toJson();
}

class $ContractState {
  const $ContractState();

  Created created() {
    return Created();
  }

  Deleted deleted(_i3.Cause value0) {
    return Deleted(value0);
  }

  GracePeriod gracePeriod(BigInt value0) {
    return GracePeriod(value0);
  }
}

class $ContractStateCodec with _i1.Codec<ContractState> {
  const $ContractStateCodec();

  @override
  ContractState decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return const Created();
      case 1:
        return Deleted._decode(input);
      case 2:
        return GracePeriod._decode(input);
      default:
        throw Exception('ContractState: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    ContractState value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case Created:
        (value as Created).encodeTo(output);
        break;
      case Deleted:
        (value as Deleted).encodeTo(output);
        break;
      case GracePeriod:
        (value as GracePeriod).encodeTo(output);
        break;
      default:
        throw Exception(
            'ContractState: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(ContractState value) {
    switch (value.runtimeType) {
      case Created:
        return 1;
      case Deleted:
        return (value as Deleted)._sizeHint();
      case GracePeriod:
        return (value as GracePeriod)._sizeHint();
      default:
        throw Exception(
            'ContractState: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class Created extends ContractState {
  const Created();

  @override
  Map<String, dynamic> toJson() => {'Created': null};

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
  }

  @override
  bool operator ==(Object other) => other is Created;

  @override
  int get hashCode => runtimeType.hashCode;
}

class Deleted extends ContractState {
  const Deleted(this.value0);

  factory Deleted._decode(_i1.Input input) {
    return Deleted(_i3.Cause.codec.decode(input));
  }

  /// Cause
  final _i3.Cause value0;

  @override
  Map<String, String> toJson() => {'Deleted': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i3.Cause.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    _i3.Cause.codec.encodeTo(
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
      other is Deleted && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class GracePeriod extends ContractState {
  const GracePeriod(this.value0);

  factory GracePeriod._decode(_i1.Input input) {
    return GracePeriod(_i1.U64Codec.codec.decode(input));
  }

  /// BlockNumber
  final BigInt value0;

  @override
  Map<String, BigInt> toJson() => {'GracePeriod': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
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
      other is GracePeriod && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}
