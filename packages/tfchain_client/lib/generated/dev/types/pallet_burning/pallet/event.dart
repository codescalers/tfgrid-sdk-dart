// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import '../../sp_core/crypto/account_id32.dart' as _i3;

///
///			The [event](https://docs.substrate.io/main-docs/build/events-errors/) emitted
///			by this pallet.
///
abstract class Event {
  const Event();

  factory Event.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $EventCodec codec = $EventCodec();

  static const $Event values = $Event();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, List<dynamic>> toJson();
}

class $Event {
  const $Event();

  BurnTransactionCreated burnTransactionCreated(
    _i3.AccountId32 value0,
    BigInt value1,
    int value2,
    List<int> value3,
  ) {
    return BurnTransactionCreated(
      value0,
      value1,
      value2,
      value3,
    );
  }
}

class $EventCodec with _i1.Codec<Event> {
  const $EventCodec();

  @override
  Event decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return BurnTransactionCreated._decode(input);
      default:
        throw Exception('Event: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Event value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case BurnTransactionCreated:
        (value as BurnTransactionCreated).encodeTo(output);
        break;
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Event value) {
    switch (value.runtimeType) {
      case BurnTransactionCreated:
        return (value as BurnTransactionCreated)._sizeHint();
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class BurnTransactionCreated extends Event {
  const BurnTransactionCreated(
    this.value0,
    this.value1,
    this.value2,
    this.value3,
  );

  factory BurnTransactionCreated._decode(_i1.Input input) {
    return BurnTransactionCreated(
      const _i1.U8ArrayCodec(32).decode(input),
      _i1.U128Codec.codec.decode(input),
      _i1.U32Codec.codec.decode(input),
      _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i3.AccountId32 value0;

  /// BalanceOf<T>
  final BigInt value1;

  /// T::BlockNumber
  final int value2;

  /// Vec<u8>
  final List<int> value3;

  @override
  Map<String, List<dynamic>> toJson() => {
        'BurnTransactionCreated': [
          value0.toList(),
          value1,
          value2,
          value3,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(value0);
    size = size + _i1.U128Codec.codec.sizeHint(value1);
    size = size + _i1.U32Codec.codec.sizeHint(value2);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value3);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      value0,
      output,
    );
    _i1.U128Codec.codec.encodeTo(
      value1,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value2,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value3,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is BurnTransactionCreated &&
          _i4.listsEqual(
            other.value0,
            value0,
          ) &&
          other.value1 == value1 &&
          other.value2 == value2 &&
          _i4.listsEqual(
            other.value3,
            value3,
          );

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
        value2,
        value3,
      );
}
