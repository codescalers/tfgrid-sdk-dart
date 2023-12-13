// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i3;

import 'package:polkadart/scale_codec.dart' as _i1;

import 'unit.dart' as _i2;

class Policy {
  const Policy({
    required this.value,
    required this.unit,
  });

  factory Policy.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u32
  final int value;

  /// Unit
  final _i2.Unit unit;

  static const $PolicyCodec codec = $PolicyCodec();

  _i3.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'value': value,
        'unit': unit.toJson(),
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Policy && other.value == value && other.unit == unit;

  @override
  int get hashCode => Object.hash(
        value,
        unit,
      );
}

class $PolicyCodec with _i1.Codec<Policy> {
  const $PolicyCodec();

  @override
  void encodeTo(
    Policy obj,
    _i1.Output output,
  ) {
    _i1.U32Codec.codec.encodeTo(
      obj.value,
      output,
    );
    _i2.Unit.codec.encodeTo(
      obj.unit,
      output,
    );
  }

  @override
  Policy decode(_i1.Input input) {
    return Policy(
      value: _i1.U32Codec.codec.decode(input),
      unit: _i2.Unit.codec.decode(input),
    );
  }

  @override
  int sizeHint(Policy obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.value);
    size = size + _i2.Unit.codec.sizeHint(obj.unit);
    return size;
  }
}
