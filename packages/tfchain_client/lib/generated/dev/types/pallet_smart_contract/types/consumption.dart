// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

class Consumption {
  const Consumption({
    required this.contractId,
    required this.timestamp,
    required this.cru,
    required this.sru,
    required this.hru,
    required this.mru,
    required this.nru,
  });

  factory Consumption.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u64
  final BigInt contractId;

  /// u64
  final BigInt timestamp;

  /// u64
  final BigInt cru;

  /// u64
  final BigInt sru;

  /// u64
  final BigInt hru;

  /// u64
  final BigInt mru;

  /// u64
  final BigInt nru;

  static const $ConsumptionCodec codec = $ConsumptionCodec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, BigInt> toJson() => {
        'contractId': contractId,
        'timestamp': timestamp,
        'cru': cru,
        'sru': sru,
        'hru': hru,
        'mru': mru,
        'nru': nru,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Consumption &&
          other.contractId == contractId &&
          other.timestamp == timestamp &&
          other.cru == cru &&
          other.sru == sru &&
          other.hru == hru &&
          other.mru == mru &&
          other.nru == nru;

  @override
  int get hashCode => Object.hash(
        contractId,
        timestamp,
        cru,
        sru,
        hru,
        mru,
        nru,
      );
}

class $ConsumptionCodec with _i1.Codec<Consumption> {
  const $ConsumptionCodec();

  @override
  void encodeTo(
    Consumption obj,
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
      obj.cru,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.sru,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.hru,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.mru,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.nru,
      output,
    );
  }

  @override
  Consumption decode(_i1.Input input) {
    return Consumption(
      contractId: _i1.U64Codec.codec.decode(input),
      timestamp: _i1.U64Codec.codec.decode(input),
      cru: _i1.U64Codec.codec.decode(input),
      sru: _i1.U64Codec.codec.decode(input),
      hru: _i1.U64Codec.codec.decode(input),
      mru: _i1.U64Codec.codec.decode(input),
      nru: _i1.U64Codec.codec.decode(input),
    );
  }

  @override
  int sizeHint(Consumption obj) {
    int size = 0;
    size = size + _i1.U64Codec.codec.sizeHint(obj.contractId);
    size = size + _i1.U64Codec.codec.sizeHint(obj.timestamp);
    size = size + _i1.U64Codec.codec.sizeHint(obj.cru);
    size = size + _i1.U64Codec.codec.sizeHint(obj.sru);
    size = size + _i1.U64Codec.codec.sizeHint(obj.hru);
    size = size + _i1.U64Codec.codec.sizeHint(obj.mru);
    size = size + _i1.U64Codec.codec.sizeHint(obj.nru);
    return size;
  }
}
