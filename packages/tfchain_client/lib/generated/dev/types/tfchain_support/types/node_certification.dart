// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

enum NodeCertification {
  diy('Diy', 0),
  certified('Certified', 1);

  const NodeCertification(
    this.variantName,
    this.codecIndex,
  );

  factory NodeCertification.decode(_i1.Input input) {
    return codec.decode(input);
  }

  final String variantName;

  final int codecIndex;

  static const $NodeCertificationCodec codec = $NodeCertificationCodec();

  String toJson() => variantName;
  _i2.Uint8List encode() {
    return codec.encode(this);
  }
}

class $NodeCertificationCodec with _i1.Codec<NodeCertification> {
  const $NodeCertificationCodec();

  @override
  NodeCertification decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return NodeCertification.diy;
      case 1:
        return NodeCertification.certified;
      default:
        throw Exception('NodeCertification: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    NodeCertification value,
    _i1.Output output,
  ) {
    _i1.U8Codec.codec.encodeTo(
      value.codecIndex,
      output,
    );
  }
}
