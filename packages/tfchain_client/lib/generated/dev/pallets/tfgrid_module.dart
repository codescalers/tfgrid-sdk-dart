// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i13;

import 'package:polkadart/polkadart.dart' as _i1;
import 'package:polkadart/scale_codec.dart' as _i3;

import '../types/pallet_tfgrid/pallet/call.dart' as _i19;
import '../types/pallet_tfgrid/terms_cond/terms_and_conditions.dart' as _i10;
import '../types/pallet_tfgrid/types/entity.dart' as _i5;
import '../types/pallet_tfgrid/types/farming_policy.dart' as _i9;
import '../types/pallet_tfgrid/types/pricing_policy.dart' as _i8;
import '../types/pallet_tfgrid/types/storage_version.dart' as _i11;
import '../types/pallet_tfgrid/types/twin.dart' as _i7;
import '../types/sp_core/crypto/account_id32.dart' as _i6;
import '../types/tfchain_runtime/runtime_call.dart' as _i18;
import '../types/tfchain_support/types/farm.dart' as _i2;
import '../types/tfchain_support/types/farm_certification.dart' as _i15;
import '../types/tfchain_support/types/node.dart' as _i4;
import '../types/tfchain_support/types/node_certification.dart' as _i14;
import '../types/tfchain_support/types/node_power.dart' as _i12;
import '../types/tfchain_support/types/power.dart' as _i17;
import '../types/tfchain_support/types/power_state.dart' as _i16;

class Queries {
  const Queries(this.__api);

  final _i1.StateApi __api;

  final _i1.StorageMap<int, _i2.Farm> _farms =
      const _i1.StorageMap<int, _i2.Farm>(
    prefix: 'TfgridModule',
    storage: 'Farms',
    valueCodec: _i2.Farm.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
  );

  final _i1.StorageMap<int, List<int>> _nodesByFarmID =
      const _i1.StorageMap<int, List<int>>(
    prefix: 'TfgridModule',
    storage: 'NodesByFarmID',
    valueCodec: _i3.U32SequenceCodec.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
  );

