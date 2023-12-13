// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i6;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i7;

import '../../pallet_tfgrid/farm/farm_name.dart' as _i2;
import 'farm_certification.dart' as _i3;
import 'farming_policy_limit.dart' as _i5;
import 'public_i_p.dart' as _i4;

class Farm {
  const Farm({
    required this.version,
    required this.id,
    required this.name,
    required this.twinId,
    required this.pricingPolicyId,
    required this.certification,
    required this.publicIps,
    required this.dedicatedFarm,
    this.farmingPolicyLimits,
  });

  factory Farm.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u32
  final int version;

  /// u32
  final int id;

  /// Name
  final _i2.FarmName name;

  /// u32
  final int twinId;

  /// u32
  final int pricingPolicyId;

  /// FarmCertification
  final _i3.FarmCertification certification;

  /// BoundedVec<PublicIP, ConstU32<256>>
  final List<_i4.PublicIP> publicIps;

  /// bool
  final bool dedicatedFarm;

  /// Option<FarmingPolicyLimit>
  final _i5.FarmingPolicyLimit? farmingPolicyLimits;

  static const $FarmCodec codec = $FarmCodec();

  _i6.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'version': version,
        'id': id,
        'name': name,
        'twinId': twinId,
        'pricingPolicyId': pricingPolicyId,
        'certification': certification.toJson(),
        'publicIps': publicIps.map((value) => value.toJson()).toList(),
        'dedicatedFarm': dedicatedFarm,
        'farmingPolicyLimits': farmingPolicyLimits?.toJson(),
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Farm &&
          other.version == version &&
          other.id == id &&
          _i7.listsEqual(
            other.name,
            name,
          ) &&
          other.twinId == twinId &&
          other.pricingPolicyId == pricingPolicyId &&
          other.certification == certification &&
          _i7.listsEqual(
            other.publicIps,
            publicIps,
          ) &&
          other.dedicatedFarm == dedicatedFarm &&
          other.farmingPolicyLimits == farmingPolicyLimits;

  @override
  int get hashCode => Object.hash(
        version,
        id,
        name,
        twinId,
        pricingPolicyId,
        certification,
        publicIps,
        dedicatedFarm,
        farmingPolicyLimits,
      );
}

class $FarmCodec with _i1.Codec<Farm> {
  const $FarmCodec();

  @override
  void encodeTo(
    Farm obj,
    _i1.Output output,
  ) {
    _i1.U32Codec.codec.encodeTo(
      obj.version,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.id,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.name,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.twinId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.pricingPolicyId,
      output,
    );
    _i3.FarmCertification.codec.encodeTo(
      obj.certification,
      output,
    );
    const _i1.SequenceCodec<_i4.PublicIP>(_i4.PublicIP.codec).encodeTo(
      obj.publicIps,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      obj.dedicatedFarm,
      output,
    );
    const _i1.OptionCodec<_i5.FarmingPolicyLimit>(_i5.FarmingPolicyLimit.codec)
        .encodeTo(
      obj.farmingPolicyLimits,
      output,
    );
  }

  @override
  Farm decode(_i1.Input input) {
    return Farm(
      version: _i1.U32Codec.codec.decode(input),
      id: _i1.U32Codec.codec.decode(input),
      name: _i1.U8SequenceCodec.codec.decode(input),
      twinId: _i1.U32Codec.codec.decode(input),
      pricingPolicyId: _i1.U32Codec.codec.decode(input),
      certification: _i3.FarmCertification.codec.decode(input),
      publicIps: const _i1.SequenceCodec<_i4.PublicIP>(_i4.PublicIP.codec)
          .decode(input),
      dedicatedFarm: _i1.BoolCodec.codec.decode(input),
      farmingPolicyLimits: const _i1.OptionCodec<_i5.FarmingPolicyLimit>(
              _i5.FarmingPolicyLimit.codec)
          .decode(input),
    );
  }

  @override
  int sizeHint(Farm obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.version);
    size = size + _i1.U32Codec.codec.sizeHint(obj.id);
    size = size + const _i2.FarmNameCodec().sizeHint(obj.name);
    size = size + _i1.U32Codec.codec.sizeHint(obj.twinId);
    size = size + _i1.U32Codec.codec.sizeHint(obj.pricingPolicyId);
    size = size + _i3.FarmCertification.codec.sizeHint(obj.certification);
    size = size +
        const _i1.SequenceCodec<_i4.PublicIP>(_i4.PublicIP.codec)
            .sizeHint(obj.publicIps);
    size = size + _i1.BoolCodec.codec.sizeHint(obj.dedicatedFarm);
    size = size +
        const _i1.OptionCodec<_i5.FarmingPolicyLimit>(
                _i5.FarmingPolicyLimit.codec)
            .sizeHint(obj.farmingPolicyLimits);
    return size;
  }
}
