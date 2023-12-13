// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i3;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import '../../sp_core/crypto/account_id32.dart' as _i2;

class Burn {
  const Burn({
    required this.target,
    required this.amount,
    required this.block,
    required this.message,
  });

  factory Burn.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// AccountId
  final _i2.AccountId32 target;

  /// BalanceOf
  final BigInt amount;

  /// BlockNumber
  final int block;

  /// Vec<u8>
  final List<int> message;

  static const $BurnCodec codec = $BurnCodec();

  _i3.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'target': target.toList(),
        'amount': amount,
        'block': block,
        'message': message,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Burn &&
          _i4.listsEqual(
            other.target,
            target,
          ) &&
          other.amount == amount &&
          other.block == block &&
          _i4.listsEqual(
            other.message,
            message,
          );

  @override
  int get hashCode => Object.hash(
        target,
        amount,
        block,
        message,
      );
}

class $BurnCodec with _i1.Codec<Burn> {
  const $BurnCodec();

  @override
  void encodeTo(
    Burn obj,
    _i1.Output output,
  ) {
    const _i1.U8ArrayCodec(32).encodeTo(
      obj.target,
      output,
    );
    _i1.U128Codec.codec.encodeTo(
      obj.amount,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.block,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.message,
      output,
    );
  }

  @override
  Burn decode(_i1.Input input) {
    return Burn(
      target: const _i1.U8ArrayCodec(32).decode(input),
      amount: _i1.U128Codec.codec.decode(input),
      block: _i1.U32Codec.codec.decode(input),
      message: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  @override
  int sizeHint(Burn obj) {
    int size = 0;
    size = size + const _i2.AccountId32Codec().sizeHint(obj.target);
    size = size + _i1.U128Codec.codec.sizeHint(obj.amount);
    size = size + _i1.U32Codec.codec.sizeHint(obj.block);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.message);
    return size;
  }
}
