// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i3;

import 'package:polkadart/scale_codec.dart' as _i1;

import 'discount_level.dart' as _i2;

class ContractBill {
  const ContractBill({
    required this.contractId,
    required this.timestamp,
    required this.discountLevel,
    required this.amountBilled,
  });

  factory ContractBill.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u64
  final BigInt contractId;

  /// u64
  final BigInt timestamp;

  /// DiscountLevel
  final _i2.DiscountLevel discountLevel;

  /// u128
  final BigInt amountBilled;

  static const $ContractBillCodec codec = $ContractBillCodec();

  _i3.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'contractId': contractId,
        'timestamp': timestamp,
        'discountLevel': discountLevel.toJson(),
        'amountBilled': amountBilled,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ContractBill &&
          other.contractId == contractId &&
          other.timestamp == timestamp &&
          other.discountLevel == discountLevel &&
          other.amountBilled == amountBilled;

  @override
  int get hashCode => Object.hash(
        contractId,
        timestamp,
        discountLevel,
        amountBilled,
      );
}

class $ContractBillCodec with _i1.Codec<ContractBill> {
  const $ContractBillCodec();

  @override
  void encodeTo(
    ContractBill obj,
    _i1.Output output,
  ) {
    _i1.U64Codec.codec.encodeTo(
      obj.contractId,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.timestamp,
      output,
    );
    _i2.DiscountLevel.codec.encodeTo(
      obj.discountLevel,
      output,
    );
    _i1.U128Codec.codec.encodeTo(
      obj.amountBilled,
      output,
    );
  }

  @override
  ContractBill decode(_i1.Input input) {
    return ContractBill(
      contractId: _i1.U64Codec.codec.decode(input),
      timestamp: _i1.U64Codec.codec.decode(input),
      discountLevel: _i2.DiscountLevel.codec.decode(input),
      amountBilled: _i1.U128Codec.codec.decode(input),
    );
  }

  @override
  int sizeHint(ContractBill obj) {
    int size = 0;
    size = size + _i1.U64Codec.codec.sizeHint(obj.contractId);
    size = size + _i1.U64Codec.codec.sizeHint(obj.timestamp);
    size = size + _i2.DiscountLevel.codec.sizeHint(obj.discountLevel);
    size = size + _i1.U128Codec.codec.sizeHint(obj.amountBilled);
    return size;
  }
}
