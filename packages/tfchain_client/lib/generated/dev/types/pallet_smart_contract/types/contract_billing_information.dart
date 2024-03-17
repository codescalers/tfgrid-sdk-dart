// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

class ContractBillingInformation {
  const ContractBillingInformation({
    required this.previousNuReported,
    required this.lastUpdated,
    required this.amountUnbilled,
  });

  factory ContractBillingInformation.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u64
  final BigInt previousNuReported;

  /// u64
  final BigInt lastUpdated;

  /// u64
  final BigInt amountUnbilled;

  static const $ContractBillingInformationCodec codec =
      $ContractBillingInformationCodec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, BigInt> toJson() => {
        'previousNuReported': previousNuReported,
        'lastUpdated': lastUpdated,
        'amountUnbilled': amountUnbilled,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ContractBillingInformation &&
          other.previousNuReported == previousNuReported &&
          other.lastUpdated == lastUpdated &&
          other.amountUnbilled == amountUnbilled;

  @override
  int get hashCode => Object.hash(
        previousNuReported,
        lastUpdated,
        amountUnbilled,
      );
}

class $ContractBillingInformationCodec
    with _i1.Codec<ContractBillingInformation> {
  const $ContractBillingInformationCodec();

  @override
  void encodeTo(
    ContractBillingInformation obj,
    _i1.Output output,
  ) {
    _i1.U64Codec.codec.encodeTo(
      obj.previousNuReported,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.lastUpdated,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.amountUnbilled,
      output,
    );
  }

  @override
  ContractBillingInformation decode(_i1.Input input) {
    return ContractBillingInformation(
      previousNuReported: _i1.U64Codec.codec.decode(input),
      lastUpdated: _i1.U64Codec.codec.decode(input),
      amountUnbilled: _i1.U64Codec.codec.decode(input),
    );
  }

  @override
  int sizeHint(ContractBillingInformation obj) {
    int size = 0;
    size = size + _i1.U64Codec.codec.sizeHint(obj.previousNuReported);
    size = size + _i1.U64Codec.codec.sizeHint(obj.lastUpdated);
    size = size + _i1.U64Codec.codec.sizeHint(obj.amountUnbilled);
    return size;
  }
}
