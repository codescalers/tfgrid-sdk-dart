// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i3;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import '../../tfchain_support/types/public_i_p.dart' as _i2;

class NodeContract {
  const NodeContract({
    required this.nodeId,
    required this.deploymentHash,
    required this.deploymentData,
    required this.publicIps,
    required this.publicIpsList,
  });

  factory NodeContract.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u32
  final int nodeId;

  /// HexHash
  final List<int> deploymentHash;

  /// BoundedVec<u8, MaxDeploymentDataLength<T>>
  final List<int> deploymentData;

  /// u32
  final int publicIps;

  /// BoundedVec<PublicIP, MaxNodeContractPublicIPs<T>>
  final List<_i2.PublicIP> publicIpsList;

  static const $NodeContractCodec codec = $NodeContractCodec();

  _i3.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'nodeId': nodeId,
        'deploymentHash': deploymentHash.toList(),
        'deploymentData': deploymentData,
        'publicIps': publicIps,
        'publicIpsList': publicIpsList.map((value) => value.toJson()).toList(),
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is NodeContract &&
          other.nodeId == nodeId &&
          _i4.listsEqual(
            other.deploymentHash,
            deploymentHash,
          ) &&
          _i4.listsEqual(
            other.deploymentData,
            deploymentData,
          ) &&
          other.publicIps == publicIps &&
          _i4.listsEqual(
            other.publicIpsList,
            publicIpsList,
          );

  @override
  int get hashCode => Object.hash(
        nodeId,
        deploymentHash,
        deploymentData,
        publicIps,
        publicIpsList,
      );
}

class $NodeContractCodec with _i1.Codec<NodeContract> {
  const $NodeContractCodec();

  @override
  void encodeTo(
    NodeContract obj,
    _i1.Output output,
  ) {
    _i1.U32Codec.codec.encodeTo(
      obj.nodeId,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      obj.deploymentHash,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.deploymentData,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.publicIps,
      output,
    );
    const _i1.SequenceCodec<_i2.PublicIP>(_i2.PublicIP.codec).encodeTo(
      obj.publicIpsList,
      output,
    );
  }

  @override
  NodeContract decode(_i1.Input input) {
    return NodeContract(
      nodeId: _i1.U32Codec.codec.decode(input),
      deploymentHash: const _i1.U8ArrayCodec(32).decode(input),
      deploymentData: _i1.U8SequenceCodec.codec.decode(input),
      publicIps: _i1.U32Codec.codec.decode(input),
      publicIpsList: const _i1.SequenceCodec<_i2.PublicIP>(_i2.PublicIP.codec)
          .decode(input),
    );
  }

  @override
  int sizeHint(NodeContract obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.nodeId);
    size = size + const _i1.U8ArrayCodec(32).sizeHint(obj.deploymentHash);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.deploymentData);
    size = size + _i1.U32Codec.codec.sizeHint(obj.publicIps);
    size = size +
        const _i1.SequenceCodec<_i2.PublicIP>(_i2.PublicIP.codec)
            .sizeHint(obj.publicIpsList);
    return size;
  }
}
