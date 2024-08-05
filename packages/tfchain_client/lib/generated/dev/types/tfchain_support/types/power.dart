// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

enum Power {
  up('Up', 0),
  down('Down', 1);

  const Power(
    this.variantName,
    this.codecIndex,
  );

  factory Power.decode(_i1.Input input) {
    return codec.decode(input);
  }

  final String variantName;

  final int codecIndex;

  static const $PowerCodec codec = $PowerCodec();

  String toJson() => variantName;
  _i2.Uint8List encode() {
    return codec.encode(this);
  }
}

class $PowerCodec with _i1.Codec<Power> {
  const $PowerCodec();

  @override
  Power decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return Power.up;
      case 1:
        return Power.down;
      default:
        throw Exception('Power: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Power value,
    _i1.Output output,
  ) {
    _i1.U8Codec.codec.encodeTo(
      value.codecIndex,
      output,
    );
  }
}
