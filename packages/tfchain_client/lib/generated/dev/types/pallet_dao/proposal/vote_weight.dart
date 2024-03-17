// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

class VoteWeight {
  const VoteWeight({
    required this.farmId,
    required this.weight,
  });

  factory VoteWeight.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u32
  final int farmId;

  /// u64
  final BigInt weight;

  static const $VoteWeightCodec codec = $VoteWeightCodec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'farmId': farmId,
        'weight': weight,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is VoteWeight && other.farmId == farmId && other.weight == weight;

  @override
  int get hashCode => Object.hash(
        farmId,
        weight,
      );
}

class $VoteWeightCodec with _i1.Codec<VoteWeight> {
  const $VoteWeightCodec();

  @override
  void encodeTo(
    VoteWeight obj,
    _i1.Output output,
  ) {
    _i1.U32Codec.codec.encodeTo(
      obj.farmId,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.weight,
      output,
    );
  }

  @override
  VoteWeight decode(_i1.Input input) {
    return VoteWeight(
      farmId: _i1.U32Codec.codec.decode(input),
      weight: _i1.U64Codec.codec.decode(input),
    );
  }

  @override
  int sizeHint(VoteWeight obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.farmId);
    size = size + _i1.U64Codec.codec.sizeHint(obj.weight);
    return size;
  }
}
