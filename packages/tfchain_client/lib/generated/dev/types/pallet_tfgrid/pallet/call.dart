// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i15;

import '../../sp_core/crypto/account_id32.dart' as _i11;
import '../../tfchain_support/resources/resources.dart' as _i6;
import '../../tfchain_support/types/farm_certification.dart' as _i5;
import '../../tfchain_support/types/farming_policy_limit.dart' as _i13;
import '../../tfchain_support/types/interface_2.dart' as _i8;
import '../../tfchain_support/types/ip4.dart' as _i4;
import '../../tfchain_support/types/node_certification.dart' as _i9;
import '../../tfchain_support/types/power.dart' as _i14;
import '../../tfchain_support/types/public_config.dart' as _i10;
import '../types/location_input.dart' as _i7;
import '../types/policy.dart' as _i12;
import '../types/storage_version.dart' as _i3;

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

  Map<String, dynamic> toJson();
}

class $Call {
  const $Call();

  SetStorageVersion setStorageVersion({required _i3.StorageVersion version}) {
    return SetStorageVersion(version: version);
  }

  CreateFarm createFarm({
    required List<int> name,
    required List<_i4.Ip4> publicIps,
  }) {
    return CreateFarm(
      name: name,
      publicIps: publicIps,
    );
  }

  UpdateFarm updateFarm({
    required int farmId,
    required List<int> name,
  }) {
    return UpdateFarm(
      farmId: farmId,
      name: name,
    );
  }

  AddStellarPayoutV2address addStellarPayoutV2address({
    required int farmId,
    required List<int> stellarAddress,
  }) {
    return AddStellarPayoutV2address(
      farmId: farmId,
      stellarAddress: stellarAddress,
    );
  }

  SetFarmCertification setFarmCertification({
    required int farmId,
    required _i5.FarmCertification certification,
  }) {
    return SetFarmCertification(
      farmId: farmId,
      certification: certification,
    );
  }

  AddFarmIp addFarmIp({
    required int farmId,
    required List<int> ip,
    required List<int> gw,
  }) {
    return AddFarmIp(
      farmId: farmId,
      ip: ip,
      gw: gw,
    );
  }

  RemoveFarmIp removeFarmIp({
    required int farmId,
    required List<int> ip,
  }) {
    return RemoveFarmIp(
      farmId: farmId,
      ip: ip,
    );
  }

  CreateNode createNode({
    required int farmId,
    required _i6.Resources resources,
    required _i7.LocationInput location,
    required List<_i8.Interface> interfaces,
    required bool secureBoot,
    required bool virtualized,
    List<int>? serialNumber,
  }) {
    return CreateNode(
      farmId: farmId,
      resources: resources,
      location: location,
      interfaces: interfaces,
      secureBoot: secureBoot,
      virtualized: virtualized,
      serialNumber: serialNumber,
    );
  }

  UpdateNode updateNode({
    required int nodeId,
    required int farmId,
    required _i6.Resources resources,
    required _i7.LocationInput location,
    required List<_i8.Interface> interfaces,
    required bool secureBoot,
    required bool virtualized,
    List<int>? serialNumber,
  }) {
    return UpdateNode(
      nodeId: nodeId,
      farmId: farmId,
      resources: resources,
      location: location,
      interfaces: interfaces,
      secureBoot: secureBoot,
      virtualized: virtualized,
      serialNumber: serialNumber,
    );
  }

  SetNodeCertification setNodeCertification({
    required int nodeId,
    required _i9.NodeCertification nodeCertification,
  }) {
    return SetNodeCertification(
      nodeId: nodeId,
      nodeCertification: nodeCertification,
    );
  }

  ReportUptime reportUptime({required BigInt uptime}) {
    return ReportUptime(uptime: uptime);
  }

  AddNodePublicConfig addNodePublicConfig({
    required int farmId,
    required int nodeId,
    _i10.PublicConfig? publicConfig,
  }) {
    return AddNodePublicConfig(
      farmId: farmId,
      nodeId: nodeId,
      publicConfig: publicConfig,
    );
  }

  DeleteNode deleteNode({required int nodeId}) {
    return DeleteNode(nodeId: nodeId);
  }

  CreateEntity createEntity({
    required _i11.AccountId32 target,
    required List<int> name,
    required List<int> country,
    required List<int> city,
    required List<int> signature,
  }) {
    return CreateEntity(
      target: target,
      name: name,
      country: country,
      city: city,
      signature: signature,
    );
  }

  UpdateEntity updateEntity({
    required List<int> name,
    required List<int> country,
    required List<int> city,
  }) {
    return UpdateEntity(
      name: name,
      country: country,
      city: city,
    );
  }

  DeleteEntity deleteEntity() {
    return DeleteEntity();
  }

  CreateTwin createTwin({
    List<int>? relay,
    List<int>? pk,
  }) {
    return CreateTwin(
      relay: relay,
      pk: pk,
    );
  }

  UpdateTwin updateTwin({
    List<int>? relay,
    List<int>? pk,
  }) {
    return UpdateTwin(
      relay: relay,
      pk: pk,
    );
  }

  AddTwinEntity addTwinEntity({
    required int twinId,
    required int entityId,
    required List<int> signature,
  }) {
    return AddTwinEntity(
      twinId: twinId,
      entityId: entityId,
      signature: signature,
    );
  }

  DeleteTwinEntity deleteTwinEntity({
    required int twinId,
    required int entityId,
  }) {
    return DeleteTwinEntity(
      twinId: twinId,
      entityId: entityId,
    );
  }

  CreatePricingPolicy createPricingPolicy({
    required List<int> name,
    required _i12.Policy su,
    required _i12.Policy cu,
    required _i12.Policy nu,
    required _i12.Policy ipu,
    required _i12.Policy uniqueName,
    required _i12.Policy domainName,
    required _i11.AccountId32 foundationAccount,
    required _i11.AccountId32 certifiedSalesAccount,
    required int discountForDedicationNodes,
  }) {
    return CreatePricingPolicy(
      name: name,
      su: su,
      cu: cu,
      nu: nu,
      ipu: ipu,
      uniqueName: uniqueName,
      domainName: domainName,
      foundationAccount: foundationAccount,
      certifiedSalesAccount: certifiedSalesAccount,
      discountForDedicationNodes: discountForDedicationNodes,
    );
  }

  UpdatePricingPolicy updatePricingPolicy({
    required int pricingPolicyId,
    required List<int> name,
    required _i12.Policy su,
    required _i12.Policy cu,
    required _i12.Policy nu,
    required _i12.Policy ipu,
    required _i12.Policy uniqueName,
    required _i12.Policy domainName,
    required _i11.AccountId32 foundationAccount,
    required _i11.AccountId32 certifiedSalesAccount,
    required int discountForDedicationNodes,
  }) {
    return UpdatePricingPolicy(
      pricingPolicyId: pricingPolicyId,
      name: name,
      su: su,
      cu: cu,
      nu: nu,
      ipu: ipu,
      uniqueName: uniqueName,
      domainName: domainName,
      foundationAccount: foundationAccount,
      certifiedSalesAccount: certifiedSalesAccount,
      discountForDedicationNodes: discountForDedicationNodes,
    );
  }

  CreateFarmingPolicy createFarmingPolicy({
    required List<int> name,
    required int su,
    required int cu,
    required int nu,
    required int ipv4,
    required int minimalUptime,
    required int policyEnd,
    required bool immutable,
    required bool default_,
    required _i9.NodeCertification nodeCertification,
    required _i5.FarmCertification farmCertification,
  }) {
    return CreateFarmingPolicy(
      name: name,
      su: su,
      cu: cu,
      nu: nu,
      ipv4: ipv4,
      minimalUptime: minimalUptime,
      policyEnd: policyEnd,
      immutable: immutable,
      default_: default_,
      nodeCertification: nodeCertification,
      farmCertification: farmCertification,
    );
  }

  UserAcceptTc userAcceptTc({
    required List<int> documentLink,
    required List<int> documentHash,
  }) {
    return UserAcceptTc(
      documentLink: documentLink,
      documentHash: documentHash,
    );
  }

  DeleteNodeFarm deleteNodeFarm({required int nodeId}) {
    return DeleteNodeFarm(nodeId: nodeId);
  }

  SetFarmDedicated setFarmDedicated({
    required int farmId,
    required bool dedicated,
  }) {
    return SetFarmDedicated(
      farmId: farmId,
      dedicated: dedicated,
    );
  }

