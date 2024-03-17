// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

class Resources {
  const Resources({
    required this.hru,
    required this.sru,
    required this.cru,
    required this.mru,
  });

  factory Resources.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u64
  final BigInt hru;

  /// u64
  final BigInt sru;

  /// u64
  final BigInt cru;

  /// u64
  final BigInt mru;

  static const $ResourcesCodec codec = $ResourcesCodec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, BigInt> toJson() => {
        'hru': hru,
        'sru': sru,
        'cru': cru,
        'mru': mru,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Resources &&
          other.hru == hru &&
          other.sru == sru &&
          other.cru == cru &&
          other.mru == mru;

  @override
  int get hashCode => Object.hash(
        hru,
        sru,
        cru,
        mru,
      );
}

class $ResourcesCodec with _i1.Codec<Resources> {
  const $ResourcesCodec();

  @override
  void encodeTo(
    Resources obj,
    _i1.Output output,
  ) {
    _i1.U64Codec.codec.encodeTo(
      obj.hru,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.sru,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.cru,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.mru,
      output,
    );
  }

  @override
  Resources decode(_i1.Input input) {
    return Resources(
      hru: _i1.U64Codec.codec.decode(input),
      sru: _i1.U64Codec.codec.decode(input),
      cru: _i1.U64Codec.codec.decode(input),
      mru: _i1.U64Codec.codec.decode(input),
    );
  }

  @override
  int sizeHint(Resources obj) {
    int size = 0;
    size = size + _i1.U64Codec.codec.sizeHint(obj.hru);
    size = size + _i1.U64Codec.codec.sizeHint(obj.sru);
    size = size + _i1.U64Codec.codec.sizeHint(obj.cru);
    size = size + _i1.U64Codec.codec.sizeHint(obj.mru);
    return size;
  }
}
