// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

abstract class PowerState {
  const PowerState();

  factory PowerState.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $PowerStateCodec codec = $PowerStateCodec();

  static const $PowerState values = $PowerState();

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

class $PowerState {
  const $PowerState();

  Up up() {
    return Up();
  }

  Down down(int value0) {
    return Down(value0);
  }
}

class $PowerStateCodec with _i1.Codec<PowerState> {
  const $PowerStateCodec();

  @override
  PowerState decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return const Up();
      case 1:
        return Down._decode(input);
      default:
        throw Exception('PowerState: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    PowerState value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case Up:
        (value as Up).encodeTo(output);
        break;
      case Down:
        (value as Down).encodeTo(output);
        break;
      default:
        throw Exception(
            'PowerState: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(PowerState value) {
    switch (value.runtimeType) {
      case Up:
        return 1;
      case Down:
        return (value as Down)._sizeHint();
      default:
        throw Exception(
            'PowerState: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class Up extends PowerState {
  const Up();

  @override
  Map<String, dynamic> toJson() => {'Up': null};

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
  }

  @override
  bool operator ==(Object other) => other is Up;

  @override
  int get hashCode => runtimeType.hashCode;
}

class Down extends PowerState {
  const Down(this.value0);

  factory Down._decode(_i1.Input input) {
    return Down(_i1.U32Codec.codec.decode(input));
  }

  /// B
  final int value0;

  @override
  Map<String, int> toJson() => {'Down': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
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
      other is Down && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}
