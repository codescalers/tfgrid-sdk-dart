// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i14;

import '../../sp_core/crypto/account_id32.dart' as _i5;
import '../../tfchain_support/types/public_i_p.dart' as _i4;
import '../types/cause.dart' as _i12;
import '../types/consumption.dart' as _i6;
import '../types/contract.dart' as _i3;
import '../types/contract_bill.dart' as _i7;
import '../types/contract_resources.dart' as _i8;
import '../types/nru_consumption.dart' as _i9;
import '../types/service_contract.dart' as _i11;
import '../types/service_contract_bill.dart' as _i13;
import '../types/solution_provider.dart' as _i10;

///
///			The [event](https://docs.substrate.io/main-docs/build/events-errors/) emitted
///			by this pallet.
///
abstract class Event {
  const Event();

  factory Event.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $EventCodec codec = $EventCodec();

  static const $Event values = $Event();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, dynamic> toJson();
}

class $Event {
  const $Event();

  ContractCreated contractCreated(_i3.Contract value0) {
    return ContractCreated(value0);
  }

  ContractUpdated contractUpdated(_i3.Contract value0) {
    return ContractUpdated(value0);
  }

  NodeContractCanceled nodeContractCanceled({
    required BigInt contractId,
    required int nodeId,
    required int twinId,
  }) {
    return NodeContractCanceled(
      contractId: contractId,
      nodeId: nodeId,
      twinId: twinId,
    );
  }

  NameContractCanceled nameContractCanceled({required BigInt contractId}) {
    return NameContractCanceled(contractId: contractId);
  }

  IPsReserved iPsReserved({
    required BigInt contractId,
    required List<_i4.PublicIP> publicIps,
  }) {
    return IPsReserved(
      contractId: contractId,
      publicIps: publicIps,
    );
  }

  IPsFreed iPsFreed({
    required BigInt contractId,
    required List<_i4.PublicIP> publicIps,
  }) {
    return IPsFreed(
      contractId: contractId,
      publicIps: publicIps,
    );
  }

  ContractDeployed contractDeployed(
    BigInt value0,
    _i5.AccountId32 value1,
  ) {
    return ContractDeployed(
      value0,
      value1,
    );
  }

  ConsumptionReportReceived consumptionReportReceived(_i6.Consumption value0) {
    return ConsumptionReportReceived(value0);
  }

  ContractBilled contractBilled(_i7.ContractBill value0) {
    return ContractBilled(value0);
  }

  TokensBurned tokensBurned({
    required BigInt contractId,
    required BigInt amount,
  }) {
    return TokensBurned(
      contractId: contractId,
      amount: amount,
    );
  }

  UpdatedUsedResources updatedUsedResources(_i8.ContractResources value0) {
    return UpdatedUsedResources(value0);
  }

  NruConsumptionReportReceived nruConsumptionReportReceived(
      _i9.NruConsumption value0) {
    return NruConsumptionReportReceived(value0);
  }

  RentContractCanceled rentContractCanceled({required BigInt contractId}) {
    return RentContractCanceled(contractId: contractId);
  }

  ContractGracePeriodStarted contractGracePeriodStarted({
    required BigInt contractId,
    required int nodeId,
    required int twinId,
    required BigInt blockNumber,
  }) {
    return ContractGracePeriodStarted(
      contractId: contractId,
      nodeId: nodeId,
      twinId: twinId,
      blockNumber: blockNumber,
    );
  }

  ContractGracePeriodEnded contractGracePeriodEnded({
    required BigInt contractId,
    required int nodeId,
    required int twinId,
  }) {
    return ContractGracePeriodEnded(
      contractId: contractId,
      nodeId: nodeId,
      twinId: twinId,
    );
  }

  SolutionProviderCreated solutionProviderCreated(
      _i10.SolutionProvider value0) {
    return SolutionProviderCreated(value0);
  }

