// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

enum Unit {
  bytes('Bytes', 0),
  kilobytes('Kilobytes', 1),
  megabytes('Megabytes', 2),
  gigabytes('Gigabytes', 3),
  terrabytes('Terrabytes', 4);

  const Unit(
    this.variantName,
    this.codecIndex,
  );

  factory Unit.decode(_i1.Input input) {
    return codec.decode(input);
  }

  final String variantName;

  final int codecIndex;

  static const $UnitCodec codec = $UnitCodec();

  String toJson() => variantName;
  _i2.Uint8List encode() {
    return codec.encode(this);
  }
}

class $UnitCodec with _i1.Codec<Unit> {
  const $UnitCodec();

  @override
  Unit decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return Unit.bytes;
      case 1:
        return Unit.kilobytes;
      case 2:
        return Unit.megabytes;
      case 3:
        return Unit.gigabytes;
      case 4:
        return Unit.terrabytes;
      default:
        throw Exception('Unit: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Unit value,
    _i1.Output output,
  ) {
    _i1.U8Codec.codec.encodeTo(
      value.codecIndex,
      output,
    );
  }
}
