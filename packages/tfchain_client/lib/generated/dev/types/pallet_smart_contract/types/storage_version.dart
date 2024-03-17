// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

enum StorageVersion {
  v1('V1', 0),
  v2('V2', 1),
  v3('V3', 2),
  v4('V4', 3),
  v5('V5', 4),
  v6('V6', 5),
  v7('V7', 6),
  v8('V8', 7),
  v9('V9', 8),
  v10('V10', 9),
  v11('V11', 10);

  const StorageVersion(
    this.variantName,
    this.codecIndex,
  );

  factory StorageVersion.decode(_i1.Input input) {
    return codec.decode(input);
  }

  final String variantName;

  final int codecIndex;

  static const $StorageVersionCodec codec = $StorageVersionCodec();

  String toJson() => variantName;
  _i2.Uint8List encode() {
    return codec.encode(this);
  }
}

class $StorageVersionCodec with _i1.Codec<StorageVersion> {
  const $StorageVersionCodec();

  @override
  StorageVersion decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return StorageVersion.v1;
      case 1:
        return StorageVersion.v2;
      case 2:
        return StorageVersion.v3;
      case 3:
        return StorageVersion.v4;
      case 4:
        return StorageVersion.v5;
      case 5:
        return StorageVersion.v6;
      case 6:
        return StorageVersion.v7;
      case 7:
        return StorageVersion.v8;
      case 8:
        return StorageVersion.v9;
      case 9:
        return StorageVersion.v10;
      case 10:
        return StorageVersion.v11;
      default:
        throw Exception('StorageVersion: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    StorageVersion value,
    _i1.Output output,
  ) {
    _i1.U8Codec.codec.encodeTo(
      value.codecIndex,
      output,
    );
  }
}
