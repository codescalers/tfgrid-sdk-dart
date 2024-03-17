// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i3;

import 'package:polkadart/scale_codec.dart' as _i1;

import '../../tfchain_support/resources/resources.dart' as _i2;

class ContractResources {
  const ContractResources({
    required this.contractId,
    required this.used,
  });

  factory ContractResources.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u64
  final BigInt contractId;

  /// Resources
  final _i2.Resources used;

  static const $ContractResourcesCodec codec = $ContractResourcesCodec();

  _i3.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'contractId': contractId,
        'used': used.toJson(),
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ContractResources &&
          other.contractId == contractId &&
          other.used == used;

  @override
  int get hashCode => Object.hash(
        contractId,
        used,
      );
}

class $ContractResourcesCodec with _i1.Codec<ContractResources> {
  const $ContractResourcesCodec();

  @override
  void encodeTo(
    ContractResources obj,
    _i1.Output output,
  ) {
    _i1.U64Codec.codec.encodeTo(
      obj.contractId,
      output,
    );
    _i2.Resources.codec.encodeTo(
      obj.used,
      output,
    );
  }

  @override
  ContractResources decode(_i1.Input input) {
    return ContractResources(
      contractId: _i1.U64Codec.codec.decode(input),
      used: _i2.Resources.codec.decode(input),
    );
  }

  @override
  int sizeHint(ContractResources obj) {
    int size = 0;
    size = size + _i1.U64Codec.codec.sizeHint(obj.contractId);
    size = size + _i2.Resources.codec.sizeHint(obj.used);
    return size;
  }
}