  ForceResetFarmIp forceResetFarmIp({
    required int farmId,
    required List<int> ip,
  }) {
    return ForceResetFarmIp(
      farmId: farmId,
      ip: ip,
    );
  }

  SetConnectionPrice setConnectionPrice({required int price}) {
    return SetConnectionPrice(price: price);
  }

  AddNodeCertifier addNodeCertifier({required _i11.AccountId32 certifier}) {
    return AddNodeCertifier(certifier: certifier);
  }

  RemoveNodeCertifier removeNodeCertifier(
      {required _i11.AccountId32 certifier}) {
    return RemoveNodeCertifier(certifier: certifier);
  }

  UpdateFarmingPolicy updateFarmingPolicy({
    required int farmingPolicyId,
    required List<int> name,
    required int su,
    required int cu,
    required int nu,
    required int ipv4,
    required int minimalUptime,
    required int policyEnd,
    required bool default_,
    required _i9.NodeCertification nodeCertification,
    required _i5.FarmCertification farmCertification,
  }) {
    return UpdateFarmingPolicy(
      farmingPolicyId: farmingPolicyId,
      name: name,
      su: su,
      cu: cu,
      nu: nu,
      ipv4: ipv4,
      minimalUptime: minimalUptime,
      policyEnd: policyEnd,
      default_: default_,
      nodeCertification: nodeCertification,
      farmCertification: farmCertification,
    );
  }

  AttachPolicyToFarm attachPolicyToFarm({
    required int farmId,
    _i13.FarmingPolicyLimit? limits,
  }) {
    return AttachPolicyToFarm(
      farmId: farmId,
      limits: limits,
    );
  }

  SetZosVersion setZosVersion({required List<int> zosVersion}) {
    return SetZosVersion(zosVersion: zosVersion);
  }

  ChangePowerState changePowerState({required _i14.Power powerState}) {
    return ChangePowerState(powerState: powerState);
  }

  ChangePowerTarget changePowerTarget({
    required int nodeId,
    required _i14.Power powerTarget,
  }) {
    return ChangePowerTarget(
      nodeId: nodeId,
      powerTarget: powerTarget,
    );
  }

  BondTwinAccount bondTwinAccount({required int twinId}) {
    return BondTwinAccount(twinId: twinId);
  }

