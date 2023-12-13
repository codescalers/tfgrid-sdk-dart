// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

enum StorageVersion {
  v1Struct('V1Struct', 0),
  v2Struct('V2Struct', 1),
  v3Struct('V3Struct', 2),
  v4Struct('V4Struct', 3),
  v5Struct('V5Struct', 4),
  v6Struct('V6Struct', 5),
  v7Struct('V7Struct', 6),
  v8Struct('V8Struct', 7),
  v9Struct('V9Struct', 8),
  v10Struct('V10Struct', 9),
  v11Struct('V11Struct', 10),
  v12Struct('V12Struct', 11),
  v13Struct('V13Struct', 12),
  v14Struct('V14Struct', 13),
  v15Struct('V15Struct', 14),
  v16Struct('V16Struct', 15),
  v17Struct('V17Struct', 16);

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
        return StorageVersion.v1Struct;
      case 1:
        return StorageVersion.v2Struct;
      case 2:
        return StorageVersion.v3Struct;
      case 3:
        return StorageVersion.v4Struct;
      case 4:
        return StorageVersion.v5Struct;
      case 5:
        return StorageVersion.v6Struct;
      case 6:
        return StorageVersion.v7Struct;
      case 7:
        return StorageVersion.v8Struct;
      case 8:
        return StorageVersion.v9Struct;
      case 9:
        return StorageVersion.v10Struct;
      case 10:
        return StorageVersion.v11Struct;
      case 11:
        return StorageVersion.v12Struct;
      case 12:
        return StorageVersion.v13Struct;
      case 13:
        return StorageVersion.v14Struct;
      case 14:
        return StorageVersion.v15Struct;
      case 15:
        return StorageVersion.v16Struct;
      case 16:
        return StorageVersion.v17Struct;
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
