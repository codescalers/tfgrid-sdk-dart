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

  Map<String, dynamic> toJson();
}

class $Event {
  const $Event();

  PriceStored priceStored(int value0) {
    return PriceStored(value0);
  }

  OffchainWorkerExecuted offchainWorkerExecuted(_i3.AccountId32 value0) {
    return OffchainWorkerExecuted(value0);
  }

  AveragePriceStored averagePriceStored(int value0) {
    return AveragePriceStored(value0);
  }

  AveragePriceIsAboveMaxPrice averagePriceIsAboveMaxPrice(
    int value0,
    int value1,
  ) {
    return AveragePriceIsAboveMaxPrice(
      value0,
      value1,
    );
  }

  AveragePriceIsBelowMinPrice averagePriceIsBelowMinPrice(
    int value0,
    int value1,
  ) {
    return AveragePriceIsBelowMinPrice(
      value0,
      value1,
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
        return PriceStored._decode(input);
      case 1:
        return OffchainWorkerExecuted._decode(input);
      case 2:
        return AveragePriceStored._decode(input);
      case 3:
        return AveragePriceIsAboveMaxPrice._decode(input);
      case 4:
        return AveragePriceIsBelowMinPrice._decode(input);
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
      case PriceStored:
        (value as PriceStored).encodeTo(output);
        break;
      case OffchainWorkerExecuted:
        (value as OffchainWorkerExecuted).encodeTo(output);
        break;
      case AveragePriceStored:
        (value as AveragePriceStored).encodeTo(output);
        break;
      case AveragePriceIsAboveMaxPrice:
        (value as AveragePriceIsAboveMaxPrice).encodeTo(output);
        break;
      case AveragePriceIsBelowMinPrice:
        (value as AveragePriceIsBelowMinPrice).encodeTo(output);
        break;
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Event value) {
    switch (value.runtimeType) {
      case PriceStored:
        return (value as PriceStored)._sizeHint();
      case OffchainWorkerExecuted:
        return (value as OffchainWorkerExecuted)._sizeHint();
      case AveragePriceStored:
        return (value as AveragePriceStored)._sizeHint();
      case AveragePriceIsAboveMaxPrice:
        return (value as AveragePriceIsAboveMaxPrice)._sizeHint();
      case AveragePriceIsBelowMinPrice:
        return (value as AveragePriceIsBelowMinPrice)._sizeHint();
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class PriceStored extends Event {
  const PriceStored(this.value0);

  factory PriceStored._decode(_i1.Input input) {
    return PriceStored(_i1.U32Codec.codec.decode(input));
  }

  /// u32
  final int value0;

  @override
  Map<String, int> toJson() => {'PriceStored': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is PriceStored && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class OffchainWorkerExecuted extends Event {
  const OffchainWorkerExecuted(this.value0);

  factory OffchainWorkerExecuted._decode(_i1.Input input) {
    return OffchainWorkerExecuted(const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i3.AccountId32 value0;

  @override
  Map<String, List<int>> toJson() =>
      {'OffchainWorkerExecuted': value0.toList()};

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is OffchainWorkerExecuted &&
          _i4.listsEqual(
            other.value0,
            value0,
          );

  @override
  int get hashCode => value0.hashCode;
}

class AveragePriceStored extends Event {
  const AveragePriceStored(this.value0);

  factory AveragePriceStored._decode(_i1.Input input) {
    return AveragePriceStored(_i1.U32Codec.codec.decode(input));
  }

  /// u32
  final int value0;

  @override
  Map<String, int> toJson() => {'AveragePriceStored': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is AveragePriceStored && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class AveragePriceIsAboveMaxPrice extends Event {
  const AveragePriceIsAboveMaxPrice(
    this.value0,
    this.value1,
  );

  factory AveragePriceIsAboveMaxPrice._decode(_i1.Input input) {
    return AveragePriceIsAboveMaxPrice(
      _i1.U32Codec.codec.decode(input),
      _i1.U32Codec.codec.decode(input),
    );
  }

  /// u32
  final int value0;

  /// u32
  final int value1;

  @override
  Map<String, List<int>> toJson() => {
        'AveragePriceIsAboveMaxPrice': [
          value0,
          value1,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    size = size + _i1.U32Codec.codec.sizeHint(value1);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value0,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value1,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is AveragePriceIsAboveMaxPrice &&
          other.value0 == value0 &&
          other.value1 == value1;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
      );
}

class AveragePriceIsBelowMinPrice extends Event {
  const AveragePriceIsBelowMinPrice(
    this.value0,
    this.value1,
  );

  factory AveragePriceIsBelowMinPrice._decode(_i1.Input input) {
    return AveragePriceIsBelowMinPrice(
      _i1.U32Codec.codec.decode(input),
      _i1.U32Codec.codec.decode(input),
    );
  }

  /// u32
  final int value0;

  /// u32
  final int value1;

  @override
  Map<String, List<int>> toJson() => {
        'AveragePriceIsBelowMinPrice': [
          value0,
          value1,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    size = size + _i1.U32Codec.codec.sizeHint(value1);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value0,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value1,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is AveragePriceIsBelowMinPrice &&
          other.value0 == value0 &&
          other.value1 == value1;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
      );
}