  ReportUptimeV2 reportUptimeV2({
    required BigInt uptime,
    required BigInt timestampHint,
  }) {
    return ReportUptimeV2(
      uptime: uptime,
      timestampHint: timestampHint,
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
        return SetStorageVersion._decode(input);
      case 1:
        return CreateFarm._decode(input);
      case 2:
        return UpdateFarm._decode(input);
      case 3:
        return AddStellarPayoutV2address._decode(input);
      case 4:
        return SetFarmCertification._decode(input);
      case 5:
        return AddFarmIp._decode(input);
      case 6:
        return RemoveFarmIp._decode(input);
      case 8:
        return CreateNode._decode(input);
      case 9:
        return UpdateNode._decode(input);
      case 10:
        return SetNodeCertification._decode(input);
      case 11:
        return ReportUptime._decode(input);
      case 12:
        return AddNodePublicConfig._decode(input);
      case 13:
        return DeleteNode._decode(input);
      case 14:
        return CreateEntity._decode(input);
      case 15:
        return UpdateEntity._decode(input);
      case 16:
        return const DeleteEntity();
      case 17:
        return CreateTwin._decode(input);
      case 18:
        return UpdateTwin._decode(input);
      case 19:
        return AddTwinEntity._decode(input);
      case 20:
        return DeleteTwinEntity._decode(input);
      case 22:
        return CreatePricingPolicy._decode(input);
      case 23:
        return UpdatePricingPolicy._decode(input);
      case 24:
        return CreateFarmingPolicy._decode(input);
      case 25:
        return UserAcceptTc._decode(input);
      case 26:
        return DeleteNodeFarm._decode(input);
      case 27:
        return SetFarmDedicated._decode(input);
      case 28:
        return ForceResetFarmIp._decode(input);
      case 29:
        return SetConnectionPrice._decode(input);
      case 30:
        return AddNodeCertifier._decode(input);
      case 31:
        return RemoveNodeCertifier._decode(input);
      case 32:
        return UpdateFarmingPolicy._decode(input);
      case 33:
        return AttachPolicyToFarm._decode(input);
      case 34:
        return SetZosVersion._decode(input);
      case 35:
        return ChangePowerState._decode(input);
      case 36:
        return ChangePowerTarget._decode(input);
      case 37:
        return BondTwinAccount._decode(input);
      case 38:
        return ReportUptimeV2._decode(input);
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
      case SetStorageVersion:
        (value as SetStorageVersion).encodeTo(output);
        break;
      case CreateFarm:
        (value as CreateFarm).encodeTo(output);
        break;
      case UpdateFarm:
        (value as UpdateFarm).encodeTo(output);
        break;
      case AddStellarPayoutV2address:
        (value as AddStellarPayoutV2address).encodeTo(output);
        break;
      case SetFarmCertification:
        (value as SetFarmCertification).encodeTo(output);
        break;
      case AddFarmIp:
        (value as AddFarmIp).encodeTo(output);
        break;
      case RemoveFarmIp:
        (value as RemoveFarmIp).encodeTo(output);
        break;
      case CreateNode:
        (value as CreateNode).encodeTo(output);
        break;
      case UpdateNode:
        (value as UpdateNode).encodeTo(output);
        break;
      case SetNodeCertification:
        (value as SetNodeCertification).encodeTo(output);
        break;
      case ReportUptime:
        (value as ReportUptime).encodeTo(output);
        break;
      case AddNodePublicConfig:
        (value as AddNodePublicConfig).encodeTo(output);
        break;
      case DeleteNode:
        (value as DeleteNode).encodeTo(output);
        break;
      case CreateEntity:
        (value as CreateEntity).encodeTo(output);
        break;
      case UpdateEntity:
        (value as UpdateEntity).encodeTo(output);
        break;
      case DeleteEntity:
        (value as DeleteEntity).encodeTo(output);
        break;
      case CreateTwin:
        (value as CreateTwin).encodeTo(output);
        break;
      case UpdateTwin:
        (value as UpdateTwin).encodeTo(output);
        break;
      case AddTwinEntity:
        (value as AddTwinEntity).encodeTo(output);
        break;
      case DeleteTwinEntity:
        (value as DeleteTwinEntity).encodeTo(output);
        break;
      case CreatePricingPolicy:
        (value as CreatePricingPolicy).encodeTo(output);
        break;
      case UpdatePricingPolicy:
        (value as UpdatePricingPolicy).encodeTo(output);
        break;
      case CreateFarmingPolicy:
        (value as CreateFarmingPolicy).encodeTo(output);
        break;
      case UserAcceptTc:
        (value as UserAcceptTc).encodeTo(output);
        break;
      case DeleteNodeFarm:
        (value as DeleteNodeFarm).encodeTo(output);
        break;
      case SetFarmDedicated:
        (value as SetFarmDedicated).encodeTo(output);
        break;
      case ForceResetFarmIp:
        (value as ForceResetFarmIp).encodeTo(output);
        break;
      case SetConnectionPrice:
        (value as SetConnectionPrice).encodeTo(output);
        break;
      case AddNodeCertifier:
        (value as AddNodeCertifier).encodeTo(output);
        break;
      case RemoveNodeCertifier:
        (value as RemoveNodeCertifier).encodeTo(output);
        break;
      case UpdateFarmingPolicy:
        (value as UpdateFarmingPolicy).encodeTo(output);
        break;
      case AttachPolicyToFarm:
        (value as AttachPolicyToFarm).encodeTo(output);
        break;
      case SetZosVersion:
        (value as SetZosVersion).encodeTo(output);
        break;
      case ChangePowerState:
        (value as ChangePowerState).encodeTo(output);
        break;
      case ChangePowerTarget:
        (value as ChangePowerTarget).encodeTo(output);
        break;
      case BondTwinAccount:
        (value as BondTwinAccount).encodeTo(output);
        break;
      case ReportUptimeV2:
        (value as ReportUptimeV2).encodeTo(output);
        break;
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Call value) {
    switch (value.runtimeType) {
      case SetStorageVersion:
        return (value as SetStorageVersion)._sizeHint();
      case CreateFarm:
        return (value as CreateFarm)._sizeHint();
      case UpdateFarm:
        return (value as UpdateFarm)._sizeHint();
      case AddStellarPayoutV2address:
        return (value as AddStellarPayoutV2address)._sizeHint();
      case SetFarmCertification:
        return (value as SetFarmCertification)._sizeHint();
      case AddFarmIp:
        return (value as AddFarmIp)._sizeHint();
      case RemoveFarmIp:
        return (value as RemoveFarmIp)._sizeHint();
      case CreateNode:
        return (value as CreateNode)._sizeHint();
      case UpdateNode:
        return (value as UpdateNode)._sizeHint();
      case SetNodeCertification:
        return (value as SetNodeCertification)._sizeHint();
      case ReportUptime:
        return (value as ReportUptime)._sizeHint();
      case AddNodePublicConfig:
        return (value as AddNodePublicConfig)._sizeHint();
      case DeleteNode:
        return (value as DeleteNode)._sizeHint();
      case CreateEntity:
        return (value as CreateEntity)._sizeHint();
      case UpdateEntity:
        return (value as UpdateEntity)._sizeHint();
      case DeleteEntity:
        return 1;
      case CreateTwin:
        return (value as CreateTwin)._sizeHint();
      case UpdateTwin:
        return (value as UpdateTwin)._sizeHint();
      case AddTwinEntity:
        return (value as AddTwinEntity)._sizeHint();
      case DeleteTwinEntity:
        return (value as DeleteTwinEntity)._sizeHint();
      case CreatePricingPolicy:
        return (value as CreatePricingPolicy)._sizeHint();
      case UpdatePricingPolicy:
        return (value as UpdatePricingPolicy)._sizeHint();
      case CreateFarmingPolicy:
        return (value as CreateFarmingPolicy)._sizeHint();
      case UserAcceptTc:
        return (value as UserAcceptTc)._sizeHint();
      case DeleteNodeFarm:
        return (value as DeleteNodeFarm)._sizeHint();
      case SetFarmDedicated:
        return (value as SetFarmDedicated)._sizeHint();
      case ForceResetFarmIp:
        return (value as ForceResetFarmIp)._sizeHint();
      case SetConnectionPrice:
        return (value as SetConnectionPrice)._sizeHint();
      case AddNodeCertifier:
        return (value as AddNodeCertifier)._sizeHint();
      case RemoveNodeCertifier:
        return (value as RemoveNodeCertifier)._sizeHint();
      case UpdateFarmingPolicy:
        return (value as UpdateFarmingPolicy)._sizeHint();
      case AttachPolicyToFarm:
        return (value as AttachPolicyToFarm)._sizeHint();
      case SetZosVersion:
        return (value as SetZosVersion)._sizeHint();
      case ChangePowerState:
        return (value as ChangePowerState)._sizeHint();
      case ChangePowerTarget:
        return (value as ChangePowerTarget)._sizeHint();
      case BondTwinAccount:
        return (value as BondTwinAccount)._sizeHint();
      case ReportUptimeV2:
        return (value as ReportUptimeV2)._sizeHint();
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class SetStorageVersion extends Call {
  const SetStorageVersion({required this.version});

  factory SetStorageVersion._decode(_i1.Input input) {
    return SetStorageVersion(version: _i3.StorageVersion.codec.decode(input));
  }

  /// types::StorageVersion
  final _i3.StorageVersion version;

  @override
  Map<String, Map<String, String>> toJson() => {
        'set_storage_version': {'version': version.toJson()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i3.StorageVersion.codec.sizeHint(version);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i3.StorageVersion.codec.encodeTo(
      version,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetStorageVersion && other.version == version;

  @override
  int get hashCode => version.hashCode;
}

class CreateFarm extends Call {
  const CreateFarm({
    required this.name,
    required this.publicIps,
  });

  factory CreateFarm._decode(_i1.Input input) {
    return CreateFarm(
      name: _i1.U8SequenceCodec.codec.decode(input),
      publicIps: const _i1.SequenceCodec<_i4.Ip4>(_i4.Ip4.codec).decode(input),
    );
  }

  /// FarmNameInput<T>
  final List<int> name;

  /// PublicIpListInput<T>
  final List<_i4.Ip4> publicIps;

  @override
  Map<String, Map<String, List<dynamic>>> toJson() => {
        'create_farm': {
          'name': name,
          'publicIps': publicIps.map((value) => value.toJson()).toList(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(name);
    size = size +
        const _i1.SequenceCodec<_i4.Ip4>(_i4.Ip4.codec).sizeHint(publicIps);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      name,
      output,
    );
    const _i1.SequenceCodec<_i4.Ip4>(_i4.Ip4.codec).encodeTo(
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
      other is CreateFarm &&
          _i15.listsEqual(
            other.name,
            name,
          ) &&
          _i15.listsEqual(
            other.publicIps,
            publicIps,
          );

  @override
  int get hashCode => Object.hash(
        name,
        publicIps,
      );
}

class UpdateFarm extends Call {
  const UpdateFarm({
    required this.farmId,
    required this.name,
  });

  factory UpdateFarm._decode(_i1.Input input) {
    return UpdateFarm(
      farmId: _i1.U32Codec.codec.decode(input),
      name: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// u32
  final int farmId;

  /// FarmNameInput<T>
  final List<int> name;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'update_farm': {
          'farmId': farmId,
          'name': name,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(farmId);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(name);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmId,
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
      other is UpdateFarm &&
          other.farmId == farmId &&
          _i15.listsEqual(
            other.name,
            name,
          );

  @override
  int get hashCode => Object.hash(
        farmId,
        name,
      );
}

class AddStellarPayoutV2address extends Call {
  const AddStellarPayoutV2address({
    required this.farmId,
    required this.stellarAddress,
  });

  factory AddStellarPayoutV2address._decode(_i1.Input input) {
    return AddStellarPayoutV2address(
      farmId: _i1.U32Codec.codec.decode(input),
      stellarAddress: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// u32
  final int farmId;

  /// Vec<u8>
  final List<int> stellarAddress;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'add_stellar_payout_v2address': {
          'farmId': farmId,
          'stellarAddress': stellarAddress,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(farmId);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(stellarAddress);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmId,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      stellarAddress,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is AddStellarPayoutV2address &&
          other.farmId == farmId &&
          _i15.listsEqual(
            other.stellarAddress,
            stellarAddress,
          );

  @override
  int get hashCode => Object.hash(
        farmId,
        stellarAddress,
      );
}

class SetFarmCertification extends Call {
  const SetFarmCertification({
    required this.farmId,
    required this.certification,
  });

  factory SetFarmCertification._decode(_i1.Input input) {
    return SetFarmCertification(
      farmId: _i1.U32Codec.codec.decode(input),
      certification: _i5.FarmCertification.codec.decode(input),
    );
  }

  /// u32
  final int farmId;

  /// FarmCertification
  final _i5.FarmCertification certification;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'set_farm_certification': {
          'farmId': farmId,
          'certification': certification.toJson(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(farmId);
    size = size + _i5.FarmCertification.codec.sizeHint(certification);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmId,
      output,
    );
    _i5.FarmCertification.codec.encodeTo(
      certification,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetFarmCertification &&
          other.farmId == farmId &&
          other.certification == certification;

  @override
  int get hashCode => Object.hash(
        farmId,
        certification,
      );
}

class AddFarmIp extends Call {
  const AddFarmIp({
    required this.farmId,
    required this.ip,
    required this.gw,
  });

  factory AddFarmIp._decode(_i1.Input input) {
    return AddFarmIp(
      farmId: _i1.U32Codec.codec.decode(input),
      ip: _i1.U8SequenceCodec.codec.decode(input),
      gw: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// u32
  final int farmId;

  /// Ip4Input
  final List<int> ip;

  /// Gw4Input
  final List<int> gw;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'add_farm_ip': {
          'farmId': farmId,
          'ip': ip,
          'gw': gw,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(farmId);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(ip);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(gw);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      5,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmId,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      ip,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      gw,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is AddFarmIp &&
          other.farmId == farmId &&
          _i15.listsEqual(
            other.ip,
            ip,
          ) &&
          _i15.listsEqual(
            other.gw,
            gw,
          );

  @override
  int get hashCode => Object.hash(
        farmId,
        ip,
        gw,
      );
}

class RemoveFarmIp extends Call {
  const RemoveFarmIp({
    required this.farmId,
    required this.ip,
  });

  factory RemoveFarmIp._decode(_i1.Input input) {
    return RemoveFarmIp(
      farmId: _i1.U32Codec.codec.decode(input),
      ip: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// u32
  final int farmId;

  /// Ip4Input
  final List<int> ip;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'remove_farm_ip': {
          'farmId': farmId,
          'ip': ip,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(farmId);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(ip);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      6,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmId,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      ip,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RemoveFarmIp &&
          other.farmId == farmId &&
          _i15.listsEqual(
            other.ip,
            ip,
          );

  @override
  int get hashCode => Object.hash(
        farmId,
        ip,
      );
}

class CreateNode extends Call {
  const CreateNode({
    required this.farmId,
    required this.resources,
    required this.location,
    required this.interfaces,
    required this.secureBoot,
    required this.virtualized,
    this.serialNumber,
  });

  factory CreateNode._decode(_i1.Input input) {
    return CreateNode(
      farmId: _i1.U32Codec.codec.decode(input),
      resources: _i6.Resources.codec.decode(input),
      location: _i7.LocationInput.codec.decode(input),
      interfaces: const _i1.SequenceCodec<_i8.Interface>(_i8.Interface.codec)
          .decode(input),
      secureBoot: _i1.BoolCodec.codec.decode(input),
      virtualized: _i1.BoolCodec.codec.decode(input),
      serialNumber: const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
          .decode(input),
    );
  }

  /// u32
  final int farmId;

  /// ResourcesInput
  final _i6.Resources resources;

  /// LocationInput
  final _i7.LocationInput location;

  /// InterfaceInput<T>
  final List<_i8.Interface> interfaces;

  /// bool
  final bool secureBoot;

  /// bool
  final bool virtualized;

  /// Option<SerialNumberInput>
  final List<int>? serialNumber;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'create_node': {
          'farmId': farmId,
          'resources': resources.toJson(),
          'location': location.toJson(),
          'interfaces': interfaces.map((value) => value.toJson()).toList(),
          'secureBoot': secureBoot,
          'virtualized': virtualized,
          'serialNumber': serialNumber,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(farmId);
    size = size + _i6.Resources.codec.sizeHint(resources);
    size = size + _i7.LocationInput.codec.sizeHint(location);
    size = size +
        const _i1.SequenceCodec<_i8.Interface>(_i8.Interface.codec)
            .sizeHint(interfaces);
    size = size + _i1.BoolCodec.codec.sizeHint(secureBoot);
    size = size + _i1.BoolCodec.codec.sizeHint(virtualized);
    size = size +
        const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
            .sizeHint(serialNumber);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      8,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmId,
      output,
    );
    _i6.Resources.codec.encodeTo(
      resources,
      output,
    );
    _i7.LocationInput.codec.encodeTo(
      location,
      output,
    );
    const _i1.SequenceCodec<_i8.Interface>(_i8.Interface.codec).encodeTo(
      interfaces,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      secureBoot,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      virtualized,
      output,
    );
    const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec).encodeTo(
      serialNumber,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is CreateNode &&
          other.farmId == farmId &&
          other.resources == resources &&
          other.location == location &&
          _i15.listsEqual(
            other.interfaces,
            interfaces,
          ) &&
          other.secureBoot == secureBoot &&
          other.virtualized == virtualized &&
          other.serialNumber == serialNumber;

  @override
  int get hashCode => Object.hash(
        farmId,
        resources,
        location,
        interfaces,
        secureBoot,
        virtualized,
        serialNumber,
      );
}

class UpdateNode extends Call {
  const UpdateNode({
    required this.nodeId,
    required this.farmId,
    required this.resources,
    required this.location,
    required this.interfaces,
    required this.secureBoot,
    required this.virtualized,
    this.serialNumber,
  });

  factory UpdateNode._decode(_i1.Input input) {
    return UpdateNode(
      nodeId: _i1.U32Codec.codec.decode(input),
      farmId: _i1.U32Codec.codec.decode(input),
      resources: _i6.Resources.codec.decode(input),
      location: _i7.LocationInput.codec.decode(input),
      interfaces: const _i1.SequenceCodec<_i8.Interface>(_i8.Interface.codec)
          .decode(input),
      secureBoot: _i1.BoolCodec.codec.decode(input),
      virtualized: _i1.BoolCodec.codec.decode(input),
      serialNumber: const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
          .decode(input),
    );
  }

  /// u32
  final int nodeId;

  /// u32
  final int farmId;

  /// ResourcesInput
  final _i6.Resources resources;

  /// LocationInput
  final _i7.LocationInput location;

  /// InterfaceInput<T>
  final List<_i8.Interface> interfaces;

  /// bool
  final bool secureBoot;

  /// bool
  final bool virtualized;

  /// Option<SerialNumberInput>
  final List<int>? serialNumber;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'update_node': {
          'nodeId': nodeId,
          'farmId': farmId,
          'resources': resources.toJson(),
          'location': location.toJson(),
          'interfaces': interfaces.map((value) => value.toJson()).toList(),
          'secureBoot': secureBoot,
          'virtualized': virtualized,
          'serialNumber': serialNumber,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(nodeId);
    size = size + _i1.U32Codec.codec.sizeHint(farmId);
    size = size + _i6.Resources.codec.sizeHint(resources);
    size = size + _i7.LocationInput.codec.sizeHint(location);
    size = size +
        const _i1.SequenceCodec<_i8.Interface>(_i8.Interface.codec)
            .sizeHint(interfaces);
    size = size + _i1.BoolCodec.codec.sizeHint(secureBoot);
    size = size + _i1.BoolCodec.codec.sizeHint(virtualized);
    size = size +
        const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
            .sizeHint(serialNumber);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      9,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nodeId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmId,
      output,
    );
    _i6.Resources.codec.encodeTo(
      resources,
      output,
    );
    _i7.LocationInput.codec.encodeTo(
      location,
      output,
    );
    const _i1.SequenceCodec<_i8.Interface>(_i8.Interface.codec).encodeTo(
      interfaces,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      secureBoot,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      virtualized,
      output,
    );
    const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec).encodeTo(
      serialNumber,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is UpdateNode &&
          other.nodeId == nodeId &&
          other.farmId == farmId &&
          other.resources == resources &&
          other.location == location &&
          _i15.listsEqual(
            other.interfaces,
            interfaces,
          ) &&
          other.secureBoot == secureBoot &&
          other.virtualized == virtualized &&
          other.serialNumber == serialNumber;

  @override
  int get hashCode => Object.hash(
        nodeId,
        farmId,
        resources,
        location,
        interfaces,
        secureBoot,
        virtualized,
        serialNumber,
      );
}

class SetNodeCertification extends Call {
  const SetNodeCertification({
    required this.nodeId,
    required this.nodeCertification,
  });

  factory SetNodeCertification._decode(_i1.Input input) {
    return SetNodeCertification(
      nodeId: _i1.U32Codec.codec.decode(input),
      nodeCertification: _i9.NodeCertification.codec.decode(input),
    );
  }

  /// u32
  final int nodeId;

  /// NodeCertification
  final _i9.NodeCertification nodeCertification;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'set_node_certification': {
          'nodeId': nodeId,
          'nodeCertification': nodeCertification.toJson(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(nodeId);
    size = size + _i9.NodeCertification.codec.sizeHint(nodeCertification);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      10,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nodeId,
      output,
    );
    _i9.NodeCertification.codec.encodeTo(
      nodeCertification,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetNodeCertification &&
          other.nodeId == nodeId &&
          other.nodeCertification == nodeCertification;

  @override
  int get hashCode => Object.hash(
        nodeId,
        nodeCertification,
      );
}

class ReportUptime extends Call {
  const ReportUptime({required this.uptime});

  factory ReportUptime._decode(_i1.Input input) {
    return ReportUptime(uptime: _i1.U64Codec.codec.decode(input));
  }

  /// u64
  final BigInt uptime;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'report_uptime': {'uptime': uptime}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(uptime);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      11,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      uptime,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ReportUptime && other.uptime == uptime;

  @override
  int get hashCode => uptime.hashCode;
}

class AddNodePublicConfig extends Call {
  const AddNodePublicConfig({
    required this.farmId,
    required this.nodeId,
    this.publicConfig,
  });

  factory AddNodePublicConfig._decode(_i1.Input input) {
    return AddNodePublicConfig(
      farmId: _i1.U32Codec.codec.decode(input),
      nodeId: _i1.U32Codec.codec.decode(input),
      publicConfig:
          const _i1.OptionCodec<_i10.PublicConfig>(_i10.PublicConfig.codec)
              .decode(input),
    );
  }

  /// u32
  final int farmId;

  /// u32
  final int nodeId;

  /// Option<PublicConfig>
  final _i10.PublicConfig? publicConfig;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'add_node_public_config': {
          'farmId': farmId,
          'nodeId': nodeId,
          'publicConfig': publicConfig?.toJson(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(farmId);
    size = size + _i1.U32Codec.codec.sizeHint(nodeId);
    size = size +
        const _i1.OptionCodec<_i10.PublicConfig>(_i10.PublicConfig.codec)
            .sizeHint(publicConfig);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      12,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nodeId,
      output,
    );
    const _i1.OptionCodec<_i10.PublicConfig>(_i10.PublicConfig.codec).encodeTo(
      publicConfig,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is AddNodePublicConfig &&
          other.farmId == farmId &&
          other.nodeId == nodeId &&
          other.publicConfig == publicConfig;

  @override
  int get hashCode => Object.hash(
        farmId,
        nodeId,
        publicConfig,
      );
}

class DeleteNode extends Call {
  const DeleteNode({required this.nodeId});

  factory DeleteNode._decode(_i1.Input input) {
    return DeleteNode(nodeId: _i1.U32Codec.codec.decode(input));
  }

  /// u32
  final int nodeId;

  @override
  Map<String, Map<String, int>> toJson() => {
        'delete_node': {'nodeId': nodeId}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(nodeId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      13,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nodeId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is DeleteNode && other.nodeId == nodeId;

  @override
  int get hashCode => nodeId.hashCode;
}

class CreateEntity extends Call {
  const CreateEntity({
    required this.target,
    required this.name,
    required this.country,
    required this.city,
    required this.signature,
  });

  factory CreateEntity._decode(_i1.Input input) {
    return CreateEntity(
      target: const _i1.U8ArrayCodec(32).decode(input),
      name: _i1.U8SequenceCodec.codec.decode(input),
      country: _i1.U8SequenceCodec.codec.decode(input),
      city: _i1.U8SequenceCodec.codec.decode(input),
      signature: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i11.AccountId32 target;

  /// Vec<u8>
  final List<int> name;

  /// CountryNameInput
  final List<int> country;

  /// CityNameInput
  final List<int> city;

  /// Vec<u8>
  final List<int> signature;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'create_entity': {
          'target': target.toList(),
          'name': name,
          'country': country,
          'city': city,
          'signature': signature,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i11.AccountId32Codec().sizeHint(target);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(name);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(country);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(city);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(signature);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      14,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      target,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      name,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      country,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      city,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      signature,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is CreateEntity &&
          _i15.listsEqual(
            other.target,
            target,
          ) &&
          _i15.listsEqual(
            other.name,
            name,
          ) &&
          _i15.listsEqual(
            other.country,
            country,
          ) &&
          _i15.listsEqual(
            other.city,
            city,
          ) &&
          _i15.listsEqual(
            other.signature,
            signature,
          );

  @override
  int get hashCode => Object.hash(
        target,
        name,
        country,
        city,
        signature,
      );
}

class UpdateEntity extends Call {
  const UpdateEntity({
    required this.name,
    required this.country,
    required this.city,
  });

  factory UpdateEntity._decode(_i1.Input input) {
    return UpdateEntity(
      name: _i1.U8SequenceCodec.codec.decode(input),
      country: _i1.U8SequenceCodec.codec.decode(input),
      city: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// Vec<u8>
  final List<int> name;

  /// CountryNameInput
  final List<int> country;

  /// CityNameInput
  final List<int> city;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'update_entity': {
          'name': name,
          'country': country,
          'city': city,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(name);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(country);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(city);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      15,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      name,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      country,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      city,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is UpdateEntity &&
          _i15.listsEqual(
            other.name,
            name,
          ) &&
          _i15.listsEqual(
            other.country,
            country,
          ) &&
          _i15.listsEqual(
            other.city,
            city,
          );

  @override
  int get hashCode => Object.hash(
        name,
        country,
        city,
      );
}

class DeleteEntity extends Call {
  const DeleteEntity();

  @override
  Map<String, dynamic> toJson() => {'delete_entity': null};

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      16,
      output,
    );
  }

  @override
  bool operator ==(Object other) => other is DeleteEntity;

  @override
  int get hashCode => runtimeType.hashCode;
}

class CreateTwin extends Call {
  const CreateTwin({
    this.relay,
    this.pk,
  });

  factory CreateTwin._decode(_i1.Input input) {
    return CreateTwin(
      relay: const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
          .decode(input),
      pk: const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
          .decode(input),
    );
  }

  /// RelayInput
  final List<int>? relay;

  /// PkInput
  final List<int>? pk;

  @override
  Map<String, Map<String, List<int>?>> toJson() => {
        'create_twin': {
          'relay': relay,
          'pk': pk,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size +
        const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
            .sizeHint(relay);
    size = size +
        const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
            .sizeHint(pk);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      17,
      output,
    );
    const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec).encodeTo(
      relay,
      output,
    );
    const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec).encodeTo(
      pk,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is CreateTwin && other.relay == relay && other.pk == pk;

  @override
  int get hashCode => Object.hash(
        relay,
        pk,
      );
}

class UpdateTwin extends Call {
  const UpdateTwin({
    this.relay,
    this.pk,
  });

  factory UpdateTwin._decode(_i1.Input input) {
    return UpdateTwin(
      relay: const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
          .decode(input),
      pk: const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
          .decode(input),
    );
  }

  /// RelayInput
  final List<int>? relay;

  /// PkInput
  final List<int>? pk;

  @override
  Map<String, Map<String, List<int>?>> toJson() => {
        'update_twin': {
          'relay': relay,
          'pk': pk,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size +
        const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
            .sizeHint(relay);
    size = size +
        const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
            .sizeHint(pk);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      18,
      output,
    );
    const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec).encodeTo(
      relay,
      output,
    );
    const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec).encodeTo(
      pk,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is UpdateTwin && other.relay == relay && other.pk == pk;

  @override
  int get hashCode => Object.hash(
        relay,
        pk,
      );
}

class AddTwinEntity extends Call {
  const AddTwinEntity({
    required this.twinId,
    required this.entityId,
    required this.signature,
  });

  factory AddTwinEntity._decode(_i1.Input input) {
    return AddTwinEntity(
      twinId: _i1.U32Codec.codec.decode(input),
      entityId: _i1.U32Codec.codec.decode(input),
      signature: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// u32
  final int twinId;

  /// u32
  final int entityId;

  /// Vec<u8>
  final List<int> signature;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'add_twin_entity': {
          'twinId': twinId,
          'entityId': entityId,
          'signature': signature,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(twinId);
    size = size + _i1.U32Codec.codec.sizeHint(entityId);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(signature);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      19,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      twinId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      entityId,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      signature,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is AddTwinEntity &&
          other.twinId == twinId &&
          other.entityId == entityId &&
          _i15.listsEqual(
            other.signature,
            signature,
          );

  @override
  int get hashCode => Object.hash(
        twinId,
        entityId,
        signature,
      );
}

class DeleteTwinEntity extends Call {
  const DeleteTwinEntity({
    required this.twinId,
    required this.entityId,
  });

  factory DeleteTwinEntity._decode(_i1.Input input) {
    return DeleteTwinEntity(
      twinId: _i1.U32Codec.codec.decode(input),
      entityId: _i1.U32Codec.codec.decode(input),
    );
  }

  /// u32
  final int twinId;

  /// u32
  final int entityId;

  @override
  Map<String, Map<String, int>> toJson() => {
        'delete_twin_entity': {
          'twinId': twinId,
          'entityId': entityId,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(twinId);
    size = size + _i1.U32Codec.codec.sizeHint(entityId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      20,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      twinId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      entityId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is DeleteTwinEntity &&
          other.twinId == twinId &&
          other.entityId == entityId;

  @override
  int get hashCode => Object.hash(
        twinId,
        entityId,
      );
}

class CreatePricingPolicy extends Call {
  const CreatePricingPolicy({
    required this.name,
    required this.su,
    required this.cu,
    required this.nu,
    required this.ipu,
    required this.uniqueName,
    required this.domainName,
    required this.foundationAccount,
    required this.certifiedSalesAccount,
    required this.discountForDedicationNodes,
  });

  factory CreatePricingPolicy._decode(_i1.Input input) {
    return CreatePricingPolicy(
      name: _i1.U8SequenceCodec.codec.decode(input),
      su: _i12.Policy.codec.decode(input),
      cu: _i12.Policy.codec.decode(input),
      nu: _i12.Policy.codec.decode(input),
      ipu: _i12.Policy.codec.decode(input),
      uniqueName: _i12.Policy.codec.decode(input),
      domainName: _i12.Policy.codec.decode(input),
      foundationAccount: const _i1.U8ArrayCodec(32).decode(input),
      certifiedSalesAccount: const _i1.U8ArrayCodec(32).decode(input),
      discountForDedicationNodes: _i1.U8Codec.codec.decode(input),
    );
  }

  /// Vec<u8>
  final List<int> name;

  /// types::Policy
  final _i12.Policy su;

  /// types::Policy
  final _i12.Policy cu;

  /// types::Policy
  final _i12.Policy nu;

  /// types::Policy
  final _i12.Policy ipu;

  /// types::Policy
  final _i12.Policy uniqueName;

  /// types::Policy
  final _i12.Policy domainName;

  /// T::AccountId
  final _i11.AccountId32 foundationAccount;

  /// T::AccountId
  final _i11.AccountId32 certifiedSalesAccount;

  /// u8
  final int discountForDedicationNodes;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'create_pricing_policy': {
          'name': name,
          'su': su.toJson(),
          'cu': cu.toJson(),
          'nu': nu.toJson(),
          'ipu': ipu.toJson(),
          'uniqueName': uniqueName.toJson(),
          'domainName': domainName.toJson(),
          'foundationAccount': foundationAccount.toList(),
          'certifiedSalesAccount': certifiedSalesAccount.toList(),
          'discountForDedicationNodes': discountForDedicationNodes,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(name);
    size = size + _i12.Policy.codec.sizeHint(su);
    size = size + _i12.Policy.codec.sizeHint(cu);
    size = size + _i12.Policy.codec.sizeHint(nu);
    size = size + _i12.Policy.codec.sizeHint(ipu);
    size = size + _i12.Policy.codec.sizeHint(uniqueName);
    size = size + _i12.Policy.codec.sizeHint(domainName);
    size = size + const _i11.AccountId32Codec().sizeHint(foundationAccount);
    size = size + const _i11.AccountId32Codec().sizeHint(certifiedSalesAccount);
    size = size + _i1.U8Codec.codec.sizeHint(discountForDedicationNodes);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      22,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      name,
      output,
    );
    _i12.Policy.codec.encodeTo(
      su,
      output,
    );
    _i12.Policy.codec.encodeTo(
      cu,
      output,
    );
    _i12.Policy.codec.encodeTo(
      nu,
      output,
    );
    _i12.Policy.codec.encodeTo(
      ipu,
      output,
    );
    _i12.Policy.codec.encodeTo(
      uniqueName,
      output,
    );
    _i12.Policy.codec.encodeTo(
      domainName,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      foundationAccount,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      certifiedSalesAccount,
      output,
    );
    _i1.U8Codec.codec.encodeTo(
      discountForDedicationNodes,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is CreatePricingPolicy &&
          _i15.listsEqual(
            other.name,
            name,
          ) &&
          other.su == su &&
          other.cu == cu &&
          other.nu == nu &&
          other.ipu == ipu &&
          other.uniqueName == uniqueName &&
          other.domainName == domainName &&
          _i15.listsEqual(
            other.foundationAccount,
            foundationAccount,
          ) &&
          _i15.listsEqual(
            other.certifiedSalesAccount,
            certifiedSalesAccount,
          ) &&
          other.discountForDedicationNodes == discountForDedicationNodes;

  @override
  int get hashCode => Object.hash(
        name,
        su,
        cu,
        nu,
        ipu,
        uniqueName,
        domainName,
        foundationAccount,
        certifiedSalesAccount,
        discountForDedicationNodes,
      );
}

class UpdatePricingPolicy extends Call {
  const UpdatePricingPolicy({
    required this.pricingPolicyId,
    required this.name,
    required this.su,
    required this.cu,
    required this.nu,
    required this.ipu,
    required this.uniqueName,
    required this.domainName,
    required this.foundationAccount,
    required this.certifiedSalesAccount,
    required this.discountForDedicationNodes,
  });

  factory UpdatePricingPolicy._decode(_i1.Input input) {
    return UpdatePricingPolicy(
      pricingPolicyId: _i1.U32Codec.codec.decode(input),
      name: _i1.U8SequenceCodec.codec.decode(input),
      su: _i12.Policy.codec.decode(input),
      cu: _i12.Policy.codec.decode(input),
      nu: _i12.Policy.codec.decode(input),
      ipu: _i12.Policy.codec.decode(input),
      uniqueName: _i12.Policy.codec.decode(input),
      domainName: _i12.Policy.codec.decode(input),
      foundationAccount: const _i1.U8ArrayCodec(32).decode(input),
      certifiedSalesAccount: const _i1.U8ArrayCodec(32).decode(input),
      discountForDedicationNodes: _i1.U8Codec.codec.decode(input),
    );
  }

  /// u32
  final int pricingPolicyId;

  /// Vec<u8>
  final List<int> name;

  /// types::Policy
  final _i12.Policy su;

  /// types::Policy
  final _i12.Policy cu;

  /// types::Policy
  final _i12.Policy nu;

  /// types::Policy
  final _i12.Policy ipu;

  /// types::Policy
  final _i12.Policy uniqueName;

  /// types::Policy
  final _i12.Policy domainName;

  /// T::AccountId
  final _i11.AccountId32 foundationAccount;

  /// T::AccountId
  final _i11.AccountId32 certifiedSalesAccount;

  /// u8
  final int discountForDedicationNodes;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'update_pricing_policy': {
          'pricingPolicyId': pricingPolicyId,
          'name': name,
          'su': su.toJson(),
          'cu': cu.toJson(),
          'nu': nu.toJson(),
          'ipu': ipu.toJson(),
          'uniqueName': uniqueName.toJson(),
          'domainName': domainName.toJson(),
          'foundationAccount': foundationAccount.toList(),
          'certifiedSalesAccount': certifiedSalesAccount.toList(),
          'discountForDedicationNodes': discountForDedicationNodes,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(pricingPolicyId);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(name);
    size = size + _i12.Policy.codec.sizeHint(su);
    size = size + _i12.Policy.codec.sizeHint(cu);
    size = size + _i12.Policy.codec.sizeHint(nu);
    size = size + _i12.Policy.codec.sizeHint(ipu);
    size = size + _i12.Policy.codec.sizeHint(uniqueName);
    size = size + _i12.Policy.codec.sizeHint(domainName);
    size = size + const _i11.AccountId32Codec().sizeHint(foundationAccount);
    size = size + const _i11.AccountId32Codec().sizeHint(certifiedSalesAccount);
    size = size + _i1.U8Codec.codec.sizeHint(discountForDedicationNodes);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      23,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      pricingPolicyId,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      name,
      output,
    );
    _i12.Policy.codec.encodeTo(
      su,
      output,
    );
    _i12.Policy.codec.encodeTo(
      cu,
      output,
    );
    _i12.Policy.codec.encodeTo(
      nu,
      output,
    );
    _i12.Policy.codec.encodeTo(
      ipu,
      output,
    );
    _i12.Policy.codec.encodeTo(
      uniqueName,
      output,
    );
    _i12.Policy.codec.encodeTo(
      domainName,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      foundationAccount,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      certifiedSalesAccount,
      output,
    );
    _i1.U8Codec.codec.encodeTo(
      discountForDedicationNodes,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is UpdatePricingPolicy &&
          other.pricingPolicyId == pricingPolicyId &&
          _i15.listsEqual(
            other.name,
            name,
          ) &&
          other.su == su &&
          other.cu == cu &&
          other.nu == nu &&
          other.ipu == ipu &&
          other.uniqueName == uniqueName &&
          other.domainName == domainName &&
          _i15.listsEqual(
            other.foundationAccount,
            foundationAccount,
          ) &&
          _i15.listsEqual(
            other.certifiedSalesAccount,
            certifiedSalesAccount,
          ) &&
          other.discountForDedicationNodes == discountForDedicationNodes;

  @override
  int get hashCode => Object.hash(
        pricingPolicyId,
        name,
        su,
        cu,
        nu,
        ipu,
        uniqueName,
        domainName,
        foundationAccount,
        certifiedSalesAccount,
        discountForDedicationNodes,
      );
}

class CreateFarmingPolicy extends Call {
  const CreateFarmingPolicy({
    required this.name,
    required this.su,
    required this.cu,
    required this.nu,
    required this.ipv4,
    required this.minimalUptime,
    required this.policyEnd,
    required this.immutable,
    required this.default_,
    required this.nodeCertification,
    required this.farmCertification,
  });

  factory CreateFarmingPolicy._decode(_i1.Input input) {
    return CreateFarmingPolicy(
      name: _i1.U8SequenceCodec.codec.decode(input),
      su: _i1.U32Codec.codec.decode(input),
      cu: _i1.U32Codec.codec.decode(input),
      nu: _i1.U32Codec.codec.decode(input),
      ipv4: _i1.U32Codec.codec.decode(input),
      minimalUptime: _i1.U16Codec.codec.decode(input),
      policyEnd: _i1.U32Codec.codec.decode(input),
      immutable: _i1.BoolCodec.codec.decode(input),
      default_: _i1.BoolCodec.codec.decode(input),
      nodeCertification: _i9.NodeCertification.codec.decode(input),
      farmCertification: _i5.FarmCertification.codec.decode(input),
    );
  }

  /// Vec<u8>
  final List<int> name;

  /// u32
  final int su;

  /// u32
  final int cu;

  /// u32
  final int nu;

  /// u32
  final int ipv4;

  /// u16
  final int minimalUptime;

  /// T::BlockNumber
  final int policyEnd;

  /// bool
  final bool immutable;

  /// bool
  final bool default_;

  /// NodeCertification
  final _i9.NodeCertification nodeCertification;

  /// FarmCertification
  final _i5.FarmCertification farmCertification;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'create_farming_policy': {
          'name': name,
          'su': su,
          'cu': cu,
          'nu': nu,
          'ipv4': ipv4,
          'minimalUptime': minimalUptime,
          'policyEnd': policyEnd,
          'immutable': immutable,
          'default': default_,
          'nodeCertification': nodeCertification.toJson(),
          'farmCertification': farmCertification.toJson(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(name);
    size = size + _i1.U32Codec.codec.sizeHint(su);
    size = size + _i1.U32Codec.codec.sizeHint(cu);
    size = size + _i1.U32Codec.codec.sizeHint(nu);
    size = size + _i1.U32Codec.codec.sizeHint(ipv4);
    size = size + _i1.U16Codec.codec.sizeHint(minimalUptime);
    size = size + _i1.U32Codec.codec.sizeHint(policyEnd);
    size = size + _i1.BoolCodec.codec.sizeHint(immutable);
    size = size + _i1.BoolCodec.codec.sizeHint(default_);
    size = size + _i9.NodeCertification.codec.sizeHint(nodeCertification);
    size = size + _i5.FarmCertification.codec.sizeHint(farmCertification);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      24,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      name,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      su,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      cu,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nu,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      ipv4,
      output,
    );
    _i1.U16Codec.codec.encodeTo(
      minimalUptime,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      policyEnd,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      immutable,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      default_,
      output,
    );
    _i9.NodeCertification.codec.encodeTo(
      nodeCertification,
      output,
    );
    _i5.FarmCertification.codec.encodeTo(
      farmCertification,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is CreateFarmingPolicy &&
          _i15.listsEqual(
            other.name,
            name,
          ) &&
          other.su == su &&
          other.cu == cu &&
          other.nu == nu &&
          other.ipv4 == ipv4 &&
          other.minimalUptime == minimalUptime &&
          other.policyEnd == policyEnd &&
          other.immutable == immutable &&
          other.default_ == default_ &&
          other.nodeCertification == nodeCertification &&
          other.farmCertification == farmCertification;

  @override
  int get hashCode => Object.hash(
        name,
        su,
        cu,
        nu,
        ipv4,
        minimalUptime,
        policyEnd,
        immutable,
        default_,
        nodeCertification,
        farmCertification,
      );
}

class UserAcceptTc extends Call {
  const UserAcceptTc({
    required this.documentLink,
    required this.documentHash,
  });

  factory UserAcceptTc._decode(_i1.Input input) {
    return UserAcceptTc(
      documentLink: _i1.U8SequenceCodec.codec.decode(input),
      documentHash: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// DocumentLinkInput
  final List<int> documentLink;

  /// DocumentHashInput
  final List<int> documentHash;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'user_accept_tc': {
          'documentLink': documentLink,
          'documentHash': documentHash,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(documentLink);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(documentHash);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      25,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      documentLink,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      documentHash,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is UserAcceptTc &&
          _i15.listsEqual(
            other.documentLink,
            documentLink,
          ) &&
          _i15.listsEqual(
            other.documentHash,
            documentHash,
          );

  @override
  int get hashCode => Object.hash(
        documentLink,
        documentHash,
      );
}

class DeleteNodeFarm extends Call {
  const DeleteNodeFarm({required this.nodeId});

  factory DeleteNodeFarm._decode(_i1.Input input) {
    return DeleteNodeFarm(nodeId: _i1.U32Codec.codec.decode(input));
  }

  /// u32
  final int nodeId;

  @override
  Map<String, Map<String, int>> toJson() => {
        'delete_node_farm': {'nodeId': nodeId}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(nodeId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      26,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nodeId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is DeleteNodeFarm && other.nodeId == nodeId;

  @override
  int get hashCode => nodeId.hashCode;
}

class SetFarmDedicated extends Call {
  const SetFarmDedicated({
    required this.farmId,
    required this.dedicated,
  });

  factory SetFarmDedicated._decode(_i1.Input input) {
    return SetFarmDedicated(
      farmId: _i1.U32Codec.codec.decode(input),
      dedicated: _i1.BoolCodec.codec.decode(input),
    );
  }

  /// u32
  final int farmId;

  /// bool
  final bool dedicated;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'set_farm_dedicated': {
          'farmId': farmId,
          'dedicated': dedicated,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(farmId);
    size = size + _i1.BoolCodec.codec.sizeHint(dedicated);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      27,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmId,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      dedicated,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetFarmDedicated &&
          other.farmId == farmId &&
          other.dedicated == dedicated;

  @override
  int get hashCode => Object.hash(
        farmId,
        dedicated,
      );
}

class ForceResetFarmIp extends Call {
  const ForceResetFarmIp({
    required this.farmId,
    required this.ip,
  });

  factory ForceResetFarmIp._decode(_i1.Input input) {
    return ForceResetFarmIp(
      farmId: _i1.U32Codec.codec.decode(input),
      ip: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// u32
  final int farmId;

  /// Ip4Input
  final List<int> ip;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'force_reset_farm_ip': {
          'farmId': farmId,
          'ip': ip,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(farmId);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(ip);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      28,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmId,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      ip,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ForceResetFarmIp &&
          other.farmId == farmId &&
          _i15.listsEqual(
            other.ip,
            ip,
          );

  @override
  int get hashCode => Object.hash(
        farmId,
        ip,
      );
}

class SetConnectionPrice extends Call {
  const SetConnectionPrice({required this.price});

  factory SetConnectionPrice._decode(_i1.Input input) {
    return SetConnectionPrice(price: _i1.U32Codec.codec.decode(input));
  }

  /// u32
  final int price;

  @override
  Map<String, Map<String, int>> toJson() => {
        'set_connection_price': {'price': price}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(price);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      29,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      price,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetConnectionPrice && other.price == price;

  @override
  int get hashCode => price.hashCode;
}

class AddNodeCertifier extends Call {
  const AddNodeCertifier({required this.certifier});

  factory AddNodeCertifier._decode(_i1.Input input) {
    return AddNodeCertifier(
        certifier: const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i11.AccountId32 certifier;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'add_node_certifier': {'certifier': certifier.toList()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i11.AccountId32Codec().sizeHint(certifier);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      30,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      certifier,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is AddNodeCertifier &&
          _i15.listsEqual(
            other.certifier,
            certifier,
          );

  @override
  int get hashCode => certifier.hashCode;
}

class RemoveNodeCertifier extends Call {
  const RemoveNodeCertifier({required this.certifier});

  factory RemoveNodeCertifier._decode(_i1.Input input) {
    return RemoveNodeCertifier(
        certifier: const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i11.AccountId32 certifier;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'remove_node_certifier': {'certifier': certifier.toList()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i11.AccountId32Codec().sizeHint(certifier);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      31,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      certifier,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RemoveNodeCertifier &&
          _i15.listsEqual(
            other.certifier,
            certifier,
          );

  @override
  int get hashCode => certifier.hashCode;
}

class UpdateFarmingPolicy extends Call {
  const UpdateFarmingPolicy({
    required this.farmingPolicyId,
    required this.name,
    required this.su,
    required this.cu,
    required this.nu,
    required this.ipv4,
    required this.minimalUptime,
    required this.policyEnd,
    required this.default_,
    required this.nodeCertification,
    required this.farmCertification,
  });

  factory UpdateFarmingPolicy._decode(_i1.Input input) {
    return UpdateFarmingPolicy(
      farmingPolicyId: _i1.U32Codec.codec.decode(input),
      name: _i1.U8SequenceCodec.codec.decode(input),
      su: _i1.U32Codec.codec.decode(input),
      cu: _i1.U32Codec.codec.decode(input),
      nu: _i1.U32Codec.codec.decode(input),
      ipv4: _i1.U32Codec.codec.decode(input),
      minimalUptime: _i1.U16Codec.codec.decode(input),
      policyEnd: _i1.U32Codec.codec.decode(input),
      default_: _i1.BoolCodec.codec.decode(input),
      nodeCertification: _i9.NodeCertification.codec.decode(input),
      farmCertification: _i5.FarmCertification.codec.decode(input),
    );
  }

  /// u32
  final int farmingPolicyId;

  /// Vec<u8>
  final List<int> name;

  /// u32
  final int su;

  /// u32
  final int cu;

  /// u32
  final int nu;

  /// u32
  final int ipv4;

  /// u16
  final int minimalUptime;

  /// T::BlockNumber
  final int policyEnd;

  /// bool
  final bool default_;

  /// NodeCertification
  final _i9.NodeCertification nodeCertification;

  /// FarmCertification
  final _i5.FarmCertification farmCertification;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'update_farming_policy': {
          'farmingPolicyId': farmingPolicyId,
          'name': name,
          'su': su,
          'cu': cu,
          'nu': nu,
          'ipv4': ipv4,
          'minimalUptime': minimalUptime,
          'policyEnd': policyEnd,
          'default': default_,
          'nodeCertification': nodeCertification.toJson(),
          'farmCertification': farmCertification.toJson(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(farmingPolicyId);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(name);
    size = size + _i1.U32Codec.codec.sizeHint(su);
    size = size + _i1.U32Codec.codec.sizeHint(cu);
    size = size + _i1.U32Codec.codec.sizeHint(nu);
    size = size + _i1.U32Codec.codec.sizeHint(ipv4);
    size = size + _i1.U16Codec.codec.sizeHint(minimalUptime);
    size = size + _i1.U32Codec.codec.sizeHint(policyEnd);
    size = size + _i1.BoolCodec.codec.sizeHint(default_);
    size = size + _i9.NodeCertification.codec.sizeHint(nodeCertification);
    size = size + _i5.FarmCertification.codec.sizeHint(farmCertification);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      32,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmingPolicyId,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      name,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      su,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      cu,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nu,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      ipv4,
      output,
    );
    _i1.U16Codec.codec.encodeTo(
      minimalUptime,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      policyEnd,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      default_,
      output,
    );
    _i9.NodeCertification.codec.encodeTo(
      nodeCertification,
      output,
    );
    _i5.FarmCertification.codec.encodeTo(
      farmCertification,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is UpdateFarmingPolicy &&
          other.farmingPolicyId == farmingPolicyId &&
          _i15.listsEqual(
            other.name,
            name,
          ) &&
          other.su == su &&
          other.cu == cu &&
          other.nu == nu &&
          other.ipv4 == ipv4 &&
          other.minimalUptime == minimalUptime &&
          other.policyEnd == policyEnd &&
          other.default_ == default_ &&
          other.nodeCertification == nodeCertification &&
          other.farmCertification == farmCertification;

  @override
  int get hashCode => Object.hash(
        farmingPolicyId,
        name,
        su,
        cu,
        nu,
        ipv4,
        minimalUptime,
        policyEnd,
        default_,
        nodeCertification,
        farmCertification,
      );
}

class AttachPolicyToFarm extends Call {
  const AttachPolicyToFarm({
    required this.farmId,
    this.limits,
  });

  factory AttachPolicyToFarm._decode(_i1.Input input) {
    return AttachPolicyToFarm(
      farmId: _i1.U32Codec.codec.decode(input),
      limits: const _i1.OptionCodec<_i13.FarmingPolicyLimit>(
              _i13.FarmingPolicyLimit.codec)
          .decode(input),
    );
  }

  /// u32
  final int farmId;

  /// Option<FarmingPolicyLimit>
  final _i13.FarmingPolicyLimit? limits;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'attach_policy_to_farm': {
          'farmId': farmId,
          'limits': limits?.toJson(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(farmId);
    size = size +
        const _i1.OptionCodec<_i13.FarmingPolicyLimit>(
                _i13.FarmingPolicyLimit.codec)
            .sizeHint(limits);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      33,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmId,
      output,
    );
    const _i1.OptionCodec<_i13.FarmingPolicyLimit>(
            _i13.FarmingPolicyLimit.codec)
        .encodeTo(
      limits,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is AttachPolicyToFarm &&
          other.farmId == farmId &&
          other.limits == limits;

  @override
  int get hashCode => Object.hash(
        farmId,
        limits,
      );
}

class SetZosVersion extends Call {
  const SetZosVersion({required this.zosVersion});

  factory SetZosVersion._decode(_i1.Input input) {
    return SetZosVersion(zosVersion: _i1.U8SequenceCodec.codec.decode(input));
  }

  /// Vec<u8>
  final List<int> zosVersion;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'set_zos_version': {'zosVersion': zosVersion}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(zosVersion);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      34,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      zosVersion,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetZosVersion &&
          _i15.listsEqual(
            other.zosVersion,
            zosVersion,
          );

  @override
  int get hashCode => zosVersion.hashCode;
}

class ChangePowerState extends Call {
  const ChangePowerState({required this.powerState});

  factory ChangePowerState._decode(_i1.Input input) {
    return ChangePowerState(powerState: _i14.Power.codec.decode(input));
  }

  /// Power
  final _i14.Power powerState;

  @override
  Map<String, Map<String, String>> toJson() => {
        'change_power_state': {'powerState': powerState.toJson()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i14.Power.codec.sizeHint(powerState);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      35,
      output,
    );
    _i14.Power.codec.encodeTo(
      powerState,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ChangePowerState && other.powerState == powerState;

  @override
  int get hashCode => powerState.hashCode;
}

class ChangePowerTarget extends Call {
  const ChangePowerTarget({
    required this.nodeId,
    required this.powerTarget,
  });

  factory ChangePowerTarget._decode(_i1.Input input) {
    return ChangePowerTarget(
      nodeId: _i1.U32Codec.codec.decode(input),
      powerTarget: _i14.Power.codec.decode(input),
    );
  }

  /// u32
  final int nodeId;

  /// Power
  final _i14.Power powerTarget;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'change_power_target': {
          'nodeId': nodeId,
          'powerTarget': powerTarget.toJson(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(nodeId);
    size = size + _i14.Power.codec.sizeHint(powerTarget);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      36,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nodeId,
      output,
    );
    _i14.Power.codec.encodeTo(
      powerTarget,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ChangePowerTarget &&
          other.nodeId == nodeId &&
          other.powerTarget == powerTarget;

  @override
  int get hashCode => Object.hash(
        nodeId,
        powerTarget,
      );
}

class BondTwinAccount extends Call {
  const BondTwinAccount({required this.twinId});

  factory BondTwinAccount._decode(_i1.Input input) {
    return BondTwinAccount(twinId: _i1.U32Codec.codec.decode(input));
  }

  /// u32
  final int twinId;

  @override
  Map<String, Map<String, int>> toJson() => {
        'bond_twin_account': {'twinId': twinId}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(twinId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      37,
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
      other is BondTwinAccount && other.twinId == twinId;

  @override
  int get hashCode => twinId.hashCode;
}

class ReportUptimeV2 extends Call {
  const ReportUptimeV2({
    required this.uptime,
    required this.timestampHint,
  });

  factory ReportUptimeV2._decode(_i1.Input input) {
    return ReportUptimeV2(
      uptime: _i1.U64Codec.codec.decode(input),
      timestampHint: _i1.U64Codec.codec.decode(input),
    );
  }

  /// u64
  final BigInt uptime;

  /// u64
  final BigInt timestampHint;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'report_uptime_v2': {
          'uptime': uptime,
          'timestampHint': timestampHint,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(uptime);
    size = size + _i1.U64Codec.codec.sizeHint(timestampHint);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      38,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      uptime,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      timestampHint,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ReportUptimeV2 &&
          other.uptime == uptime &&
          other.timestampHint == timestampHint;

  @override
  int get hashCode => Object.hash(
        uptime,
        timestampHint,
      );
}
