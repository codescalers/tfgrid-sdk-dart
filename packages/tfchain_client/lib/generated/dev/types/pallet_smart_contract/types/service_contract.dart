// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i3;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import 'service_contract_state.dart' as _i2;

class ServiceContract {
  const ServiceContract({
    required this.serviceContractId,
    required this.serviceTwinId,
    required this.consumerTwinId,
    required this.baseFee,
    required this.variableFee,
    required this.metadata,
    required this.acceptedByService,
    required this.acceptedByConsumer,
    required this.lastBill,
    required this.state,
  });

  factory ServiceContract.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u64
  final BigInt serviceContractId;

  /// u32
  final int serviceTwinId;

  /// u32
  final int consumerTwinId;

  /// u64
  final BigInt baseFee;

  /// u64
  final BigInt variableFee;

  /// BoundedVec<u8, ConstU32<MAX_METADATA_LENGTH>>
  final List<int> metadata;

  /// bool
  final bool acceptedByService;

  /// bool
  final bool acceptedByConsumer;

  /// u64
  final BigInt lastBill;

  /// ServiceContractState
  final _i2.ServiceContractState state;

  static const $ServiceContractCodec codec = $ServiceContractCodec();

  _i3.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'serviceContractId': serviceContractId,
        'serviceTwinId': serviceTwinId,
        'consumerTwinId': consumerTwinId,
        'baseFee': baseFee,
        'variableFee': variableFee,
        'metadata': metadata,
        'acceptedByService': acceptedByService,
        'acceptedByConsumer': acceptedByConsumer,
        'lastBill': lastBill,
        'state': state.toJson(),
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContract &&
          other.serviceContractId == serviceContractId &&
          other.serviceTwinId == serviceTwinId &&
          other.consumerTwinId == consumerTwinId &&
          other.baseFee == baseFee &&
          other.variableFee == variableFee &&
          _i4.listsEqual(
            other.metadata,
            metadata,
          ) &&
          other.acceptedByService == acceptedByService &&
          other.acceptedByConsumer == acceptedByConsumer &&
          other.lastBill == lastBill &&
          other.state == state;

  @override
  int get hashCode => Object.hash(
        serviceContractId,
        serviceTwinId,
        consumerTwinId,
        baseFee,
        variableFee,
        metadata,
        acceptedByService,
        acceptedByConsumer,
        lastBill,
        state,
      );
}

class $ServiceContractCodec with _i1.Codec<ServiceContract> {
  const $ServiceContractCodec();

  @override
  void encodeTo(
    ServiceContract obj,
    _i1.Output output,
  ) {
    _i1.U64Codec.codec.encodeTo(
      obj.serviceContractId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.serviceTwinId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.consumerTwinId,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.baseFee,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.variableFee,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.metadata,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      obj.acceptedByService,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      obj.acceptedByConsumer,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.lastBill,
      output,
    );
    _i2.ServiceContractState.codec.encodeTo(
      obj.state,
      output,
    );
  }

  @override
  ServiceContract decode(_i1.Input input) {
    return ServiceContract(
      serviceContractId: _i1.U64Codec.codec.decode(input),
      serviceTwinId: _i1.U32Codec.codec.decode(input),
      consumerTwinId: _i1.U32Codec.codec.decode(input),
      baseFee: _i1.U64Codec.codec.decode(input),
      variableFee: _i1.U64Codec.codec.decode(input),
      metadata: _i1.U8SequenceCodec.codec.decode(input),
      acceptedByService: _i1.BoolCodec.codec.decode(input),
      acceptedByConsumer: _i1.BoolCodec.codec.decode(input),
      lastBill: _i1.U64Codec.codec.decode(input),
      state: _i2.ServiceContractState.codec.decode(input),
    );
  }

  @override
  int sizeHint(ServiceContract obj) {
    int size = 0;
    size = size + _i1.U64Codec.codec.sizeHint(obj.serviceContractId);
    size = size + _i1.U32Codec.codec.sizeHint(obj.serviceTwinId);
    size = size + _i1.U32Codec.codec.sizeHint(obj.consumerTwinId);
    size = size + _i1.U64Codec.codec.sizeHint(obj.baseFee);
    size = size + _i1.U64Codec.codec.sizeHint(obj.variableFee);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.metadata);
    size = size + _i1.BoolCodec.codec.sizeHint(obj.acceptedByService);
    size = size + _i1.BoolCodec.codec.sizeHint(obj.acceptedByConsumer);
    size = size + _i1.U64Codec.codec.sizeHint(obj.lastBill);
    size = size + _i2.ServiceContractState.codec.sizeHint(obj.state);
    return size;
  }
}
