// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

enum FarmCertification {
  notCertified('NotCertified', 0),
  gold('Gold', 1);

  const FarmCertification(
    this.variantName,
    this.codecIndex,
  );

  factory FarmCertification.decode(_i1.Input input) {
    return codec.decode(input);
  }

  final String variantName;

  final int codecIndex;

  static const $FarmCertificationCodec codec = $FarmCertificationCodec();

  String toJson() => variantName;
  _i2.Uint8List encode() {
    return codec.encode(this);
  }
}

class $FarmCertificationCodec with _i1.Codec<FarmCertification> {
  const $FarmCertificationCodec();

  @override
  FarmCertification decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return FarmCertification.notCertified;
      case 1:
        return FarmCertification.gold;
      default:
        throw Exception('FarmCertification: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    FarmCertification value,
    _i1.Output output,
  ) {
    _i1.U8Codec.codec.encodeTo(
      value.codecIndex,
      output,
    );
  }
}
