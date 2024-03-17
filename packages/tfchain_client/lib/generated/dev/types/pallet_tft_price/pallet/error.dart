// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

///
///			Custom [dispatch errors](https://docs.substrate.io/main-docs/build/events-errors/)
///			of this pallet.
///
enum Error {
  errFetchingPrice('ErrFetchingPrice', 0),
  offchainSignedTxError('OffchainSignedTxError', 1),
  noLocalAcctForSigning('NoLocalAcctForSigning', 2),
  accountUnauthorizedToSetPrice('AccountUnauthorizedToSetPrice', 3),
  maxPriceBelowMinPriceError('MaxPriceBelowMinPriceError', 4),
  minPriceAboveMaxPriceError('MinPriceAboveMaxPriceError', 5),
  isNotAnAuthority('IsNotAnAuthority', 6),
  wrongAuthority('WrongAuthority', 7);

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
        return Error.errFetchingPrice;
      case 1:
        return Error.offchainSignedTxError;
      case 2:
        return Error.noLocalAcctForSigning;
      case 3:
        return Error.accountUnauthorizedToSetPrice;
      case 4:
        return Error.maxPriceBelowMinPriceError;
      case 5:
        return Error.minPriceAboveMaxPriceError;
      case 6:
        return Error.isNotAnAuthority;
      case 7:
        return Error.wrongAuthority;
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
