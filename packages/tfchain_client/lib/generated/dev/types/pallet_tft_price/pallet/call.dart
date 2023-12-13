// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

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

  Map<String, Map<String, int>> toJson();
}

class $Call {
  const $Call();

  SetPrices setPrices({
    required int price,
    required int blockNumber,
  }) {
    return SetPrices(
      price: price,
      blockNumber: blockNumber,
    );
  }

  SetMinTftPrice setMinTftPrice({required int price}) {
    return SetMinTftPrice(price: price);
  }

  SetMaxTftPrice setMaxTftPrice({required int price}) {
    return SetMaxTftPrice(price: price);
  }
}

class $CallCodec with _i1.Codec<Call> {
  const $CallCodec();

  @override
  Call decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return SetPrices._decode(input);
      case 2:
        return SetMinTftPrice._decode(input);
      case 3:
        return SetMaxTftPrice._decode(input);
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
      case SetPrices:
        (value as SetPrices).encodeTo(output);
        break;
      case SetMinTftPrice:
        (value as SetMinTftPrice).encodeTo(output);
        break;
      case SetMaxTftPrice:
        (value as SetMaxTftPrice).encodeTo(output);
        break;
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Call value) {
    switch (value.runtimeType) {
      case SetPrices:
        return (value as SetPrices)._sizeHint();
      case SetMinTftPrice:
        return (value as SetMinTftPrice)._sizeHint();
      case SetMaxTftPrice:
        return (value as SetMaxTftPrice)._sizeHint();
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class SetPrices extends Call {
  const SetPrices({
    required this.price,
    required this.blockNumber,
  });

  factory SetPrices._decode(_i1.Input input) {
    return SetPrices(
      price: _i1.U32Codec.codec.decode(input),
      blockNumber: _i1.U32Codec.codec.decode(input),
    );
  }

  /// u32
  final int price;

  /// T::BlockNumber
  final int blockNumber;

  @override
  Map<String, Map<String, int>> toJson() => {
        'set_prices': {
          'price': price,
          'blockNumber': blockNumber,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(price);
    size = size + _i1.U32Codec.codec.sizeHint(blockNumber);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      price,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      blockNumber,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetPrices &&
          other.price == price &&
          other.blockNumber == blockNumber;

  @override
  int get hashCode => Object.hash(
        price,
        blockNumber,
      );
}

class SetMinTftPrice extends Call {
  const SetMinTftPrice({required this.price});

  factory SetMinTftPrice._decode(_i1.Input input) {
    return SetMinTftPrice(price: _i1.U32Codec.codec.decode(input));
  }

  /// u32
  final int price;

  @override
  Map<String, Map<String, int>> toJson() => {
        'set_min_tft_price': {'price': price}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(price);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      price,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetMinTftPrice && other.price == price;

  @override
  int get hashCode => price.hashCode;
}

class SetMaxTftPrice extends Call {
  const SetMaxTftPrice({required this.price});

  factory SetMaxTftPrice._decode(_i1.Input input) {
    return SetMaxTftPrice(price: _i1.U32Codec.codec.decode(input));
  }

  /// u32
  final int price;

  @override
  Map<String, Map<String, int>> toJson() => {
        'set_max_tft_price': {'price': price}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(price);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      price,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetMaxTftPrice && other.price == price;

  @override
  int get hashCode => price.hashCode;
}
