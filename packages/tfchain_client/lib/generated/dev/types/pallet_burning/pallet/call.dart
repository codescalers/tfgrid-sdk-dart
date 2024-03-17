// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i3;

/// Contains one variant per dispatchable that can be called by an extrinsic.
abstract class Call {
  const Call();

  factory Call.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $CallCodec codec = $CallCodec();

  static const $Call values = $Call();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, Map<String, dynamic>> toJson();
}

class $Call {
  const $Call();

  BurnTft burnTft({
    required BigInt amount,
    required List<int> message,
  }) {
    return BurnTft(
      amount: amount,
      message: message,
    );
  }
}

class $CallCodec with _i1.Codec<Call> {
  const $CallCodec();

  @override
  Call decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return BurnTft._decode(input);
      default:
        throw Exception('Call: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Call value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case BurnTft:
        (value as BurnTft).encodeTo(output);
        break;
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Call value) {
    switch (value.runtimeType) {
      case BurnTft:
        return (value as BurnTft)._sizeHint();
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class BurnTft extends Call {
  const BurnTft({
    required this.amount,
    required this.message,
  });

  factory BurnTft._decode(_i1.Input input) {
    return BurnTft(
      amount: _i1.U128Codec.codec.decode(input),
      message: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// BalanceOf<T>
  final BigInt amount;

  /// Vec<u8>
  final List<int> message;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'burn_tft': {
          'amount': amount,
          'message': message,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U128Codec.codec.sizeHint(amount);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(message);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i1.U128Codec.codec.encodeTo(
      amount,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      message,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is BurnTft &&
          other.amount == amount &&
          _i3.listsEqual(
            other.message,
            message,
          );

  @override
  int get hashCode => Object.hash(
        amount,
        message,
      );
}
