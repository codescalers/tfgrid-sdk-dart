// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i8;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i9;

import '../../pallet_tfgrid/node/location.dart' as _i3;
import '../../pallet_tfgrid/node/serial_number.dart' as _i7;
import '../resources/resources.dart' as _i2;
import 'interface_1.dart' as _i5;
import 'node_certification.dart' as _i6;
import 'public_config.dart' as _i4;

class Node {
  const Node({
    required this.version,
    required this.id,
    required this.farmId,
    required this.twinId,
    required this.resources,
    required this.location,
    this.publicConfig,
    required this.created,
    required this.farmingPolicyId,
    required this.interfaces,
    required this.certification,
    required this.secureBoot,
    required this.virtualized,
    this.serialNumber,
    required this.connectionPrice,
  });

  factory Node.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u32
  final int version;

  /// u32
  final int id;

  /// u32
  final int farmId;

  /// u32
  final int twinId;

  /// Resources
  final _i2.Resources resources;

  /// Location
  final _i3.Location location;

  /// Option<PublicConfig>
  final _i4.PublicConfig? publicConfig;

  /// u64
  final BigInt created;

  /// u32
  final int farmingPolicyId;

  /// Vec<If>
  final List<_i5.Interface> interfaces;

  /// NodeCertification
  final _i6.NodeCertification certification;

  /// bool
  final bool secureBoot;

  /// bool
  final bool virtualized;

  /// Option<SerialNumber>
  final _i7.SerialNumber? serialNumber;

  /// u32
  final int connectionPrice;

  static const $NodeCodec codec = $NodeCodec();

  _i8.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'version': version,
        'id': id,
        'farmId': farmId,
        'twinId': twinId,
        'resources': resources.toJson(),
        'location': location.toJson(),
        'publicConfig': publicConfig?.toJson(),
        'created': created,
        'farmingPolicyId': farmingPolicyId,
        'interfaces': interfaces.map((value) => value.toJson()).toList(),
        'certification': certification.toJson(),
        'secureBoot': secureBoot,
        'virtualized': virtualized,
        'serialNumber': serialNumber,
        'connectionPrice': connectionPrice,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Node &&
          other.version == version &&
          other.id == id &&
          other.farmId == farmId &&
          other.twinId == twinId &&
          other.resources == resources &&
          other.location == location &&
          other.publicConfig == publicConfig &&
          other.created == created &&
          other.farmingPolicyId == farmingPolicyId &&
          _i9.listsEqual(
            other.interfaces,
            interfaces,
          ) &&
          other.certification == certification &&
          other.secureBoot == secureBoot &&
          other.virtualized == virtualized &&
          other.serialNumber == serialNumber &&
          other.connectionPrice == connectionPrice;

  @override
  int get hashCode => Object.hash(
        version,
        id,
        farmId,
        twinId,
        resources,
        location,
        publicConfig,
        created,
        farmingPolicyId,
        interfaces,
        certification,
        secureBoot,
        virtualized,
        serialNumber,
        connectionPrice,
      );
}

class $NodeCodec with _i1.Codec<Node> {
  const $NodeCodec();

  @override
  void encodeTo(
    Node obj,
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
    _i1.U32Codec.codec.encodeTo(
      obj.farmId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.twinId,
      output,
    );
    _i2.Resources.codec.encodeTo(
      obj.resources,
      output,
    );
    _i3.Location.codec.encodeTo(
      obj.location,
      output,
    );
    const _i1.OptionCodec<_i4.PublicConfig>(_i4.PublicConfig.codec).encodeTo(
      obj.publicConfig,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.created,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.farmingPolicyId,
      output,
    );
    const _i1.SequenceCodec<_i5.Interface>(_i5.Interface.codec).encodeTo(
      obj.interfaces,
      output,
    );
    _i6.NodeCertification.codec.encodeTo(
      obj.certification,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      obj.secureBoot,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      obj.virtualized,
      output,
    );
    const _i1.OptionCodec<_i7.SerialNumber>(_i7.SerialNumberCodec()).encodeTo(
      obj.serialNumber,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.connectionPrice,
      output,
    );
  }

  @override
  Node decode(_i1.Input input) {
    return Node(
      version: _i1.U32Codec.codec.decode(input),
      id: _i1.U32Codec.codec.decode(input),
      farmId: _i1.U32Codec.codec.decode(input),
      twinId: _i1.U32Codec.codec.decode(input),
      resources: _i2.Resources.codec.decode(input),
      location: _i3.Location.codec.decode(input),
      publicConfig:
          const _i1.OptionCodec<_i4.PublicConfig>(_i4.PublicConfig.codec)
              .decode(input),
      created: _i1.U64Codec.codec.decode(input),
      farmingPolicyId: _i1.U32Codec.codec.decode(input),
      interfaces: const _i1.SequenceCodec<_i5.Interface>(_i5.Interface.codec)
          .decode(input),
      certification: _i6.NodeCertification.codec.decode(input),
      secureBoot: _i1.BoolCodec.codec.decode(input),
      virtualized: _i1.BoolCodec.codec.decode(input),
      serialNumber:
          const _i1.OptionCodec<_i7.SerialNumber>(_i7.SerialNumberCodec())
              .decode(input),
      connectionPrice: _i1.U32Codec.codec.decode(input),
    );
  }

  @override
  int sizeHint(Node obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.version);
    size = size + _i1.U32Codec.codec.sizeHint(obj.id);
    size = size + _i1.U32Codec.codec.sizeHint(obj.farmId);
    size = size + _i1.U32Codec.codec.sizeHint(obj.twinId);
    size = size + _i2.Resources.codec.sizeHint(obj.resources);
    size = size + _i3.Location.codec.sizeHint(obj.location);
    size = size +
        const _i1.OptionCodec<_i4.PublicConfig>(_i4.PublicConfig.codec)
            .sizeHint(obj.publicConfig);
    size = size + _i1.U64Codec.codec.sizeHint(obj.created);
    size = size + _i1.U32Codec.codec.sizeHint(obj.farmingPolicyId);
    size = size +
        const _i1.SequenceCodec<_i5.Interface>(_i5.Interface.codec)
            .sizeHint(obj.interfaces);
    size = size + _i6.NodeCertification.codec.sizeHint(obj.certification);
    size = size + _i1.BoolCodec.codec.sizeHint(obj.secureBoot);
    size = size + _i1.BoolCodec.codec.sizeHint(obj.virtualized);
    size = size +
        const _i1.OptionCodec<_i7.SerialNumber>(_i7.SerialNumberCodec())
            .sizeHint(obj.serialNumber);
    size = size + _i1.U32Codec.codec.sizeHint(obj.connectionPrice);
    return size;
  }
}