  SolutionProviderApproved solutionProviderApproved(
    BigInt value0,
    bool value1,
  ) {
    return SolutionProviderApproved(
      value0,
      value1,
    );
  }

  ServiceContractCreated serviceContractCreated(_i11.ServiceContract value0) {
    return ServiceContractCreated(value0);
  }

  ServiceContractMetadataSet serviceContractMetadataSet(
      _i11.ServiceContract value0) {
    return ServiceContractMetadataSet(value0);
  }

  ServiceContractFeesSet serviceContractFeesSet(_i11.ServiceContract value0) {
    return ServiceContractFeesSet(value0);
  }

  ServiceContractApproved serviceContractApproved(_i11.ServiceContract value0) {
    return ServiceContractApproved(value0);
  }

  ServiceContractCanceled serviceContractCanceled({
    required BigInt serviceContractId,
    required _i12.Cause cause,
  }) {
    return ServiceContractCanceled(
      serviceContractId: serviceContractId,
      cause: cause,
    );
  }

  ServiceContractBilled serviceContractBilled({
    required _i11.ServiceContract serviceContract,
    required _i13.ServiceContractBill bill,
    required BigInt amount,
  }) {
    return ServiceContractBilled(
      serviceContract: serviceContract,
      bill: bill,
      amount: amount,
    );
  }

  BillingFrequencyChanged billingFrequencyChanged(BigInt value0) {
    return BillingFrequencyChanged(value0);
  }

  NodeExtraFeeSet nodeExtraFeeSet({
    required int nodeId,
    required BigInt extraFee,
  }) {
    return NodeExtraFeeSet(
      nodeId: nodeId,
      extraFee: extraFee,
    );
  }
}

class $EventCodec with _i1.Codec<Event> {
  const $EventCodec();

