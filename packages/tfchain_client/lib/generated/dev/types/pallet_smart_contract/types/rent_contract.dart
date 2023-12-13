// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

class RentContract {
  const RentContract({required this.nodeId});

  factory RentContract.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u32
  final int nodeId;

  static const $RentContractCodec codec = $RentContractCodec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, int> toJson() => {'nodeId': nodeId};

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RentContract && other.nodeId == nodeId;

  @override
  int get hashCode => nodeId.hashCode;
}

class $RentContractCodec with _i1.Codec<RentContract> {
  const $RentContractCodec();

  @override
  void encodeTo(
    RentContract obj,
    _i1.Output output,
  ) {
    _i1.U32Codec.codec.encodeTo(
      obj.nodeId,
      output,
    );
  }

  @override
  RentContract decode(_i1.Input input) {
    return RentContract(nodeId: _i1.U32Codec.codec.decode(input));
  }

  @override
  int sizeHint(RentContract obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.nodeId);
    return size;
  }
}
