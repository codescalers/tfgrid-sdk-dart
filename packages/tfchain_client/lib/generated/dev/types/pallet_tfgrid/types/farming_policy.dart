// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i4;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i5;

import '../../tfchain_support/types/farm_certification.dart' as _i3;
import '../../tfchain_support/types/node_certification.dart' as _i2;

class FarmingPolicy {
  const FarmingPolicy({
    required this.version,
    required this.id,
    required this.name,
    required this.cu,
    required this.su,
    required this.nu,
    required this.ipv4,
    required this.minimalUptime,
    required this.policyCreated,
    required this.policyEnd,
    required this.immutable,
    required this.default_,
    required this.nodeCertification,
    required this.farmCertification,
  });

  factory FarmingPolicy.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u32
  final int version;

  /// u32
  final int id;

  /// Vec<u8>
  final List<int> name;

  /// u32
  final int cu;

  /// u32
  final int su;

  /// u32
  final int nu;

  /// u32
  final int ipv4;

  /// u16
  final int minimalUptime;

  /// BlockNumber
  final int policyCreated;

  /// BlockNumber
  final int policyEnd;

  /// bool
  final bool immutable;

  /// bool
  final bool default_;

  /// NodeCertification
  final _i2.NodeCertification nodeCertification;

  /// FarmCertification
  final _i3.FarmCertification farmCertification;

  static const $FarmingPolicyCodec codec = $FarmingPolicyCodec();

  _i4.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'version': version,
        'id': id,
        'name': name,
        'cu': cu,
        'su': su,
        'nu': nu,
        'ipv4': ipv4,
        'minimalUptime': minimalUptime,
        'policyCreated': policyCreated,
        'policyEnd': policyEnd,
        'immutable': immutable,
        'default': default_,
        'nodeCertification': nodeCertification.toJson(),
        'farmCertification': farmCertification.toJson(),
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is FarmingPolicy &&
          other.version == version &&
          other.id == id &&
          _i5.listsEqual(
            other.name,
            name,
          ) &&
          other.cu == cu &&
          other.su == su &&
          other.nu == nu &&
          other.ipv4 == ipv4 &&
          other.minimalUptime == minimalUptime &&
          other.policyCreated == policyCreated &&
          other.policyEnd == policyEnd &&
          other.immutable == immutable &&
          other.default_ == default_ &&
          other.nodeCertification == nodeCertification &&
          other.farmCertification == farmCertification;

  @override
  int get hashCode => Object.hash(
        version,
        id,
        name,
        cu,
        su,
        nu,
        ipv4,
        minimalUptime,
        policyCreated,
        policyEnd,
        immutable,
        default_,
        nodeCertification,
        farmCertification,
      );
}

class $FarmingPolicyCodec with _i1.Codec<FarmingPolicy> {
  const $FarmingPolicyCodec();

  @override
  void encodeTo(
    FarmingPolicy obj,
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
      obj.cu,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.su,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.nu,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.ipv4,
      output,
    );
    _i1.U16Codec.codec.encodeTo(
      obj.minimalUptime,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.policyCreated,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.policyEnd,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      obj.immutable,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      obj.default_,
      output,
    );
    _i2.NodeCertification.codec.encodeTo(
      obj.nodeCertification,
      output,
    );
    _i3.FarmCertification.codec.encodeTo(
      obj.farmCertification,
      output,
    );
  }

  @override
  FarmingPolicy decode(_i1.Input input) {
    return FarmingPolicy(
      version: _i1.U32Codec.codec.decode(input),
      id: _i1.U32Codec.codec.decode(input),
      name: _i1.U8SequenceCodec.codec.decode(input),
      cu: _i1.U32Codec.codec.decode(input),
      su: _i1.U32Codec.codec.decode(input),
      nu: _i1.U32Codec.codec.decode(input),
      ipv4: _i1.U32Codec.codec.decode(input),
      minimalUptime: _i1.U16Codec.codec.decode(input),
      policyCreated: _i1.U32Codec.codec.decode(input),
      policyEnd: _i1.U32Codec.codec.decode(input),
      immutable: _i1.BoolCodec.codec.decode(input),
      default_: _i1.BoolCodec.codec.decode(input),
      nodeCertification: _i2.NodeCertification.codec.decode(input),
      farmCertification: _i3.FarmCertification.codec.decode(input),
    );
  }

  @override
  int sizeHint(FarmingPolicy obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.version);
    size = size + _i1.U32Codec.codec.sizeHint(obj.id);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.name);
    size = size + _i1.U32Codec.codec.sizeHint(obj.cu);
    size = size + _i1.U32Codec.codec.sizeHint(obj.su);
    size = size + _i1.U32Codec.codec.sizeHint(obj.nu);
    size = size + _i1.U32Codec.codec.sizeHint(obj.ipv4);
    size = size + _i1.U16Codec.codec.sizeHint(obj.minimalUptime);
    size = size + _i1.U32Codec.codec.sizeHint(obj.policyCreated);
    size = size + _i1.U32Codec.codec.sizeHint(obj.policyEnd);
    size = size + _i1.BoolCodec.codec.sizeHint(obj.immutable);
    size = size + _i1.BoolCodec.codec.sizeHint(obj.default_);
    size = size + _i2.NodeCertification.codec.sizeHint(obj.nodeCertification);
    size = size + _i3.FarmCertification.codec.sizeHint(obj.farmCertification);
    return size;
  }
}