  @override
  Event decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return ContractCreated._decode(input);
      case 1:
        return ContractUpdated._decode(input);
      case 2:
        return NodeContractCanceled._decode(input);
      case 3:
        return NameContractCanceled._decode(input);
      case 4:
        return IPsReserved._decode(input);
      case 5:
        return IPsFreed._decode(input);
      case 6:
        return ContractDeployed._decode(input);
      case 7:
        return ConsumptionReportReceived._decode(input);
      case 8:
        return ContractBilled._decode(input);
      case 9:
        return TokensBurned._decode(input);
      case 10:
        return UpdatedUsedResources._decode(input);
      case 11:
        return NruConsumptionReportReceived._decode(input);
      case 12:
        return RentContractCanceled._decode(input);
      case 13:
        return ContractGracePeriodStarted._decode(input);
      case 14:
        return ContractGracePeriodEnded._decode(input);
      case 15:
        return SolutionProviderCreated._decode(input);
      case 16:
        return SolutionProviderApproved._decode(input);
      case 17:
        return ServiceContractCreated._decode(input);
      case 18:
        return ServiceContractMetadataSet._decode(input);
      case 19:
        return ServiceContractFeesSet._decode(input);
      case 20:
        return ServiceContractApproved._decode(input);
      case 21:
        return ServiceContractCanceled._decode(input);
      case 22:
        return ServiceContractBilled._decode(input);
      case 23:
        return BillingFrequencyChanged._decode(input);
      case 24:
        return NodeExtraFeeSet._decode(input);
      default:
        throw Exception('Event: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Event value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case ContractCreated:
        (value as ContractCreated).encodeTo(output);
        break;
      case ContractUpdated:
        (value as ContractUpdated).encodeTo(output);
        break;
      case NodeContractCanceled:
        (value as NodeContractCanceled).encodeTo(output);
        break;
      case NameContractCanceled:
        (value as NameContractCanceled).encodeTo(output);
        break;
      case IPsReserved:
        (value as IPsReserved).encodeTo(output);
        break;
      case IPsFreed:
        (value as IPsFreed).encodeTo(output);
        break;
      case ContractDeployed:
        (value as ContractDeployed).encodeTo(output);
        break;
      case ConsumptionReportReceived:
        (value as ConsumptionReportReceived).encodeTo(output);
        break;
      case ContractBilled:
        (value as ContractBilled).encodeTo(output);
        break;
      case TokensBurned:
        (value as TokensBurned).encodeTo(output);
        break;
      case UpdatedUsedResources:
        (value as UpdatedUsedResources).encodeTo(output);
        break;
      case NruConsumptionReportReceived:
        (value as NruConsumptionReportReceived).encodeTo(output);
        break;
      case RentContractCanceled:
        (value as RentContractCanceled).encodeTo(output);
        break;
      case ContractGracePeriodStarted:
        (value as ContractGracePeriodStarted).encodeTo(output);
        break;
      case ContractGracePeriodEnded:
        (value as ContractGracePeriodEnded).encodeTo(output);
        break;
      case SolutionProviderCreated:
        (value as SolutionProviderCreated).encodeTo(output);
        break;
      case SolutionProviderApproved:
        (value as SolutionProviderApproved).encodeTo(output);
        break;
      case ServiceContractCreated:
        (value as ServiceContractCreated).encodeTo(output);
        break;
      case ServiceContractMetadataSet:
        (value as ServiceContractMetadataSet).encodeTo(output);
        break;
      case ServiceContractFeesSet:
        (value as ServiceContractFeesSet).encodeTo(output);
        break;
      case ServiceContractApproved:
        (value as ServiceContractApproved).encodeTo(output);
        break;
      case ServiceContractCanceled:
        (value as ServiceContractCanceled).encodeTo(output);
        break;
      case ServiceContractBilled:
        (value as ServiceContractBilled).encodeTo(output);
        break;
      case BillingFrequencyChanged:
        (value as BillingFrequencyChanged).encodeTo(output);
        break;
      case NodeExtraFeeSet:
        (value as NodeExtraFeeSet).encodeTo(output);
        break;
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Event value) {
    switch (value.runtimeType) {
      case ContractCreated:
        return (value as ContractCreated)._sizeHint();
      case ContractUpdated:
        return (value as ContractUpdated)._sizeHint();
      case NodeContractCanceled:
        return (value as NodeContractCanceled)._sizeHint();
      case NameContractCanceled:
        return (value as NameContractCanceled)._sizeHint();
      case IPsReserved:
        return (value as IPsReserved)._sizeHint();
      case IPsFreed:
        return (value as IPsFreed)._sizeHint();
      case ContractDeployed:
        return (value as ContractDeployed)._sizeHint();
      case ConsumptionReportReceived:
        return (value as ConsumptionReportReceived)._sizeHint();
      case ContractBilled:
        return (value as ContractBilled)._sizeHint();
      case TokensBurned:
        return (value as TokensBurned)._sizeHint();
      case UpdatedUsedResources:
        return (value as UpdatedUsedResources)._sizeHint();
      case NruConsumptionReportReceived:
        return (value as NruConsumptionReportReceived)._sizeHint();
      case RentContractCanceled:
        return (value as RentContractCanceled)._sizeHint();
      case ContractGracePeriodStarted:
        return (value as ContractGracePeriodStarted)._sizeHint();
      case ContractGracePeriodEnded:
        return (value as ContractGracePeriodEnded)._sizeHint();
      case SolutionProviderCreated:
        return (value as SolutionProviderCreated)._sizeHint();
      case SolutionProviderApproved:
        return (value as SolutionProviderApproved)._sizeHint();
      case ServiceContractCreated:
        return (value as ServiceContractCreated)._sizeHint();
      case ServiceContractMetadataSet:
        return (value as ServiceContractMetadataSet)._sizeHint();
      case ServiceContractFeesSet:
        return (value as ServiceContractFeesSet)._sizeHint();
      case ServiceContractApproved:
        return (value as ServiceContractApproved)._sizeHint();
      case ServiceContractCanceled:
        return (value as ServiceContractCanceled)._sizeHint();
      case ServiceContractBilled:
        return (value as ServiceContractBilled)._sizeHint();
      case BillingFrequencyChanged:
        return (value as BillingFrequencyChanged)._sizeHint();
      case NodeExtraFeeSet:
        return (value as NodeExtraFeeSet)._sizeHint();
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

/// A contract got created
class ContractCreated extends Event {
  const ContractCreated(this.value0);

  factory ContractCreated._decode(_i1.Input input) {
    return ContractCreated(_i3.Contract.codec.decode(input));
  }

  /// types::Contract<T>
  final _i3.Contract value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'ContractCreated': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i3.Contract.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i3.Contract.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ContractCreated && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

/// A contract was updated
class ContractUpdated extends Event {
  const ContractUpdated(this.value0);

  factory ContractUpdated._decode(_i1.Input input) {
    return ContractUpdated(_i3.Contract.codec.decode(input));
  }

  /// types::Contract<T>
  final _i3.Contract value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'ContractUpdated': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i3.Contract.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    _i3.Contract.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ContractUpdated && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

/// A Node contract is canceled
class NodeContractCanceled extends Event {
  const NodeContractCanceled({
    required this.contractId,
    required this.nodeId,
    required this.twinId,
  });

  factory NodeContractCanceled._decode(_i1.Input input) {
    return NodeContractCanceled(
      contractId: _i1.U64Codec.codec.decode(input),
      nodeId: _i1.U32Codec.codec.decode(input),
      twinId: _i1.U32Codec.codec.decode(input),
    );
  }

  /// u64
  final BigInt contractId;

  /// u32
  final int nodeId;

  /// u32
  final int twinId;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'NodeContractCanceled': {
          'contractId': contractId,
          'nodeId': nodeId,
          'twinId': twinId,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(contractId);
    size = size + _i1.U32Codec.codec.sizeHint(nodeId);
    size = size + _i1.U32Codec.codec.sizeHint(twinId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      contractId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nodeId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      twinId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is NodeContractCanceled &&
          other.contractId == contractId &&
          other.nodeId == nodeId &&
          other.twinId == twinId;

  @override
  int get hashCode => Object.hash(
        contractId,
        nodeId,
        twinId,
      );
}

/// A Name contract is canceled
class NameContractCanceled extends Event {
  const NameContractCanceled({required this.contractId});

  factory NameContractCanceled._decode(_i1.Input input) {
    return NameContractCanceled(contractId: _i1.U64Codec.codec.decode(input));
  }

  /// u64
  final BigInt contractId;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'NameContractCanceled': {'contractId': contractId}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(contractId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      contractId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is NameContractCanceled && other.contractId == contractId;

  @override
  int get hashCode => contractId.hashCode;
}

/// IP got reserved by a Node contract
class IPsReserved extends Event {
  const IPsReserved({
    required this.contractId,
    required this.publicIps,
  });

  factory IPsReserved._decode(_i1.Input input) {
    return IPsReserved(
      contractId: _i1.U64Codec.codec.decode(input),
      publicIps: const _i1.SequenceCodec<_i4.PublicIP>(_i4.PublicIP.codec)
          .decode(input),
    );
  }

  /// u64
  final BigInt contractId;

  /// BoundedVec<PublicIP, MaxNodeContractPublicIPs<T>>
  final List<_i4.PublicIP> publicIps;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'IPsReserved': {
          'contractId': contractId,
          'publicIps': publicIps.map((value) => value.toJson()).toList(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(contractId);
    size = size +
        const _i1.SequenceCodec<_i4.PublicIP>(_i4.PublicIP.codec)
            .sizeHint(publicIps);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      contractId,
      output,
    );
    const _i1.SequenceCodec<_i4.PublicIP>(_i4.PublicIP.codec).encodeTo(
      publicIps,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is IPsReserved &&
          other.contractId == contractId &&
          _i14.listsEqual(
            other.publicIps,
            publicIps,
          );

  @override
  int get hashCode => Object.hash(
        contractId,
        publicIps,
      );
}

/// IP got freed by a Node contract
class IPsFreed extends Event {
  const IPsFreed({
    required this.contractId,
    required this.publicIps,
  });

  factory IPsFreed._decode(_i1.Input input) {
    return IPsFreed(
      contractId: _i1.U64Codec.codec.decode(input),
      publicIps: const _i1.SequenceCodec<_i4.PublicIP>(_i4.PublicIP.codec)
          .decode(input),
    );
  }

  /// u64
  final BigInt contractId;

  /// BoundedVec<PublicIP, MaxNodeContractPublicIPs<T>>
  final List<_i4.PublicIP> publicIps;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'IPsFreed': {
          'contractId': contractId,
          'publicIps': publicIps.map((value) => value.toJson()).toList(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(contractId);
    size = size +
        const _i1.SequenceCodec<_i4.PublicIP>(_i4.PublicIP.codec)
            .sizeHint(publicIps);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      5,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      contractId,
      output,
    );
    const _i1.SequenceCodec<_i4.PublicIP>(_i4.PublicIP.codec).encodeTo(
      publicIps,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is IPsFreed &&
          other.contractId == contractId &&
          _i14.listsEqual(
            other.publicIps,
            publicIps,
          );

  @override
  int get hashCode => Object.hash(
        contractId,
        publicIps,
      );
}

/// Deprecated event
class ContractDeployed extends Event {
  const ContractDeployed(
    this.value0,
    this.value1,
  );

  factory ContractDeployed._decode(_i1.Input input) {
    return ContractDeployed(
      _i1.U64Codec.codec.decode(input),
      const _i1.U8ArrayCodec(32).decode(input),
    );
  }

  /// u64
  final BigInt value0;

  /// T::AccountId
  final _i5.AccountId32 value1;

  @override
  Map<String, List<dynamic>> toJson() => {
        'ContractDeployed': [
          value0,
          value1.toList(),
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(value0);
    size = size + const _i5.AccountId32Codec().sizeHint(value1);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      6,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value0,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      value1,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ContractDeployed &&
          other.value0 == value0 &&
          _i14.listsEqual(
            other.value1,
            value1,
          );

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
      );
}

/// Deprecated event
class ConsumptionReportReceived extends Event {
  const ConsumptionReportReceived(this.value0);

  factory ConsumptionReportReceived._decode(_i1.Input input) {
    return ConsumptionReportReceived(_i6.Consumption.codec.decode(input));
  }

  /// types::Consumption
  final _i6.Consumption value0;

  @override
  Map<String, Map<String, BigInt>> toJson() =>
      {'ConsumptionReportReceived': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i6.Consumption.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      7,
      output,
    );
    _i6.Consumption.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ConsumptionReportReceived && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class ContractBilled extends Event {
  const ContractBilled(this.value0);

  factory ContractBilled._decode(_i1.Input input) {
    return ContractBilled(_i7.ContractBill.codec.decode(input));
  }

  /// types::ContractBill
  final _i7.ContractBill value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'ContractBilled': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i7.ContractBill.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      8,
      output,
    );
    _i7.ContractBill.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ContractBilled && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

/// A certain amount of tokens got burned by a contract
class TokensBurned extends Event {
  const TokensBurned({
    required this.contractId,
    required this.amount,
  });

  factory TokensBurned._decode(_i1.Input input) {
    return TokensBurned(
      contractId: _i1.U64Codec.codec.decode(input),
      amount: _i1.U128Codec.codec.decode(input),
    );
  }

  /// u64
  final BigInt contractId;

  /// BalanceOf<T>
  final BigInt amount;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'TokensBurned': {
          'contractId': contractId,
          'amount': amount,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(contractId);
    size = size + _i1.U128Codec.codec.sizeHint(amount);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      9,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      contractId,
      output,
    );
    _i1.U128Codec.codec.encodeTo(
      amount,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is TokensBurned &&
          other.contractId == contractId &&
          other.amount == amount;

  @override
  int get hashCode => Object.hash(
        contractId,
        amount,
      );
}

/// Contract resources got updated
class UpdatedUsedResources extends Event {
  const UpdatedUsedResources(this.value0);

  factory UpdatedUsedResources._decode(_i1.Input input) {
    return UpdatedUsedResources(_i8.ContractResources.codec.decode(input));
  }

  /// types::ContractResources
  final _i8.ContractResources value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'UpdatedUsedResources': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i8.ContractResources.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      10,
      output,
    );
    _i8.ContractResources.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is UpdatedUsedResources && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

/// Network resources report received for contract
class NruConsumptionReportReceived extends Event {
  const NruConsumptionReportReceived(this.value0);

  factory NruConsumptionReportReceived._decode(_i1.Input input) {
    return NruConsumptionReportReceived(_i9.NruConsumption.codec.decode(input));
  }

  /// types::NruConsumption
  final _i9.NruConsumption value0;

  @override
  Map<String, Map<String, BigInt>> toJson() =>
      {'NruConsumptionReportReceived': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i9.NruConsumption.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      11,
      output,
    );
    _i9.NruConsumption.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is NruConsumptionReportReceived && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

/// a Rent contract is canceled
class RentContractCanceled extends Event {
  const RentContractCanceled({required this.contractId});

  factory RentContractCanceled._decode(_i1.Input input) {
    return RentContractCanceled(contractId: _i1.U64Codec.codec.decode(input));
  }

  /// u64
  final BigInt contractId;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'RentContractCanceled': {'contractId': contractId}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(contractId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      12,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      contractId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RentContractCanceled && other.contractId == contractId;

  @override
  int get hashCode => contractId.hashCode;
}

/// A Contract grace period is triggered
class ContractGracePeriodStarted extends Event {
  const ContractGracePeriodStarted({
    required this.contractId,
    required this.nodeId,
    required this.twinId,
    required this.blockNumber,
  });

  factory ContractGracePeriodStarted._decode(_i1.Input input) {
    return ContractGracePeriodStarted(
      contractId: _i1.U64Codec.codec.decode(input),
      nodeId: _i1.U32Codec.codec.decode(input),
      twinId: _i1.U32Codec.codec.decode(input),
      blockNumber: _i1.U64Codec.codec.decode(input),
    );
  }

  /// u64
  final BigInt contractId;

  /// u32
  final int nodeId;

  /// u32
  final int twinId;

  /// u64
  final BigInt blockNumber;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'ContractGracePeriodStarted': {
          'contractId': contractId,
          'nodeId': nodeId,
          'twinId': twinId,
          'blockNumber': blockNumber,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(contractId);
    size = size + _i1.U32Codec.codec.sizeHint(nodeId);
    size = size + _i1.U32Codec.codec.sizeHint(twinId);
    size = size + _i1.U64Codec.codec.sizeHint(blockNumber);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      13,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      contractId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nodeId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      twinId,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      blockNumber,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ContractGracePeriodStarted &&
          other.contractId == contractId &&
          other.nodeId == nodeId &&
          other.twinId == twinId &&
          other.blockNumber == blockNumber;

  @override
  int get hashCode => Object.hash(
        contractId,
        nodeId,
        twinId,
        blockNumber,
      );
}

/// A Contract grace period was ended
class ContractGracePeriodEnded extends Event {
  const ContractGracePeriodEnded({
    required this.contractId,
    required this.nodeId,
    required this.twinId,
  });

  factory ContractGracePeriodEnded._decode(_i1.Input input) {
    return ContractGracePeriodEnded(
      contractId: _i1.U64Codec.codec.decode(input),
      nodeId: _i1.U32Codec.codec.decode(input),
      twinId: _i1.U32Codec.codec.decode(input),
    );
  }

  /// u64
  final BigInt contractId;

  /// u32
  final int nodeId;

  /// u32
  final int twinId;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'ContractGracePeriodEnded': {
          'contractId': contractId,
          'nodeId': nodeId,
          'twinId': twinId,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(contractId);
    size = size + _i1.U32Codec.codec.sizeHint(nodeId);
    size = size + _i1.U32Codec.codec.sizeHint(twinId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      14,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      contractId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nodeId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      twinId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ContractGracePeriodEnded &&
          other.contractId == contractId &&
          other.nodeId == nodeId &&
          other.twinId == twinId;

  @override
  int get hashCode => Object.hash(
        contractId,
        nodeId,
        twinId,
      );
}

class SolutionProviderCreated extends Event {
  const SolutionProviderCreated(this.value0);

  factory SolutionProviderCreated._decode(_i1.Input input) {
    return SolutionProviderCreated(_i10.SolutionProvider.codec.decode(input));
  }

  /// types::SolutionProvider<T::AccountId>
  final _i10.SolutionProvider value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'SolutionProviderCreated': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i10.SolutionProvider.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      15,
      output,
    );
    _i10.SolutionProvider.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SolutionProviderCreated && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class SolutionProviderApproved extends Event {
  const SolutionProviderApproved(
    this.value0,
    this.value1,
  );

  factory SolutionProviderApproved._decode(_i1.Input input) {
    return SolutionProviderApproved(
      _i1.U64Codec.codec.decode(input),
      _i1.BoolCodec.codec.decode(input),
    );
  }

  /// u64
  final BigInt value0;

  /// bool
  final bool value1;

  @override
  Map<String, List<dynamic>> toJson() => {
        'SolutionProviderApproved': [
          value0,
          value1,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(value0);
    size = size + _i1.BoolCodec.codec.sizeHint(value1);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      16,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value0,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      value1,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SolutionProviderApproved &&
          other.value0 == value0 &&
          other.value1 == value1;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
      );
}

/// A Service contract is created
class ServiceContractCreated extends Event {
  const ServiceContractCreated(this.value0);

  factory ServiceContractCreated._decode(_i1.Input input) {
    return ServiceContractCreated(_i11.ServiceContract.codec.decode(input));
  }

  /// types::ServiceContract
  final _i11.ServiceContract value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'ServiceContractCreated': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i11.ServiceContract.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      17,
      output,
    );
    _i11.ServiceContract.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContractCreated && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

/// A Service contract metadata is set
class ServiceContractMetadataSet extends Event {
  const ServiceContractMetadataSet(this.value0);

  factory ServiceContractMetadataSet._decode(_i1.Input input) {
    return ServiceContractMetadataSet(_i11.ServiceContract.codec.decode(input));
  }

  /// types::ServiceContract
  final _i11.ServiceContract value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'ServiceContractMetadataSet': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i11.ServiceContract.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      18,
      output,
    );
    _i11.ServiceContract.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContractMetadataSet && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

/// A Service contract fees are set
class ServiceContractFeesSet extends Event {
  const ServiceContractFeesSet(this.value0);

  factory ServiceContractFeesSet._decode(_i1.Input input) {
    return ServiceContractFeesSet(_i11.ServiceContract.codec.decode(input));
  }

  /// types::ServiceContract
  final _i11.ServiceContract value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'ServiceContractFeesSet': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i11.ServiceContract.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      19,
      output,
    );
    _i11.ServiceContract.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContractFeesSet && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

/// A Service contract is approved
class ServiceContractApproved extends Event {
  const ServiceContractApproved(this.value0);

  factory ServiceContractApproved._decode(_i1.Input input) {
    return ServiceContractApproved(_i11.ServiceContract.codec.decode(input));
  }

  /// types::ServiceContract
  final _i11.ServiceContract value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'ServiceContractApproved': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i11.ServiceContract.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      20,
      output,
    );
    _i11.ServiceContract.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContractApproved && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

/// A Service contract is canceled
class ServiceContractCanceled extends Event {
  const ServiceContractCanceled({
    required this.serviceContractId,
    required this.cause,
  });

  factory ServiceContractCanceled._decode(_i1.Input input) {
    return ServiceContractCanceled(
      serviceContractId: _i1.U64Codec.codec.decode(input),
      cause: _i12.Cause.codec.decode(input),
    );
  }

  /// u64
  final BigInt serviceContractId;

  /// types::Cause
  final _i12.Cause cause;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'ServiceContractCanceled': {
          'serviceContractId': serviceContractId,
          'cause': cause.toJson(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(serviceContractId);
    size = size + _i12.Cause.codec.sizeHint(cause);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      21,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      serviceContractId,
      output,
    );
    _i12.Cause.codec.encodeTo(
      cause,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContractCanceled &&
          other.serviceContractId == serviceContractId &&
          other.cause == cause;

  @override
  int get hashCode => Object.hash(
        serviceContractId,
        cause,
      );
}

/// A Service contract is billed
class ServiceContractBilled extends Event {
  const ServiceContractBilled({
    required this.serviceContract,
    required this.bill,
    required this.amount,
  });

  factory ServiceContractBilled._decode(_i1.Input input) {
    return ServiceContractBilled(
      serviceContract: _i11.ServiceContract.codec.decode(input),
      bill: _i13.ServiceContractBill.codec.decode(input),
      amount: _i1.U128Codec.codec.decode(input),
    );
  }

  /// types::ServiceContract
  final _i11.ServiceContract serviceContract;

  /// types::ServiceContractBill
  final _i13.ServiceContractBill bill;

  /// BalanceOf<T>
  final BigInt amount;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'ServiceContractBilled': {
          'serviceContract': serviceContract.toJson(),
          'bill': bill.toJson(),
          'amount': amount,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i11.ServiceContract.codec.sizeHint(serviceContract);
    size = size + _i13.ServiceContractBill.codec.sizeHint(bill);
    size = size + _i1.U128Codec.codec.sizeHint(amount);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      22,
      output,
    );
    _i11.ServiceContract.codec.encodeTo(
      serviceContract,
      output,
    );
    _i13.ServiceContractBill.codec.encodeTo(
      bill,
      output,
    );
    _i1.U128Codec.codec.encodeTo(
      amount,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContractBilled &&
          other.serviceContract == serviceContract &&
          other.bill == bill &&
          other.amount == amount;

  @override
  int get hashCode => Object.hash(
        serviceContract,
        bill,
        amount,
      );
}

class BillingFrequencyChanged extends Event {
  const BillingFrequencyChanged(this.value0);

  factory BillingFrequencyChanged._decode(_i1.Input input) {
    return BillingFrequencyChanged(_i1.U64Codec.codec.decode(input));
  }

  /// u64
  final BigInt value0;

  @override
  Map<String, BigInt> toJson() => {'BillingFrequencyChanged': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      23,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is BillingFrequencyChanged && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class NodeExtraFeeSet extends Event {
  const NodeExtraFeeSet({
    required this.nodeId,
    required this.extraFee,
  });

  factory NodeExtraFeeSet._decode(_i1.Input input) {
    return NodeExtraFeeSet(
      nodeId: _i1.U32Codec.codec.decode(input),
      extraFee: _i1.U64Codec.codec.decode(input),
    );
  }

  /// u32
  final int nodeId;

  /// u64
  final BigInt extraFee;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'NodeExtraFeeSet': {
          'nodeId': nodeId,
          'extraFee': extraFee,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(nodeId);
    size = size + _i1.U64Codec.codec.sizeHint(extraFee);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      24,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nodeId,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      extraFee,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is NodeExtraFeeSet &&
          other.nodeId == nodeId &&
          other.extraFee == extraFee;

  @override
  int get hashCode => Object.hash(
        nodeId,
        extraFee,
      );
}
