// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

///
///			Custom [dispatch errors](https://docs.substrate.io/main-docs/build/events-errors/)
///			of this pallet.
///
enum Error {
  badOrigin('BadOrigin', 0),
  notCouncilMember('NotCouncilMember', 1),
  alreadyBonded('AlreadyBonded', 2),
  stashNotBonded('StashNotBonded', 3),
  stashBondedWithWrongValidator('StashBondedWithWrongValidator', 4),
  cannotBondWithSameAccount('CannotBondWithSameAccount', 5),
  duplicateValidator('DuplicateValidator', 6),
  validatorNotFound('ValidatorNotFound', 7),
  validatorNotApproved('ValidatorNotApproved', 8),
  unauthorizedToActivateValidator('UnauthorizedToActivateValidator', 9),
  validatorValidatingAlready('ValidatorValidatingAlready', 10),
  validatorNotValidating('ValidatorNotValidating', 11);

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
        return Error.badOrigin;
      case 1:
        return Error.notCouncilMember;
      case 2:
        return Error.alreadyBonded;
      case 3:
        return Error.stashNotBonded;
      case 4:
        return Error.stashBondedWithWrongValidator;
      case 5:
        return Error.cannotBondWithSameAccount;
      case 6:
        return Error.duplicateValidator;
      case 7:
        return Error.validatorNotFound;
      case 8:
        return Error.validatorNotApproved;
      case 9:
        return Error.unauthorizedToActivateValidator;
      case 10:
        return Error.validatorValidatingAlready;
      case 11:
        return Error.validatorNotValidating;
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
