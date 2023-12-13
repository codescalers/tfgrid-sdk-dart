// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

class NruConsumption {
  const NruConsumption({
    required this.contractId,
    required this.timestamp,
    required this.window,
    required this.nru,
  });

  factory NruConsumption.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u64
  final BigInt contractId;

  /// u64
  final BigInt timestamp;

  /// u64
  final BigInt window;

  /// u64
  final BigInt nru;

  static const $NruConsumptionCodec codec = $NruConsumptionCodec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, BigInt> toJson() => {
        'contractId': contractId,
        'timestamp': timestamp,
        'window': window,
        'nru': nru,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is NruConsumption &&
          other.contractId == contractId &&
          other.timestamp == timestamp &&
          other.window == window &&
          other.nru == nru;

  @override
  int get hashCode => Object.hash(
        contractId,
        timestamp,
        window,
        nru,
      );
}

class $NruConsumptionCodec with _i1.Codec<NruConsumption> {
  const $NruConsumptionCodec();

  @override
  void encodeTo(
    NruConsumption obj,
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
    _i1.U64Codec.codec.encodeTo(
      obj.window,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.nru,
      output,
    );
  }

  @override
  NruConsumption decode(_i1.Input input) {
    return NruConsumption(
      contractId: _i1.U64Codec.codec.decode(input),
      timestamp: _i1.U64Codec.codec.decode(input),
      window: _i1.U64Codec.codec.decode(input),
      nru: _i1.U64Codec.codec.decode(input),
    );
  }

  @override
  int sizeHint(NruConsumption obj) {
    int size = 0;
    size = size + _i1.U64Codec.codec.sizeHint(obj.contractId);
    size = size + _i1.U64Codec.codec.sizeHint(obj.timestamp);
    size = size + _i1.U64Codec.codec.sizeHint(obj.window);
    size = size + _i1.U64Codec.codec.sizeHint(obj.nru);
    return size;
  }
}
