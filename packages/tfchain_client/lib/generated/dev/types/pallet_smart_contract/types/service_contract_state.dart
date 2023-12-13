// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

enum ServiceContractState {
  created('Created', 0),
  agreementReady('AgreementReady', 1),
  approvedByBoth('ApprovedByBoth', 2);

  const ServiceContractState(
    this.variantName,
    this.codecIndex,
  );

  factory ServiceContractState.decode(_i1.Input input) {
    return codec.decode(input);
  }

  final String variantName;

  final int codecIndex;

  static const $ServiceContractStateCodec codec = $ServiceContractStateCodec();

  String toJson() => variantName;
  _i2.Uint8List encode() {
    return codec.encode(this);
  }
}

class $ServiceContractStateCodec with _i1.Codec<ServiceContractState> {
  const $ServiceContractStateCodec();

  @override
  ServiceContractState decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return ServiceContractState.created;
      case 1:
        return ServiceContractState.agreementReady;
      case 2:
        return ServiceContractState.approvedByBoth;
      default:
        throw Exception(
            'ServiceContractState: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    ServiceContractState value,
    _i1.Output output,
  ) {
    _i1.U8Codec.codec.encodeTo(
      value.codecIndex,
      output,
    );
  }
}
