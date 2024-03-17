// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

enum DiscountLevel {
  none('None', 0),
  default_('Default', 1),
  bronze('Bronze', 2),
  silver('Silver', 3),
  gold('Gold', 4);

  const DiscountLevel(
    this.variantName,
    this.codecIndex,
  );

  factory DiscountLevel.decode(_i1.Input input) {
    return codec.decode(input);
  }

  final String variantName;

  final int codecIndex;

  static const $DiscountLevelCodec codec = $DiscountLevelCodec();

  String toJson() => variantName;
  _i2.Uint8List encode() {
    return codec.encode(this);
  }
}

class $DiscountLevelCodec with _i1.Codec<DiscountLevel> {
  const $DiscountLevelCodec();

  @override
  DiscountLevel decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return DiscountLevel.none;
      case 1:
        return DiscountLevel.default_;
      case 2:
        return DiscountLevel.bronze;
      case 3:
        return DiscountLevel.silver;
      case 4:
        return DiscountLevel.gold;
      default:
        throw Exception('DiscountLevel: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    DiscountLevel value,
    _i1.Output output,
  ) {
    _i1.U8Codec.codec.encodeTo(
      value.codecIndex,
      output,
    );
  }
}
