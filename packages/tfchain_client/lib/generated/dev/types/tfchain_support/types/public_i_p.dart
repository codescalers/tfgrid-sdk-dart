// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i3;

class PublicIP {
  const PublicIP({
    required this.ip,
    required this.gateway,
    required this.contractId,
  });

  factory PublicIP.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// BoundedVec<u8, ConstU32<MAX_IP4_LENGTH>>
  final List<int> ip;

  /// BoundedVec<u8, ConstU32<MAX_GW4_LENGTH>>
  final List<int> gateway;

  /// u64
  final BigInt contractId;

  static const $PublicIPCodec codec = $PublicIPCodec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'ip': ip,
        'gateway': gateway,
        'contractId': contractId,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is PublicIP &&
          _i3.listsEqual(
            other.ip,
            ip,
          ) &&
          _i3.listsEqual(
            other.gateway,
            gateway,
          ) &&
          other.contractId == contractId;

  @override
  int get hashCode => Object.hash(
        ip,
        gateway,
        contractId,
      );
}

class $PublicIPCodec with _i1.Codec<PublicIP> {
  const $PublicIPCodec();

  @override
  void encodeTo(
    PublicIP obj,
    _i1.Output output,
  ) {
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.ip,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.gateway,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.contractId,
      output,
    );
  }

  @override
  PublicIP decode(_i1.Input input) {
    return PublicIP(
      ip: _i1.U8SequenceCodec.codec.decode(input),
      gateway: _i1.U8SequenceCodec.codec.decode(input),
      contractId: _i1.U64Codec.codec.decode(input),
    );
  }

  @override
  int sizeHint(PublicIP obj) {
    int size = 0;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.ip);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.gateway);
    size = size + _i1.U64Codec.codec.sizeHint(obj.contractId);
    return size;
  }
}