  final _i1.StorageMap<List<int>, int> _farmIdByName =
      const _i1.StorageMap<List<int>, int>(
    prefix: 'TfgridModule',
    storage: 'FarmIdByName',
    valueCodec: _i3.U32Codec.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U8SequenceCodec.codec),
  );

  final _i1.StorageMap<int, List<int>> _farmPayoutV2AddressByFarmID =
      const _i1.StorageMap<int, List<int>>(
    prefix: 'TfgridModule',
    storage: 'FarmPayoutV2AddressByFarmID',
    valueCodec: _i3.U8SequenceCodec.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
  );

  final _i1.StorageMap<int, _i4.Node> _nodes =
      const _i1.StorageMap<int, _i4.Node>(
    prefix: 'TfgridModule',
    storage: 'Nodes',
    valueCodec: _i4.Node.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
  );

  final _i1.StorageMap<int, int> _nodeIdByTwinID =
      const _i1.StorageMap<int, int>(
    prefix: 'TfgridModule',
    storage: 'NodeIdByTwinID',
    valueCodec: _i3.U32Codec.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
  );

  final _i1.StorageMap<int, _i5.Entity> _entities =
      const _i1.StorageMap<int, _i5.Entity>(
    prefix: 'TfgridModule',
    storage: 'Entities',
    valueCodec: _i5.Entity.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
  );

  final _i1.StorageMap<_i6.AccountId32, int> _entityIdByAccountID =
      const _i1.StorageMap<_i6.AccountId32, int>(
    prefix: 'TfgridModule',
    storage: 'EntityIdByAccountID',
    valueCodec: _i3.U32Codec.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i6.AccountId32Codec()),
  );

  final _i1.StorageMap<List<int>, int> _entityIdByName =
      const _i1.StorageMap<List<int>, int>(
    prefix: 'TfgridModule',
    storage: 'EntityIdByName',
    valueCodec: _i3.U32Codec.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U8SequenceCodec.codec),
  );

  final _i1.StorageMap<int, _i7.Twin> _twins =
      const _i1.StorageMap<int, _i7.Twin>(
    prefix: 'TfgridModule',
    storage: 'Twins',
    valueCodec: _i7.Twin.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
  );

  final _i1.StorageMap<_i6.AccountId32, int> _twinIdByAccountID =
      const _i1.StorageMap<_i6.AccountId32, int>(
    prefix: 'TfgridModule',
    storage: 'TwinIdByAccountID',
    valueCodec: _i3.U32Codec.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i6.AccountId32Codec()),
  );

  final _i1.StorageMap<int, _i6.AccountId32> _twinBoundedAccountID =
      const _i1.StorageMap<int, _i6.AccountId32>(
    prefix: 'TfgridModule',
    storage: 'TwinBoundedAccountID',
    valueCodec: _i6.AccountId32Codec(),
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
  );

  final _i1.StorageMap<int, _i8.PricingPolicy> _pricingPolicies =
      const _i1.StorageMap<int, _i8.PricingPolicy>(
    prefix: 'TfgridModule',
    storage: 'PricingPolicies',
    valueCodec: _i8.PricingPolicy.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
  );

  final _i1.StorageMap<List<int>, int> _pricingPolicyIdByName =
      const _i1.StorageMap<List<int>, int>(
    prefix: 'TfgridModule',
    storage: 'PricingPolicyIdByName',
    valueCodec: _i3.U32Codec.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U8SequenceCodec.codec),
  );

  final _i1.StorageMap<int, _i9.FarmingPolicy> _farmingPoliciesMap =
      const _i1.StorageMap<int, _i9.FarmingPolicy>(
    prefix: 'TfgridModule',
    storage: 'FarmingPoliciesMap',
    valueCodec: _i9.FarmingPolicy.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
  );

  final _i1.StorageMap<_i6.AccountId32, List<_i10.TermsAndConditions>>
      _usersTermsAndConditions =
      const _i1.StorageMap<_i6.AccountId32, List<_i10.TermsAndConditions>>(
    prefix: 'TfgridModule',
    storage: 'UsersTermsAndConditions',
    valueCodec: _i3.SequenceCodec<_i10.TermsAndConditions>(
        _i10.TermsAndConditions.codec),
    hasher: _i1.StorageHasher.blake2b128Concat(_i6.AccountId32Codec()),
  );

  final _i1.StorageValue<List<_i6.AccountId32>> _allowedNodeCertifiers =
      const _i1.StorageValue<List<_i6.AccountId32>>(
    prefix: 'TfgridModule',
    storage: 'AllowedNodeCertifiers',
    valueCodec: _i3.SequenceCodec<_i6.AccountId32>(_i6.AccountId32Codec()),
  );

  final _i1.StorageValue<int> _connectionPrice = const _i1.StorageValue<int>(
    prefix: 'TfgridModule',
    storage: 'ConnectionPrice',
    valueCodec: _i3.U32Codec.codec,
  );

  final _i1.StorageValue<int> _farmID = const _i1.StorageValue<int>(
    prefix: 'TfgridModule',
    storage: 'FarmID',
    valueCodec: _i3.U32Codec.codec,
  );

  final _i1.StorageValue<int> _nodeID = const _i1.StorageValue<int>(
    prefix: 'TfgridModule',
    storage: 'NodeID',
    valueCodec: _i3.U32Codec.codec,
  );

  final _i1.StorageValue<int> _entityID = const _i1.StorageValue<int>(
    prefix: 'TfgridModule',
    storage: 'EntityID',
    valueCodec: _i3.U32Codec.codec,
  );

  final _i1.StorageValue<int> _twinID = const _i1.StorageValue<int>(
    prefix: 'TfgridModule',
    storage: 'TwinID',
    valueCodec: _i3.U32Codec.codec,
  );

  final _i1.StorageValue<int> _pricingPolicyID = const _i1.StorageValue<int>(
    prefix: 'TfgridModule',
    storage: 'PricingPolicyID',
    valueCodec: _i3.U32Codec.codec,
  );

  final _i1.StorageValue<int> _farmingPolicyID = const _i1.StorageValue<int>(
    prefix: 'TfgridModule',
    storage: 'FarmingPolicyID',
    valueCodec: _i3.U32Codec.codec,
  );

  final _i1.StorageValue<_i11.StorageVersion> _palletVersion =
      const _i1.StorageValue<_i11.StorageVersion>(
    prefix: 'TfgridModule',
    storage: 'PalletVersion',
    valueCodec: _i11.StorageVersion.codec,
  );

  final _i1.StorageValue<List<int>> _zosVersion =
      const _i1.StorageValue<List<int>>(
    prefix: 'TfgridModule',
    storage: 'ZosVersion',
    valueCodec: _i3.U8SequenceCodec.codec,
  );

  final _i1.StorageMap<int, _i12.NodePower> _nodePower =
      const _i1.StorageMap<int, _i12.NodePower>(
    prefix: 'TfgridModule',
    storage: 'NodePower',
    valueCodec: _i12.NodePower.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
  );

  _i13.Future<_i2.Farm?> farms(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _farms.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _farms.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i13.Future<List<int>> nodesByFarmID(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _nodesByFarmID.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _nodesByFarmID.decodeValue(bytes);
    }
    return List<int>.filled(
      0,
      0,
      growable: true,
    ); /* Default */
  }

  _i13.Future<int> farmIdByName(
    List<int> key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _farmIdByName.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _farmIdByName.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  _i13.Future<List<int>> farmPayoutV2AddressByFarmID(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _farmPayoutV2AddressByFarmID.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _farmPayoutV2AddressByFarmID.decodeValue(bytes);
    }
    return List<int>.filled(
      0,
      0,
      growable: true,
    ); /* Default */
  }

  _i13.Future<_i4.Node?> nodes(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _nodes.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _nodes.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i13.Future<int> nodeIdByTwinID(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _nodeIdByTwinID.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _nodeIdByTwinID.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  _i13.Future<_i5.Entity?> entities(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _entities.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _entities.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i13.Future<int?> entityIdByAccountID(
    _i6.AccountId32 key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _entityIdByAccountID.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _entityIdByAccountID.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i13.Future<int> entityIdByName(
    List<int> key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _entityIdByName.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _entityIdByName.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  _i13.Future<_i7.Twin?> twins(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _twins.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _twins.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i13.Future<int?> twinIdByAccountID(
    _i6.AccountId32 key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _twinIdByAccountID.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _twinIdByAccountID.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i13.Future<_i6.AccountId32?> twinBoundedAccountID(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _twinBoundedAccountID.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _twinBoundedAccountID.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i13.Future<_i8.PricingPolicy?> pricingPolicies(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _pricingPolicies.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _pricingPolicies.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i13.Future<int> pricingPolicyIdByName(
    List<int> key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _pricingPolicyIdByName.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _pricingPolicyIdByName.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  _i13.Future<_i9.FarmingPolicy> farmingPoliciesMap(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _farmingPoliciesMap.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _farmingPoliciesMap.decodeValue(bytes);
    }
    return _i9.FarmingPolicy(
      version: 0,
      id: 0,
      name: List<int>.filled(
        0,
        0,
        growable: true,
      ),
      cu: 0,
      su: 0,
      nu: 0,
      ipv4: 0,
      minimalUptime: 0,
      policyCreated: 0,
      policyEnd: 0,
      immutable: false,
      default_: false,
      nodeCertification: _i14.NodeCertification.diy,
      farmCertification: _i15.FarmCertification.notCertified,
    ); /* Default */
  }

  _i13.Future<List<_i10.TermsAndConditions>?> usersTermsAndConditions(
    _i6.AccountId32 key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _usersTermsAndConditions.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _usersTermsAndConditions.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i13.Future<List<_i6.AccountId32>?> allowedNodeCertifiers(
      {_i1.BlockHash? at}) async {
    final hashedKey = _allowedNodeCertifiers.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _allowedNodeCertifiers.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i13.Future<int> connectionPrice({_i1.BlockHash? at}) async {
    final hashedKey = _connectionPrice.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _connectionPrice.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  _i13.Future<int> farmID({_i1.BlockHash? at}) async {
    final hashedKey = _farmID.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _farmID.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  _i13.Future<int> nodeID({_i1.BlockHash? at}) async {
    final hashedKey = _nodeID.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _nodeID.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  _i13.Future<int> entityID({_i1.BlockHash? at}) async {
    final hashedKey = _entityID.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _entityID.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  _i13.Future<int> twinID({_i1.BlockHash? at}) async {
    final hashedKey = _twinID.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _twinID.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  _i13.Future<int> pricingPolicyID({_i1.BlockHash? at}) async {
    final hashedKey = _pricingPolicyID.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _pricingPolicyID.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  _i13.Future<int> farmingPolicyID({_i1.BlockHash? at}) async {
    final hashedKey = _farmingPolicyID.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _farmingPolicyID.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  _i13.Future<_i11.StorageVersion> palletVersion({_i1.BlockHash? at}) async {
    final hashedKey = _palletVersion.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _palletVersion.decodeValue(bytes);
    }
    return _i11.StorageVersion.v17Struct; /* Default */
  }

  _i13.Future<List<int>> zosVersion({_i1.BlockHash? at}) async {
    final hashedKey = _zosVersion.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _zosVersion.decodeValue(bytes);
    }
    return List<int>.filled(
      0,
      0,
      growable: true,
    ); /* Default */
  }

  _i13.Future<_i12.NodePower> nodePower(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _nodePower.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _nodePower.decodeValue(bytes);
    }
    return _i12.NodePower(
      state: _i16.Up(),
      target: _i17.Power.up,
    ); /* Default */
  }
}

class Txs {
  const Txs();

  _i18.RuntimeCall setStorageVersion({required version}) {
    final _call = _i19.Call.values.setStorageVersion(version: version);
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall createFarm({
    required name,
    required publicIps,
  }) {
    final _call = _i19.Call.values.createFarm(
      name: name,
      publicIps: publicIps,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall updateFarm({
    required farmId,
    required name,
  }) {
    final _call = _i19.Call.values.updateFarm(
      farmId: farmId,
      name: name,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall addStellarPayoutV2address({
    required farmId,
    required stellarAddress,
  }) {
    final _call = _i19.Call.values.addStellarPayoutV2address(
      farmId: farmId,
      stellarAddress: stellarAddress,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall setFarmCertification({
    required farmId,
    required certification,
  }) {
    final _call = _i19.Call.values.setFarmCertification(
      farmId: farmId,
      certification: certification,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall addFarmIp({
    required farmId,
    required ip,
    required gw,
  }) {
    final _call = _i19.Call.values.addFarmIp(
      farmId: farmId,
      ip: ip,
      gw: gw,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall removeFarmIp({
    required farmId,
    required ip,
  }) {
    final _call = _i19.Call.values.removeFarmIp(
      farmId: farmId,
      ip: ip,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall createNode({
    required farmId,
    required resources,
    required location,
    required interfaces,
    required secureBoot,
    required virtualized,
    serialNumber,
  }) {
    final _call = _i19.Call.values.createNode(
      farmId: farmId,
      resources: resources,
      location: location,
      interfaces: interfaces,
      secureBoot: secureBoot,
      virtualized: virtualized,
      serialNumber: serialNumber,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall updateNode({
    required nodeId,
    required farmId,
    required resources,
    required location,
    required interfaces,
    required secureBoot,
    required virtualized,
    serialNumber,
  }) {
    final _call = _i19.Call.values.updateNode(
      nodeId: nodeId,
      farmId: farmId,
      resources: resources,
      location: location,
      interfaces: interfaces,
      secureBoot: secureBoot,
      virtualized: virtualized,
      serialNumber: serialNumber,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall setNodeCertification({
    required nodeId,
    required nodeCertification,
  }) {
    final _call = _i19.Call.values.setNodeCertification(
      nodeId: nodeId,
      nodeCertification: nodeCertification,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall reportUptime({required uptime}) {
    final _call = _i19.Call.values.reportUptime(uptime: uptime);
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall addNodePublicConfig({
    required farmId,
    required nodeId,
    publicConfig,
  }) {
    final _call = _i19.Call.values.addNodePublicConfig(
      farmId: farmId,
      nodeId: nodeId,
      publicConfig: publicConfig,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall deleteNode({required nodeId}) {
    final _call = _i19.Call.values.deleteNode(nodeId: nodeId);
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall createEntity({
    required target,
    required name,
    required country,
    required city,
    required signature,
  }) {
    final _call = _i19.Call.values.createEntity(
      target: target,
      name: name,
      country: country,
      city: city,
      signature: signature,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall updateEntity({
    required name,
    required country,
    required city,
  }) {
    final _call = _i19.Call.values.updateEntity(
      name: name,
      country: country,
      city: city,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall deleteEntity() {
    final _call = _i19.Call.values.deleteEntity();
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall createTwin({
    relay,
    pk,
  }) {
    final _call = _i19.Call.values.createTwin(
      relay: relay,
      pk: pk,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall updateTwin({
    relay,
    pk,
  }) {
    final _call = _i19.Call.values.updateTwin(
      relay: relay,
      pk: pk,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall addTwinEntity({
    required twinId,
    required entityId,
    required signature,
  }) {
    final _call = _i19.Call.values.addTwinEntity(
      twinId: twinId,
      entityId: entityId,
      signature: signature,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall deleteTwinEntity({
    required twinId,
    required entityId,
  }) {
    final _call = _i19.Call.values.deleteTwinEntity(
      twinId: twinId,
      entityId: entityId,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall createPricingPolicy({
    required name,
    required su,
    required cu,
    required nu,
    required ipu,
    required uniqueName,
    required domainName,
    required foundationAccount,
    required certifiedSalesAccount,
    required discountForDedicationNodes,
  }) {
    final _call = _i19.Call.values.createPricingPolicy(
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
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall updatePricingPolicy({
    required pricingPolicyId,
    required name,
    required su,
    required cu,
    required nu,
    required ipu,
    required uniqueName,
    required domainName,
    required foundationAccount,
    required certifiedSalesAccount,
    required discountForDedicationNodes,
  }) {
    final _call = _i19.Call.values.updatePricingPolicy(
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
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall createFarmingPolicy({
    required name,
    required su,
    required cu,
    required nu,
    required ipv4,
    required minimalUptime,
    required policyEnd,
    required immutable,
    required default_,
    required nodeCertification,
    required farmCertification,
  }) {
    final _call = _i19.Call.values.createFarmingPolicy(
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
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall userAcceptTc({
    required documentLink,
    required documentHash,
  }) {
    final _call = _i19.Call.values.userAcceptTc(
      documentLink: documentLink,
      documentHash: documentHash,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall deleteNodeFarm({required nodeId}) {
    final _call = _i19.Call.values.deleteNodeFarm(nodeId: nodeId);
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall setFarmDedicated({
    required farmId,
    required dedicated,
  }) {
    final _call = _i19.Call.values.setFarmDedicated(
      farmId: farmId,
      dedicated: dedicated,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall forceResetFarmIp({
    required farmId,
    required ip,
  }) {
    final _call = _i19.Call.values.forceResetFarmIp(
      farmId: farmId,
      ip: ip,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall setConnectionPrice({required price}) {
    final _call = _i19.Call.values.setConnectionPrice(price: price);
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall addNodeCertifier({required certifier}) {
    final _call = _i19.Call.values.addNodeCertifier(certifier: certifier);
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall removeNodeCertifier({required certifier}) {
    final _call = _i19.Call.values.removeNodeCertifier(certifier: certifier);
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall updateFarmingPolicy({
    required farmingPolicyId,
    required name,
    required su,
    required cu,
    required nu,
    required ipv4,
    required minimalUptime,
    required policyEnd,
    required default_,
    required nodeCertification,
    required farmCertification,
  }) {
    final _call = _i19.Call.values.updateFarmingPolicy(
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
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall attachPolicyToFarm({
    required farmId,
    limits,
  }) {
    final _call = _i19.Call.values.attachPolicyToFarm(
      farmId: farmId,
      limits: limits,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall setZosVersion({required zosVersion}) {
    final _call = _i19.Call.values.setZosVersion(zosVersion: zosVersion);
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall changePowerState({required powerState}) {
    final _call = _i19.Call.values.changePowerState(powerState: powerState);
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall changePowerTarget({
    required nodeId,
    required powerTarget,
  }) {
    final _call = _i19.Call.values.changePowerTarget(
      nodeId: nodeId,
      powerTarget: powerTarget,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall bondTwinAccount({required twinId}) {
    final _call = _i19.Call.values.bondTwinAccount(twinId: twinId);
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }

  _i18.RuntimeCall reportUptimeV2({
    required uptime,
    required timestampHint,
  }) {
    final _call = _i19.Call.values.reportUptimeV2(
      uptime: uptime,
      timestampHint: timestampHint,
    );
    return _i18.RuntimeCall.values.tfgridModule(_call);
  }
}

class Constants {
  Constants();

  final int maxFarmNameLength = 40;

  final int maxFarmPublicIps = 512;

  final int maxInterfacesLength = 10;

  final int maxInterfaceIpsLength = 10;

  final BigInt timestampHintDrift = BigInt.from(60);
}
