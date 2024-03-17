// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i4;

import 'package:polkadart/scale_codec.dart' as _i1;

import 'contract_data.dart' as _i3;
import 'contract_state.dart' as _i2;

class Contract {
  const Contract({
    required this.version,
    required this.state,
    required this.contractId,
    required this.twinId,
    required this.contractType,
    this.solutionProviderId,
  });

  factory Contract.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u32
  final int version;

  /// ContractState
  final _i2.ContractState state;

  /// u64
  final BigInt contractId;

  /// u32
  final int twinId;

  /// ContractData<T>
  final _i3.ContractData contractType;

  /// Option<u64>
  final BigInt? solutionProviderId;

  static const $ContractCodec codec = $ContractCodec();

  _i4.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'version': version,
        'state': state.toJson(),
        'contractId': contractId,
        'twinId': twinId,
        'contractType': contractType.toJson(),
        'solutionProviderId': solutionProviderId,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Contract &&
          other.version == version &&
          other.state == state &&
          other.contractId == contractId &&
          other.twinId == twinId &&
          other.contractType == contractType &&
          other.solutionProviderId == solutionProviderId;

  @override
  int get hashCode => Object.hash(
        version,
        state,
        contractId,
        twinId,
        contractType,
        solutionProviderId,
      );
}

class $ContractCodec with _i1.Codec<Contract> {
  const $ContractCodec();

  @override
  void encodeTo(
    Contract obj,
    _i1.Output output,
  ) {
    _i1.U32Codec.codec.encodeTo(
      obj.version,
      output,
    );
    _i2.ContractState.codec.encodeTo(
      obj.state,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.contractId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.twinId,
      output,
    );
    _i3.ContractData.codec.encodeTo(
      obj.contractType,
      output,
    );
    const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).encodeTo(
      obj.solutionProviderId,
      output,
    );
  }

  @override
  Contract decode(_i1.Input input) {
    return Contract(
      version: _i1.U32Codec.codec.decode(input),
      state: _i2.ContractState.codec.decode(input),
      contractId: _i1.U64Codec.codec.decode(input),
      twinId: _i1.U32Codec.codec.decode(input),
      contractType: _i3.ContractData.codec.decode(input),
      solutionProviderId:
          const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).decode(input),
    );
  }

  @override
  int sizeHint(Contract obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.version);
    size = size + _i2.ContractState.codec.sizeHint(obj.state);
    size = size + _i1.U64Codec.codec.sizeHint(obj.contractId);
    size = size + _i1.U32Codec.codec.sizeHint(obj.twinId);
    size = size + _i3.ContractData.codec.sizeHint(obj.contractType);
    size = size +
        const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec)
            .sizeHint(obj.solutionProviderId);
    return size;
  }
}
