// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

class FarmingPolicyLimit {
  const FarmingPolicyLimit({
    required this.farmingPolicyId,
    this.cu,
    this.su,
    this.end,
    this.nodeCount,
    required this.nodeCertification,
  });

  factory FarmingPolicyLimit.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u32
  final int farmingPolicyId;

  /// Option<u64>
  final BigInt? cu;

  /// Option<u64>
  final BigInt? su;

  /// Option<u64>
  final BigInt? end;

  /// Option<u32>
  final int? nodeCount;

  /// bool
  final bool nodeCertification;

  static const $FarmingPolicyLimitCodec codec = $FarmingPolicyLimitCodec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'farmingPolicyId': farmingPolicyId,
        'cu': cu,
        'su': su,
        'end': end,
        'nodeCount': nodeCount,
        'nodeCertification': nodeCertification,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is FarmingPolicyLimit &&
          other.farmingPolicyId == farmingPolicyId &&
          other.cu == cu &&
          other.su == su &&
          other.end == end &&
          other.nodeCount == nodeCount &&
          other.nodeCertification == nodeCertification;

  @override
  int get hashCode => Object.hash(
        farmingPolicyId,
        cu,
        su,
        end,
        nodeCount,
        nodeCertification,
      );
}

class $FarmingPolicyLimitCodec with _i1.Codec<FarmingPolicyLimit> {
  const $FarmingPolicyLimitCodec();

  @override
  void encodeTo(
    FarmingPolicyLimit obj,
    _i1.Output output,
  ) {
    _i1.U32Codec.codec.encodeTo(
      obj.farmingPolicyId,
      output,
    );
    const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).encodeTo(
      obj.cu,
      output,
    );
    const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).encodeTo(
      obj.su,
      output,
    );
    const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).encodeTo(
      obj.end,
      output,
    );
    const _i1.OptionCodec<int>(_i1.U32Codec.codec).encodeTo(
      obj.nodeCount,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      obj.nodeCertification,
      output,
    );
  }

  @override
  FarmingPolicyLimit decode(_i1.Input input) {
    return FarmingPolicyLimit(
      farmingPolicyId: _i1.U32Codec.codec.decode(input),
      cu: const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).decode(input),
      su: const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).decode(input),
      end: const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).decode(input),
      nodeCount: const _i1.OptionCodec<int>(_i1.U32Codec.codec).decode(input),
      nodeCertification: _i1.BoolCodec.codec.decode(input),
    );
  }

  @override
  int sizeHint(FarmingPolicyLimit obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.farmingPolicyId);
    size = size +
        const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).sizeHint(obj.cu);
    size = size +
        const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).sizeHint(obj.su);
    size = size +
        const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).sizeHint(obj.end);
    size = size +
        const _i1.OptionCodec<int>(_i1.U32Codec.codec).sizeHint(obj.nodeCount);
    size = size + _i1.BoolCodec.codec.sizeHint(obj.nodeCertification);
    return size;
  }
}
