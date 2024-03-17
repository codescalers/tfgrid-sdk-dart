// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

class ContractLock {
  const ContractLock({
    required this.amountLocked,
    required this.extraAmountLocked,
    required this.lockUpdated,
    required this.cycles,
  });

  factory ContractLock.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// BalanceOf
  final BigInt amountLocked;

  /// BalanceOf
  final BigInt extraAmountLocked;

  /// u64
  final BigInt lockUpdated;

  /// u16
  final int cycles;

  static const $ContractLockCodec codec = $ContractLockCodec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'amountLocked': amountLocked,
        'extraAmountLocked': extraAmountLocked,
        'lockUpdated': lockUpdated,
        'cycles': cycles,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ContractLock &&
          other.amountLocked == amountLocked &&
          other.extraAmountLocked == extraAmountLocked &&
          other.lockUpdated == lockUpdated &&
          other.cycles == cycles;

  @override
  int get hashCode => Object.hash(
        amountLocked,
        extraAmountLocked,
        lockUpdated,
        cycles,
      );
}

class $ContractLockCodec with _i1.Codec<ContractLock> {
  const $ContractLockCodec();

  @override
  void encodeTo(
    ContractLock obj,
    _i1.Output output,
  ) {
    _i1.U128Codec.codec.encodeTo(
      obj.amountLocked,
      output,
    );
    _i1.U128Codec.codec.encodeTo(
      obj.extraAmountLocked,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.lockUpdated,
      output,
    );
    _i1.U16Codec.codec.encodeTo(
      obj.cycles,
      output,
    );
  }

  @override
  ContractLock decode(_i1.Input input) {
    return ContractLock(
      amountLocked: _i1.U128Codec.codec.decode(input),
      extraAmountLocked: _i1.U128Codec.codec.decode(input),
      lockUpdated: _i1.U64Codec.codec.decode(input),
      cycles: _i1.U16Codec.codec.decode(input),
    );
  }

  @override
  int sizeHint(ContractLock obj) {
    int size = 0;
    size = size + _i1.U128Codec.codec.sizeHint(obj.amountLocked);
    size = size + _i1.U128Codec.codec.sizeHint(obj.extraAmountLocked);
    size = size + _i1.U64Codec.codec.sizeHint(obj.lockUpdated);
    size = size + _i1.U16Codec.codec.sizeHint(obj.cycles);
    return size;
  }
}
