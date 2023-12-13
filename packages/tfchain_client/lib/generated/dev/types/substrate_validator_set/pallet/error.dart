// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

///
///			Custom [dispatch errors](https://docs.substrate.io/main-docs/build/events-errors/)
///			of this pallet.
///
enum Error {
  /// Target (post-removal) validator count is below the minimum.
  tooLowValidatorCount('TooLowValidatorCount', 0),

  /// Validator is already in the validator set.
  duplicate('Duplicate', 1),

  /// Validator is not approved for re-addition.
  validatorNotApproved('ValidatorNotApproved', 2),

  /// Only the validator can add itself back after coming online.
  badOrigin('BadOrigin', 3);

  const Error(
    this.variantName,
    this.codecIndex,
  );

  factory Error.decode(_i1.Input input) {
    return codec.decode(input);
  }

  final String variantName;

  final int codecIndex;

  static const $ErrorCodec codec = $ErrorCodec();

  String toJson() => variantName;
  _i2.Uint8List encode() {
    return codec.encode(this);
  }
}

class $ErrorCodec with _i1.Codec<Error> {
  const $ErrorCodec();

  @override
  Error decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return Error.tooLowValidatorCount;
      case 1:
        return Error.duplicate;
      case 2:
        return Error.validatorNotApproved;
      case 3:
        return Error.badOrigin;
      default:
        throw Exception('Error: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Error value,
    _i1.Output output,
  ) {
    _i1.U8Codec.codec.encodeTo(
      value.codecIndex,
      output,
    );
  }
}
