// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i7;

import '../../sp_core/crypto/account_id32.dart' as _i6;
import '../types/contract_resources.dart' as _i4;
import '../types/nru_consumption.dart' as _i3;
import '../types/provider.dart' as _i5;

/// Contains one variant per dispatchable that can be called by an extrinsic.
abstract class Call {
  const Call();

  factory Call.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $CallCodec codec = $CallCodec();

  static const $Call values = $Call();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, Map<String, dynamic>> toJson();
}

class $Call {
  const $Call();

  CreateNodeContract createNodeContract({
    required int nodeId,
    required List<int> deploymentHash,
    required List<int> deploymentData,
    required int publicIps,
    BigInt? solutionProviderId,
  }) {
    return CreateNodeContract(
      nodeId: nodeId,
      deploymentHash: deploymentHash,
      deploymentData: deploymentData,
      publicIps: publicIps,
      solutionProviderId: solutionProviderId,
    );
  }

  UpdateNodeContract updateNodeContract({
    required BigInt contractId,
    required List<int> deploymentHash,
    required List<int> deploymentData,
  }) {
    return UpdateNodeContract(
      contractId: contractId,
      deploymentHash: deploymentHash,
      deploymentData: deploymentData,
    );
  }

  CancelContract cancelContract({required BigInt contractId}) {
    return CancelContract(contractId: contractId);
  }

  CreateNameContract createNameContract({required List<int> name}) {
    return CreateNameContract(name: name);
  }

  AddNruReports addNruReports({required List<_i3.NruConsumption> reports}) {
    return AddNruReports(reports: reports);
  }

  ReportContractResources reportContractResources(
      {required List<_i4.ContractResources> contractResources}) {
    return ReportContractResources(contractResources: contractResources);
  }

  CreateRentContract createRentContract({
    required int nodeId,
    BigInt? solutionProviderId,
  }) {
    return CreateRentContract(
      nodeId: nodeId,
      solutionProviderId: solutionProviderId,
    );
  }

  CreateSolutionProvider createSolutionProvider({
    required List<int> description,
    required List<int> link,
    required List<_i5.Provider> providers,
  }) {
    return CreateSolutionProvider(
      description: description,
      link: link,
      providers: providers,
    );
  }

  ApproveSolutionProvider approveSolutionProvider({
    required BigInt solutionProviderId,
    required bool approve,
  }) {
    return ApproveSolutionProvider(
      solutionProviderId: solutionProviderId,
      approve: approve,
    );
  }

  BillContractForBlock billContractForBlock({required BigInt contractId}) {
    return BillContractForBlock(contractId: contractId);
  }

  ServiceContractCreate serviceContractCreate({
    required _i6.AccountId32 serviceAccount,
    required _i6.AccountId32 consumerAccount,
  }) {
    return ServiceContractCreate(
      serviceAccount: serviceAccount,
      consumerAccount: consumerAccount,
    );
  }

  ServiceContractSetMetadata serviceContractSetMetadata({
    required BigInt serviceContractId,
    required List<int> metadata,
  }) {
    return ServiceContractSetMetadata(
      serviceContractId: serviceContractId,
      metadata: metadata,
    );
  }

  ServiceContractSetFees serviceContractSetFees({
    required BigInt serviceContractId,
    required BigInt baseFee,
    required BigInt variableFee,
  }) {
    return ServiceContractSetFees(
      serviceContractId: serviceContractId,
      baseFee: baseFee,
      variableFee: variableFee,
    );
  }

  ServiceContractApprove serviceContractApprove(
      {required BigInt serviceContractId}) {
    return ServiceContractApprove(serviceContractId: serviceContractId);
  }

  ServiceContractReject serviceContractReject(
      {required BigInt serviceContractId}) {
    return ServiceContractReject(serviceContractId: serviceContractId);
  }

  ServiceContractCancel serviceContractCancel(
      {required BigInt serviceContractId}) {
    return ServiceContractCancel(serviceContractId: serviceContractId);
  }

  ServiceContractBill serviceContractBill({
    required BigInt serviceContractId,
    required BigInt variableAmount,
    required List<int> metadata,
  }) {
    return ServiceContractBill(
      serviceContractId: serviceContractId,
      variableAmount: variableAmount,
      metadata: metadata,
    );
  }

