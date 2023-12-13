// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

enum Cause {
  canceledByUser('CanceledByUser', 0),
  outOfFunds('OutOfFunds', 1);

  const Cause(
    this.variantName,
    this.codecIndex,
  );

  factory Cause.decode(_i1.Input input) {
    return codec.decode(input);
  }

  final String variantName;

  final int codecIndex;

  static const $CauseCodec codec = $CauseCodec();

  String toJson() => variantName;
  _i2.Uint8List encode() {
    return codec.encode(this);
  }
}

class $CauseCodec with _i1.Codec<Cause> {
  const $CauseCodec();

  @override
  Cause decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return Cause.canceledByUser;
      case 1:
        return Cause.outOfFunds;
      default:
        throw Exception('Cause: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Cause value,
    _i1.Output output,
  ) {
    _i1.U8Codec.codec.encodeTo(
      value.codecIndex,
      output,
    );
  }
}
