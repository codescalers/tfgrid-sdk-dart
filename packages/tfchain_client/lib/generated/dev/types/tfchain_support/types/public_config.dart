// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i4;

import 'package:polkadart/scale_codec.dart' as _i1;

import 'ip4.dart' as _i2;
import 'ip6.dart' as _i3;

class PublicConfig {
  const PublicConfig({
    required this.ip4,
    this.ip6,
    this.domain,
  });

  factory PublicConfig.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// IP4
  final _i2.Ip4 ip4;

  /// Option<IP6>
  final _i3.Ip6? ip6;

  /// Option<BoundedVec<u8, ConstU32<MAX_DOMAIN_NAME_LENGTH>>>
  final List<int>? domain;

  static const $PublicConfigCodec codec = $PublicConfigCodec();

  _i4.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'ip4': ip4.toJson(),
        'ip6': ip6?.toJson(),
        'domain': domain,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is PublicConfig &&
          other.ip4 == ip4 &&
          other.ip6 == ip6 &&
          other.domain == domain;

  @override
  int get hashCode => Object.hash(
        ip4,
        ip6,
        domain,
      );
}

class $PublicConfigCodec with _i1.Codec<PublicConfig> {
  const $PublicConfigCodec();

  @override
  void encodeTo(
    PublicConfig obj,
    _i1.Output output,
  ) {
    _i2.Ip4.codec.encodeTo(
      obj.ip4,
      output,
    );
    const _i1.OptionCodec<_i3.Ip6>(_i3.Ip6.codec).encodeTo(
      obj.ip6,
      output,
    );
    const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec).encodeTo(
      obj.domain,
      output,
    );
  }

  @override
  PublicConfig decode(_i1.Input input) {
    return PublicConfig(
      ip4: _i2.Ip4.codec.decode(input),
      ip6: const _i1.OptionCodec<_i3.Ip6>(_i3.Ip6.codec).decode(input),
      domain: const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
          .decode(input),
    );
  }

  @override
  int sizeHint(PublicConfig obj) {
    int size = 0;
    size = size + _i2.Ip4.codec.sizeHint(obj.ip4);
    size =
        size + const _i1.OptionCodec<_i3.Ip6>(_i3.Ip6.codec).sizeHint(obj.ip6);
    size = size +
        const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
            .sizeHint(obj.domain);
    return size;
  }
}