  ChangeBillingFrequency changeBillingFrequency({required BigInt frequency}) {
    return ChangeBillingFrequency(frequency: frequency);
  }

  AttachSolutionProviderId attachSolutionProviderId({
    required BigInt contractId,
    required BigInt solutionProviderId,
  }) {
    return AttachSolutionProviderId(
      contractId: contractId,
      solutionProviderId: solutionProviderId,
    );
  }

  SetDedicatedNodeExtraFee setDedicatedNodeExtraFee({
    required int nodeId,
    required BigInt extraFee,
  }) {
    return SetDedicatedNodeExtraFee(
      nodeId: nodeId,
      extraFee: extraFee,
    );
  }
}

class $CallCodec with _i1.Codec<Call> {
  const $CallCodec();

  @override
  Call decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return CreateNodeContract._decode(input);
      case 1:
        return UpdateNodeContract._decode(input);
      case 2:
        return CancelContract._decode(input);
      case 4:
        return CreateNameContract._decode(input);
      case 5:
        return AddNruReports._decode(input);
      case 6:
        return ReportContractResources._decode(input);
      case 7:
        return CreateRentContract._decode(input);
      case 8:
        return CreateSolutionProvider._decode(input);
      case 9:
        return ApproveSolutionProvider._decode(input);
      case 10:
        return BillContractForBlock._decode(input);
      case 11:
        return ServiceContractCreate._decode(input);
      case 12:
        return ServiceContractSetMetadata._decode(input);
      case 13:
        return ServiceContractSetFees._decode(input);
      case 14:
        return ServiceContractApprove._decode(input);
      case 15:
        return ServiceContractReject._decode(input);
      case 16:
        return ServiceContractCancel._decode(input);
      case 17:
        return ServiceContractBill._decode(input);
      case 18:
        return ChangeBillingFrequency._decode(input);
      case 19:
        return AttachSolutionProviderId._decode(input);
      case 20:
        return SetDedicatedNodeExtraFee._decode(input);
      default:
        throw Exception('Call: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Call value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case CreateNodeContract:
        (value as CreateNodeContract).encodeTo(output);
        break;
      case UpdateNodeContract:
        (value as UpdateNodeContract).encodeTo(output);
        break;
      case CancelContract:
        (value as CancelContract).encodeTo(output);
        break;
      case CreateNameContract:
        (value as CreateNameContract).encodeTo(output);
        break;
      case AddNruReports:
        (value as AddNruReports).encodeTo(output);
        break;
      case ReportContractResources:
        (value as ReportContractResources).encodeTo(output);
        break;
      case CreateRentContract:
        (value as CreateRentContract).encodeTo(output);
        break;
      case CreateSolutionProvider:
        (value as CreateSolutionProvider).encodeTo(output);
        break;
      case ApproveSolutionProvider:
        (value as ApproveSolutionProvider).encodeTo(output);
        break;
      case BillContractForBlock:
        (value as BillContractForBlock).encodeTo(output);
        break;
      case ServiceContractCreate:
        (value as ServiceContractCreate).encodeTo(output);
        break;
      case ServiceContractSetMetadata:
        (value as ServiceContractSetMetadata).encodeTo(output);
        break;
      case ServiceContractSetFees:
        (value as ServiceContractSetFees).encodeTo(output);
        break;
      case ServiceContractApprove:
        (value as ServiceContractApprove).encodeTo(output);
        break;
      case ServiceContractReject:
        (value as ServiceContractReject).encodeTo(output);
        break;
      case ServiceContractCancel:
        (value as ServiceContractCancel).encodeTo(output);
        break;
      case ServiceContractBill:
        (value as ServiceContractBill).encodeTo(output);
        break;
      case ChangeBillingFrequency:
        (value as ChangeBillingFrequency).encodeTo(output);
        break;
      case AttachSolutionProviderId:
        (value as AttachSolutionProviderId).encodeTo(output);
        break;
      case SetDedicatedNodeExtraFee:
        (value as SetDedicatedNodeExtraFee).encodeTo(output);
        break;
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Call value) {
    switch (value.runtimeType) {
      case CreateNodeContract:
        return (value as CreateNodeContract)._sizeHint();
      case UpdateNodeContract:
        return (value as UpdateNodeContract)._sizeHint();
      case CancelContract:
        return (value as CancelContract)._sizeHint();
      case CreateNameContract:
        return (value as CreateNameContract)._sizeHint();
      case AddNruReports:
        return (value as AddNruReports)._sizeHint();
      case ReportContractResources:
        return (value as ReportContractResources)._sizeHint();
      case CreateRentContract:
        return (value as CreateRentContract)._sizeHint();
      case CreateSolutionProvider:
        return (value as CreateSolutionProvider)._sizeHint();
      case ApproveSolutionProvider:
        return (value as ApproveSolutionProvider)._sizeHint();
      case BillContractForBlock:
        return (value as BillContractForBlock)._sizeHint();
      case ServiceContractCreate:
        return (value as ServiceContractCreate)._sizeHint();
      case ServiceContractSetMetadata:
        return (value as ServiceContractSetMetadata)._sizeHint();
      case ServiceContractSetFees:
        return (value as ServiceContractSetFees)._sizeHint();
      case ServiceContractApprove:
        return (value as ServiceContractApprove)._sizeHint();
      case ServiceContractReject:
        return (value as ServiceContractReject)._sizeHint();
      case ServiceContractCancel:
        return (value as ServiceContractCancel)._sizeHint();
      case ServiceContractBill:
        return (value as ServiceContractBill)._sizeHint();
      case ChangeBillingFrequency:
        return (value as ChangeBillingFrequency)._sizeHint();
      case AttachSolutionProviderId:
        return (value as AttachSolutionProviderId)._sizeHint();
      case SetDedicatedNodeExtraFee:
        return (value as SetDedicatedNodeExtraFee)._sizeHint();
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class CreateNodeContract extends Call {
  const CreateNodeContract({
    required this.nodeId,
    required this.deploymentHash,
    required this.deploymentData,
    required this.publicIps,
    this.solutionProviderId,
  });

  factory CreateNodeContract._decode(_i1.Input input) {
    return CreateNodeContract(
      nodeId: _i1.U32Codec.codec.decode(input),
      deploymentHash: const _i1.U8ArrayCodec(32).decode(input),
      deploymentData: _i1.U8SequenceCodec.codec.decode(input),
      publicIps: _i1.U32Codec.codec.decode(input),
      solutionProviderId:
          const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).decode(input),
    );
  }

  /// u32
  final int nodeId;

  /// HexHash
  final List<int> deploymentHash;

  /// DeploymentDataInput<T>
  final List<int> deploymentData;

  /// u32
  final int publicIps;

  /// Option<u64>
  final BigInt? solutionProviderId;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'create_node_contract': {
          'nodeId': nodeId,
          'deploymentHash': deploymentHash.toList(),
          'deploymentData': deploymentData,
          'publicIps': publicIps,
          'solutionProviderId': solutionProviderId,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(nodeId);
    size = size + const _i1.U8ArrayCodec(32).sizeHint(deploymentHash);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(deploymentData);
    size = size + _i1.U32Codec.codec.sizeHint(publicIps);
    size = size +
        const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec)
            .sizeHint(solutionProviderId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nodeId,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      deploymentHash,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      deploymentData,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      publicIps,
      output,
    );
    const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).encodeTo(
      solutionProviderId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is CreateNodeContract &&
          other.nodeId == nodeId &&
          _i7.listsEqual(
            other.deploymentHash,
            deploymentHash,
          ) &&
          _i7.listsEqual(
            other.deploymentData,
            deploymentData,
          ) &&
          other.publicIps == publicIps &&
          other.solutionProviderId == solutionProviderId;

  @override
  int get hashCode => Object.hash(
        nodeId,
        deploymentHash,
        deploymentData,
        publicIps,
        solutionProviderId,
      );
}

class UpdateNodeContract extends Call {
  const UpdateNodeContract({
    required this.contractId,
    required this.deploymentHash,
    required this.deploymentData,
  });

  factory UpdateNodeContract._decode(_i1.Input input) {
    return UpdateNodeContract(
      contractId: _i1.U64Codec.codec.decode(input),
      deploymentHash: const _i1.U8ArrayCodec(32).decode(input),
      deploymentData: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// u64
  final BigInt contractId;

  /// HexHash
  final List<int> deploymentHash;

  /// DeploymentDataInput<T>
  final List<int> deploymentData;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'update_node_contract': {
          'contractId': contractId,
          'deploymentHash': deploymentHash.toList(),
          'deploymentData': deploymentData,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(contractId);
    size = size + const _i1.U8ArrayCodec(32).sizeHint(deploymentHash);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(deploymentData);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      contractId,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      deploymentHash,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      deploymentData,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is UpdateNodeContract &&
          other.contractId == contractId &&
          _i7.listsEqual(
            other.deploymentHash,
            deploymentHash,
          ) &&
          _i7.listsEqual(
            other.deploymentData,
            deploymentData,
          );

  @override
  int get hashCode => Object.hash(
        contractId,
        deploymentHash,
        deploymentData,
      );
}

class CancelContract extends Call {
  const CancelContract({required this.contractId});

  factory CancelContract._decode(_i1.Input input) {
    return CancelContract(contractId: _i1.U64Codec.codec.decode(input));
  }

  /// u64
  final BigInt contractId;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'cancel_contract': {'contractId': contractId}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(contractId);
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
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is CancelContract && other.contractId == contractId;

  @override
  int get hashCode => contractId.hashCode;
}

class CreateNameContract extends Call {
  const CreateNameContract({required this.name});

  factory CreateNameContract._decode(_i1.Input input) {
    return CreateNameContract(name: _i1.U8SequenceCodec.codec.decode(input));
  }

  /// Vec<u8>
  final List<int> name;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'create_name_contract': {'name': name}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(name);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      name,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is CreateNameContract &&
          _i7.listsEqual(
            other.name,
            name,
          );

  @override
  int get hashCode => name.hashCode;
}

class AddNruReports extends Call {
  const AddNruReports({required this.reports});

  factory AddNruReports._decode(_i1.Input input) {
    return AddNruReports(
        reports: const _i1.SequenceCodec<_i3.NruConsumption>(
                _i3.NruConsumption.codec)
            .decode(input));
  }

  /// Vec<types::NruConsumption>
  final List<_i3.NruConsumption> reports;

  @override
  Map<String, Map<String, List<Map<String, BigInt>>>> toJson() => {
        'add_nru_reports': {
          'reports': reports.map((value) => value.toJson()).toList()
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size +
        const _i1.SequenceCodec<_i3.NruConsumption>(_i3.NruConsumption.codec)
            .sizeHint(reports);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      5,
      output,
    );
    const _i1.SequenceCodec<_i3.NruConsumption>(_i3.NruConsumption.codec)
        .encodeTo(
      reports,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is AddNruReports &&
          _i7.listsEqual(
            other.reports,
            reports,
          );

  @override
  int get hashCode => reports.hashCode;
}

class ReportContractResources extends Call {
  const ReportContractResources({required this.contractResources});

  factory ReportContractResources._decode(_i1.Input input) {
    return ReportContractResources(
        contractResources: const _i1.SequenceCodec<_i4.ContractResources>(
                _i4.ContractResources.codec)
            .decode(input));
  }

  /// Vec<types::ContractResources>
  final List<_i4.ContractResources> contractResources;

  @override
  Map<String, Map<String, List<Map<String, dynamic>>>> toJson() => {
        'report_contract_resources': {
          'contractResources':
              contractResources.map((value) => value.toJson()).toList()
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size +
        const _i1.SequenceCodec<_i4.ContractResources>(
                _i4.ContractResources.codec)
            .sizeHint(contractResources);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      6,
      output,
    );
    const _i1.SequenceCodec<_i4.ContractResources>(_i4.ContractResources.codec)
        .encodeTo(
      contractResources,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ReportContractResources &&
          _i7.listsEqual(
            other.contractResources,
            contractResources,
          );

  @override
  int get hashCode => contractResources.hashCode;
}

class CreateRentContract extends Call {
  const CreateRentContract({
    required this.nodeId,
    this.solutionProviderId,
  });

  factory CreateRentContract._decode(_i1.Input input) {
    return CreateRentContract(
      nodeId: _i1.U32Codec.codec.decode(input),
      solutionProviderId:
          const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).decode(input),
    );
  }

  /// u32
  final int nodeId;

  /// Option<u64>
  final BigInt? solutionProviderId;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'create_rent_contract': {
          'nodeId': nodeId,
          'solutionProviderId': solutionProviderId,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(nodeId);
    size = size +
        const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec)
            .sizeHint(solutionProviderId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      7,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nodeId,
      output,
    );
    const _i1.OptionCodec<BigInt>(_i1.U64Codec.codec).encodeTo(
      solutionProviderId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is CreateRentContract &&
          other.nodeId == nodeId &&
          other.solutionProviderId == solutionProviderId;

  @override
  int get hashCode => Object.hash(
        nodeId,
        solutionProviderId,
      );
}

class CreateSolutionProvider extends Call {
  const CreateSolutionProvider({
    required this.description,
    required this.link,
    required this.providers,
  });

  factory CreateSolutionProvider._decode(_i1.Input input) {
    return CreateSolutionProvider(
      description: _i1.U8SequenceCodec.codec.decode(input),
      link: _i1.U8SequenceCodec.codec.decode(input),
      providers: const _i1.SequenceCodec<_i5.Provider>(_i5.Provider.codec)
          .decode(input),
    );
  }

  /// Vec<u8>
  final List<int> description;

  /// Vec<u8>
  final List<int> link;

  /// Vec<types::Provider<T::AccountId>>
  final List<_i5.Provider> providers;

  @override
  Map<String, Map<String, List<dynamic>>> toJson() => {
        'create_solution_provider': {
          'description': description,
          'link': link,
          'providers': providers.map((value) => value.toJson()).toList(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(description);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(link);
    size = size +
        const _i1.SequenceCodec<_i5.Provider>(_i5.Provider.codec)
            .sizeHint(providers);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      8,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      description,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      link,
      output,
    );
    const _i1.SequenceCodec<_i5.Provider>(_i5.Provider.codec).encodeTo(
      providers,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is CreateSolutionProvider &&
          _i7.listsEqual(
            other.description,
            description,
          ) &&
          _i7.listsEqual(
            other.link,
            link,
          ) &&
          _i7.listsEqual(
            other.providers,
            providers,
          );

  @override
  int get hashCode => Object.hash(
        description,
        link,
        providers,
      );
}

class ApproveSolutionProvider extends Call {
  const ApproveSolutionProvider({
    required this.solutionProviderId,
    required this.approve,
  });

  factory ApproveSolutionProvider._decode(_i1.Input input) {
    return ApproveSolutionProvider(
      solutionProviderId: _i1.U64Codec.codec.decode(input),
      approve: _i1.BoolCodec.codec.decode(input),
    );
  }

  /// u64
  final BigInt solutionProviderId;

  /// bool
  final bool approve;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'approve_solution_provider': {
          'solutionProviderId': solutionProviderId,
          'approve': approve,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(solutionProviderId);
    size = size + _i1.BoolCodec.codec.sizeHint(approve);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      9,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      solutionProviderId,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      approve,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ApproveSolutionProvider &&
          other.solutionProviderId == solutionProviderId &&
          other.approve == approve;

  @override
  int get hashCode => Object.hash(
        solutionProviderId,
        approve,
      );
}

class BillContractForBlock extends Call {
  const BillContractForBlock({required this.contractId});

  factory BillContractForBlock._decode(_i1.Input input) {
    return BillContractForBlock(contractId: _i1.U64Codec.codec.decode(input));
  }

  /// u64
  final BigInt contractId;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'bill_contract_for_block': {'contractId': contractId}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(contractId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      10,
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
      other is BillContractForBlock && other.contractId == contractId;

  @override
  int get hashCode => contractId.hashCode;
}

class ServiceContractCreate extends Call {
  const ServiceContractCreate({
    required this.serviceAccount,
    required this.consumerAccount,
  });

  factory ServiceContractCreate._decode(_i1.Input input) {
    return ServiceContractCreate(
      serviceAccount: const _i1.U8ArrayCodec(32).decode(input),
      consumerAccount: const _i1.U8ArrayCodec(32).decode(input),
    );
  }

  /// T::AccountId
  final _i6.AccountId32 serviceAccount;

  /// T::AccountId
  final _i6.AccountId32 consumerAccount;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'service_contract_create': {
          'serviceAccount': serviceAccount.toList(),
          'consumerAccount': consumerAccount.toList(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i6.AccountId32Codec().sizeHint(serviceAccount);
    size = size + const _i6.AccountId32Codec().sizeHint(consumerAccount);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      11,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      serviceAccount,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      consumerAccount,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContractCreate &&
          _i7.listsEqual(
            other.serviceAccount,
            serviceAccount,
          ) &&
          _i7.listsEqual(
            other.consumerAccount,
            consumerAccount,
          );

  @override
  int get hashCode => Object.hash(
        serviceAccount,
        consumerAccount,
      );
}

class ServiceContractSetMetadata extends Call {
  const ServiceContractSetMetadata({
    required this.serviceContractId,
    required this.metadata,
  });

  factory ServiceContractSetMetadata._decode(_i1.Input input) {
    return ServiceContractSetMetadata(
      serviceContractId: _i1.U64Codec.codec.decode(input),
      metadata: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// u64
  final BigInt serviceContractId;

  /// Vec<u8>
  final List<int> metadata;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'service_contract_set_metadata': {
          'serviceContractId': serviceContractId,
          'metadata': metadata,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(serviceContractId);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(metadata);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      12,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      serviceContractId,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      metadata,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContractSetMetadata &&
          other.serviceContractId == serviceContractId &&
          _i7.listsEqual(
            other.metadata,
            metadata,
          );

  @override
  int get hashCode => Object.hash(
        serviceContractId,
        metadata,
      );
}

class ServiceContractSetFees extends Call {
  const ServiceContractSetFees({
    required this.serviceContractId,
    required this.baseFee,
    required this.variableFee,
  });

  factory ServiceContractSetFees._decode(_i1.Input input) {
    return ServiceContractSetFees(
      serviceContractId: _i1.U64Codec.codec.decode(input),
      baseFee: _i1.U64Codec.codec.decode(input),
      variableFee: _i1.U64Codec.codec.decode(input),
    );
  }

  /// u64
  final BigInt serviceContractId;

  /// u64
  final BigInt baseFee;

  /// u64
  final BigInt variableFee;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'service_contract_set_fees': {
          'serviceContractId': serviceContractId,
          'baseFee': baseFee,
          'variableFee': variableFee,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(serviceContractId);
    size = size + _i1.U64Codec.codec.sizeHint(baseFee);
    size = size + _i1.U64Codec.codec.sizeHint(variableFee);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      13,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      serviceContractId,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      baseFee,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      variableFee,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContractSetFees &&
          other.serviceContractId == serviceContractId &&
          other.baseFee == baseFee &&
          other.variableFee == variableFee;

  @override
  int get hashCode => Object.hash(
        serviceContractId,
        baseFee,
        variableFee,
      );
}

class ServiceContractApprove extends Call {
  const ServiceContractApprove({required this.serviceContractId});

  factory ServiceContractApprove._decode(_i1.Input input) {
    return ServiceContractApprove(
        serviceContractId: _i1.U64Codec.codec.decode(input));
  }

  /// u64
  final BigInt serviceContractId;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'service_contract_approve': {'serviceContractId': serviceContractId}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(serviceContractId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      14,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      serviceContractId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContractApprove &&
          other.serviceContractId == serviceContractId;

  @override
  int get hashCode => serviceContractId.hashCode;
}

class ServiceContractReject extends Call {
  const ServiceContractReject({required this.serviceContractId});

  factory ServiceContractReject._decode(_i1.Input input) {
    return ServiceContractReject(
        serviceContractId: _i1.U64Codec.codec.decode(input));
  }

  /// u64
  final BigInt serviceContractId;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'service_contract_reject': {'serviceContractId': serviceContractId}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(serviceContractId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      15,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      serviceContractId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContractReject &&
          other.serviceContractId == serviceContractId;

  @override
  int get hashCode => serviceContractId.hashCode;
}

class ServiceContractCancel extends Call {
  const ServiceContractCancel({required this.serviceContractId});

  factory ServiceContractCancel._decode(_i1.Input input) {
    return ServiceContractCancel(
        serviceContractId: _i1.U64Codec.codec.decode(input));
  }

  /// u64
  final BigInt serviceContractId;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'service_contract_cancel': {'serviceContractId': serviceContractId}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(serviceContractId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      16,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      serviceContractId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContractCancel &&
          other.serviceContractId == serviceContractId;

  @override
  int get hashCode => serviceContractId.hashCode;
}

class ServiceContractBill extends Call {
  const ServiceContractBill({
    required this.serviceContractId,
    required this.variableAmount,
    required this.metadata,
  });

  factory ServiceContractBill._decode(_i1.Input input) {
    return ServiceContractBill(
      serviceContractId: _i1.U64Codec.codec.decode(input),
      variableAmount: _i1.U64Codec.codec.decode(input),
      metadata: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// u64
  final BigInt serviceContractId;

  /// u64
  final BigInt variableAmount;

  /// Vec<u8>
  final List<int> metadata;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'service_contract_bill': {
          'serviceContractId': serviceContractId,
          'variableAmount': variableAmount,
          'metadata': metadata,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(serviceContractId);
    size = size + _i1.U64Codec.codec.sizeHint(variableAmount);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(metadata);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      17,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      serviceContractId,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      variableAmount,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      metadata,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContractBill &&
          other.serviceContractId == serviceContractId &&
          other.variableAmount == variableAmount &&
          _i7.listsEqual(
            other.metadata,
            metadata,
          );

  @override
  int get hashCode => Object.hash(
        serviceContractId,
        variableAmount,
        metadata,
      );
}

class ChangeBillingFrequency extends Call {
  const ChangeBillingFrequency({required this.frequency});

  factory ChangeBillingFrequency._decode(_i1.Input input) {
    return ChangeBillingFrequency(frequency: _i1.U64Codec.codec.decode(input));
  }

  /// u64
  final BigInt frequency;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'change_billing_frequency': {'frequency': frequency}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(frequency);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      18,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      frequency,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ChangeBillingFrequency && other.frequency == frequency;

  @override
  int get hashCode => frequency.hashCode;
}

class AttachSolutionProviderId extends Call {
  const AttachSolutionProviderId({
    required this.contractId,
    required this.solutionProviderId,
  });

  factory AttachSolutionProviderId._decode(_i1.Input input) {
    return AttachSolutionProviderId(
      contractId: _i1.U64Codec.codec.decode(input),
      solutionProviderId: _i1.U64Codec.codec.decode(input),
    );
  }

  /// u64
  final BigInt contractId;

  /// u64
  final BigInt solutionProviderId;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'attach_solution_provider_id': {
          'contractId': contractId,
          'solutionProviderId': solutionProviderId,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(contractId);
    size = size + _i1.U64Codec.codec.sizeHint(solutionProviderId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      19,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      contractId,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      solutionProviderId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is AttachSolutionProviderId &&
          other.contractId == contractId &&
          other.solutionProviderId == solutionProviderId;

  @override
  int get hashCode => Object.hash(
        contractId,
        solutionProviderId,
      );
}

class SetDedicatedNodeExtraFee extends Call {
  const SetDedicatedNodeExtraFee({
    required this.nodeId,
    required this.extraFee,
  });

  factory SetDedicatedNodeExtraFee._decode(_i1.Input input) {
    return SetDedicatedNodeExtraFee(
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
        'set_dedicated_node_extra_fee': {
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
      20,
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
      other is SetDedicatedNodeExtraFee &&
          other.nodeId == nodeId &&
          other.extraFee == extraFee;

  @override
  int get hashCode => Object.hash(
        nodeId,
        extraFee,
      );
}
