// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

enum ValidatorRequestState {
  created('Created', 0),
  approved('Approved', 1),
  validating('Validating', 2);

  const ValidatorRequestState(
    this.variantName,
    this.codecIndex,
  );

  factory ValidatorRequestState.decode(_i1.Input input) {
    return codec.decode(input);
  }

  final String variantName;

  final int codecIndex;

  static const $ValidatorRequestStateCodec codec =
      $ValidatorRequestStateCodec();

  String toJson() => variantName;
  _i2.Uint8List encode() {
    return codec.encode(this);
  }
}

class $ValidatorRequestStateCodec with _i1.Codec<ValidatorRequestState> {
  const $ValidatorRequestStateCodec();

  @override
  ValidatorRequestState decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return ValidatorRequestState.created;
      case 1:
        return ValidatorRequestState.approved;
      case 2:
        return ValidatorRequestState.validating;
      default:
        throw Exception(
            'ValidatorRequestState: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    ValidatorRequestState value,
    _i1.Output output,
  ) {
    _i1.U8Codec.codec.encodeTo(
      value.codecIndex,
      output,
    );
  }
}
