// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i3;

class Ip4 {
  const Ip4({
    required this.ip,
    required this.gw,
  });

  factory Ip4.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// BoundedVec<u8, ConstU32<MAX_IP4_LENGTH>>
  final List<int> ip;

  /// BoundedVec<u8, ConstU32<MAX_GW4_LENGTH>>
  final List<int> gw;

  static const $Ip4Codec codec = $Ip4Codec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, List<int>> toJson() => {
        'ip': ip,
        'gw': gw,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Ip4 &&
          _i3.listsEqual(
            other.ip,
            ip,
          ) &&
          _i3.listsEqual(
            other.gw,
            gw,
          );

  @override
  int get hashCode => Object.hash(
        ip,
        gw,
      );
}

class $Ip4Codec with _i1.Codec<Ip4> {
  const $Ip4Codec();

  @override
  void encodeTo(
    Ip4 obj,
    _i1.Output output,
  ) {
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.ip,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.gw,
      output,
    );
  }

  @override
  Ip4 decode(_i1.Input input) {
    return Ip4(
      ip: _i1.U8SequenceCodec.codec.decode(input),
      gw: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  @override
  int sizeHint(Ip4 obj) {
    int size = 0;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.ip);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.gw);
    return size;
  }
}
