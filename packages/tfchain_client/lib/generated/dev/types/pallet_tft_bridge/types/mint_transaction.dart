// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i3;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import '../../sp_core/crypto/account_id32.dart' as _i2;

class MintTransaction {
  const MintTransaction({
    required this.amount,
    required this.target,
    required this.block,
    required this.votes,
  });

  factory MintTransaction.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u64
  final BigInt amount;

  /// AccountId
  final _i2.AccountId32 target;

  /// BlockNumber
  final int block;

  /// u32
  final int votes;

  static const $MintTransactionCodec codec = $MintTransactionCodec();

  _i3.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'amount': amount,
        'target': target.toList(),
        'block': block,
        'votes': votes,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is MintTransaction &&
          other.amount == amount &&
          _i4.listsEqual(
            other.target,
            target,
          ) &&
          other.block == block &&
          other.votes == votes;

  @override
  int get hashCode => Object.hash(
        amount,
        target,
        block,
        votes,
      );
}

class $MintTransactionCodec with _i1.Codec<MintTransaction> {
  const $MintTransactionCodec();

  @override
  void encodeTo(
    MintTransaction obj,
    _i1.Output output,
  ) {
    _i1.U64Codec.codec.encodeTo(
      obj.amount,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      obj.target,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.block,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.votes,
      output,
    );
  }

  @override
  MintTransaction decode(_i1.Input input) {
    return MintTransaction(
      amount: _i1.U64Codec.codec.decode(input),
      target: const _i1.U8ArrayCodec(32).decode(input),
      block: _i1.U32Codec.codec.decode(input),
      votes: _i1.U32Codec.codec.decode(input),
    );
  }

  @override
  int sizeHint(MintTransaction obj) {
    int size = 0;
    size = size + _i1.U64Codec.codec.sizeHint(obj.amount);
    size = size + const _i2.AccountId32Codec().sizeHint(obj.target);
    size = size + _i1.U32Codec.codec.sizeHint(obj.block);
    size = size + _i1.U32Codec.codec.sizeHint(obj.votes);
    return size;
  }
}
