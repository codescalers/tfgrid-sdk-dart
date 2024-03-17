// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i11;

import 'package:polkadart/polkadart.dart' as _i1;
import 'package:polkadart/scale_codec.dart' as _i3;

import '../types/pallet_smart_contract/grid_contract/name_contract_name.dart'
    as _i7;
import '../types/pallet_smart_contract/pallet/call.dart' as _i14;
import '../types/pallet_smart_contract/types/contract.dart' as _i2;
import '../types/pallet_smart_contract/types/contract_billing_information.dart'
    as _i4;
import '../types/pallet_smart_contract/types/contract_lock.dart' as _i6;
import '../types/pallet_smart_contract/types/contract_resources.dart' as _i5;
import '../types/pallet_smart_contract/types/service_contract.dart' as _i10;
import '../types/pallet_smart_contract/types/solution_provider.dart' as _i8;
import '../types/pallet_smart_contract/types/storage_version.dart' as _i9;
import '../types/tfchain_runtime/runtime_call.dart' as _i13;
import '../types/tfchain_support/resources/resources.dart' as _i12;

class Queries {
  const Queries(this.__api);

  final _i1.StateApi __api;

  final _i1.StorageMap<BigInt, _i2.Contract> _contracts =
      const _i1.StorageMap<BigInt, _i2.Contract>(
    prefix: 'SmartContractModule',
    storage: 'Contracts',
    valueCodec: _i2.Contract.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U64Codec.codec),
  );

  final _i1.StorageMap<BigInt, _i4.ContractBillingInformation>
      _contractBillingInformationByID =
      const _i1.StorageMap<BigInt, _i4.ContractBillingInformation>(
    prefix: 'SmartContractModule',
    storage: 'ContractBillingInformationByID',
    valueCodec: _i4.ContractBillingInformation.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U64Codec.codec),
  );

  final _i1.StorageMap<BigInt, _i5.ContractResources> _nodeContractResources =
      const _i1.StorageMap<BigInt, _i5.ContractResources>(
    prefix: 'SmartContractModule',
    storage: 'NodeContractResources',
    valueCodec: _i5.ContractResources.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U64Codec.codec),
  );

  final _i1.StorageDoubleMap<int, List<int>, BigInt>
      _contractIDByNodeIDAndHash =
      const _i1.StorageDoubleMap<int, List<int>, BigInt>(
    prefix: 'SmartContractModule',
    storage: 'ContractIDByNodeIDAndHash',
    valueCodec: _i3.U64Codec.codec,
    hasher1: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
    hasher2: _i1.StorageHasher.blake2b128Concat(_i3.U8ArrayCodec(32)),
  );

  final _i1.StorageMap<int, List<int>> _activeNodeContracts =
      const _i1.StorageMap<int, List<int>>(
    prefix: 'SmartContractModule',
    storage: 'ActiveNodeContracts',
    valueCodec: _i3.U64SequenceCodec.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
  );

  final _i1.StorageMap<BigInt, List<int>> _contractsToBillAt =
      const _i1.StorageMap<BigInt, List<int>>(
    prefix: 'SmartContractModule',
    storage: 'ContractsToBillAt',
    valueCodec: _i3.U64SequenceCodec.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U64Codec.codec),
  );

  final _i1.StorageMap<BigInt, _i6.ContractLock> _contractLock =
      const _i1.StorageMap<BigInt, _i6.ContractLock>(
    prefix: 'SmartContractModule',
    storage: 'ContractLock',
    valueCodec: _i6.ContractLock.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U64Codec.codec),
  );

  final _i1.StorageMap<_i7.NameContractName, BigInt>
      _contractIDByNameRegistration =
      const _i1.StorageMap<_i7.NameContractName, BigInt>(
    prefix: 'SmartContractModule',
    storage: 'ContractIDByNameRegistration',
    valueCodec: _i3.U64Codec.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i7.NameContractNameCodec()),
  );

  final _i1.StorageMap<int, BigInt> _activeRentContractForNode =
      const _i1.StorageMap<int, BigInt>(
    prefix: 'SmartContractModule',
    storage: 'ActiveRentContractForNode',
    valueCodec: _i3.U64Codec.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
  );

  final _i1.StorageValue<BigInt> _contractID = const _i1.StorageValue<BigInt>(
    prefix: 'SmartContractModule',
    storage: 'ContractID',
    valueCodec: _i3.U64Codec.codec,
  );

  final _i1.StorageMap<BigInt, _i8.SolutionProvider> _solutionProviders =
      const _i1.StorageMap<BigInt, _i8.SolutionProvider>(
    prefix: 'SmartContractModule',
    storage: 'SolutionProviders',
    valueCodec: _i8.SolutionProvider.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U64Codec.codec),
  );

  final _i1.StorageValue<BigInt> _solutionProviderID =
      const _i1.StorageValue<BigInt>(
    prefix: 'SmartContractModule',
    storage: 'SolutionProviderID',
    valueCodec: _i3.U64Codec.codec,
  );

  final _i1.StorageValue<_i9.StorageVersion> _palletVersion =
      const _i1.StorageValue<_i9.StorageVersion>(
    prefix: 'SmartContractModule',
    storage: 'PalletVersion',
    valueCodec: _i9.StorageVersion.codec,
  );

  final _i1.StorageValue<BigInt> _billingFrequency =
      const _i1.StorageValue<BigInt>(
    prefix: 'SmartContractModule',
    storage: 'BillingFrequency',
    valueCodec: _i3.U64Codec.codec,
  );

  final _i1.StorageMap<BigInt, _i10.ServiceContract> _serviceContracts =
      const _i1.StorageMap<BigInt, _i10.ServiceContract>(
    prefix: 'SmartContractModule',
    storage: 'ServiceContracts',
    valueCodec: _i10.ServiceContract.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U64Codec.codec),
  );

  final _i1.StorageValue<BigInt> _serviceContractID =
      const _i1.StorageValue<BigInt>(
    prefix: 'SmartContractModule',
    storage: 'ServiceContractID',
    valueCodec: _i3.U64Codec.codec,
  );

  final _i1.StorageValue<int> _currentMigrationStage =
      const _i1.StorageValue<int>(
    prefix: 'SmartContractModule',
    storage: 'CurrentMigrationStage',
    valueCodec: _i3.U8Codec.codec,
  );

  final _i1.StorageMap<int, BigInt> _dedicatedNodesExtraFee =
      const _i1.StorageMap<int, BigInt>(
    prefix: 'SmartContractModule',
    storage: 'DedicatedNodesExtraFee',
    valueCodec: _i3.U64Codec.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U32Codec.codec),
  );

  _i11.Future<_i2.Contract?> contracts(
    BigInt key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _contracts.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _contracts.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i11.Future<_i4.ContractBillingInformation> contractBillingInformationByID(
    BigInt key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _contractBillingInformationByID.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _contractBillingInformationByID.decodeValue(bytes);
    }
    return _i4.ContractBillingInformation(
      previousNuReported: BigInt.zero,
      lastUpdated: BigInt.zero,
      amountUnbilled: BigInt.zero,
    ); /* Default */
  }

  _i11.Future<_i5.ContractResources> nodeContractResources(
    BigInt key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _nodeContractResources.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _nodeContractResources.decodeValue(bytes);
    }
    return _i5.ContractResources(
      contractId: BigInt.zero,
      used: _i12.Resources(
        hru: BigInt.zero,
        sru: BigInt.zero,
        cru: BigInt.zero,
        mru: BigInt.zero,
      ),
    ); /* Default */
  }

  _i11.Future<BigInt> contractIDByNodeIDAndHash(
    int key1,
    List<int> key2, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _contractIDByNodeIDAndHash.hashedKeyFor(
      key1,
      key2,
    );
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _contractIDByNodeIDAndHash.decodeValue(bytes);
    }
    return BigInt.zero; /* Default */
  }

  _i11.Future<List<int>> activeNodeContracts(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _activeNodeContracts.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _activeNodeContracts.decodeValue(bytes);
    }
    return List<int>.filled(
      0,
      0,
      growable: true,
    ); /* Default */
  }

  _i11.Future<List<int>> contractsToBillAt(
    BigInt key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _contractsToBillAt.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _contractsToBillAt.decodeValue(bytes);
    }
    return List<int>.filled(
      0,
      0,
      growable: true,
    ); /* Default */
  }

  _i11.Future<_i6.ContractLock> contractLock(
    BigInt key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _contractLock.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _contractLock.decodeValue(bytes);
    }
    return _i6.ContractLock(
      amountLocked: BigInt.zero,
      extraAmountLocked: BigInt.zero,
      lockUpdated: BigInt.zero,
      cycles: 0,
    ); /* Default */
  }

  _i11.Future<BigInt> contractIDByNameRegistration(
    _i7.NameContractName key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _contractIDByNameRegistration.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _contractIDByNameRegistration.decodeValue(bytes);
    }
    return BigInt.zero; /* Default */
  }

  _i11.Future<BigInt?> activeRentContractForNode(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _activeRentContractForNode.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _activeRentContractForNode.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i11.Future<BigInt> contractID({_i1.BlockHash? at}) async {
    final hashedKey = _contractID.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _contractID.decodeValue(bytes);
    }
    return BigInt.zero; /* Default */
  }

  _i11.Future<_i8.SolutionProvider?> solutionProviders(
    BigInt key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _solutionProviders.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _solutionProviders.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i11.Future<BigInt> solutionProviderID({_i1.BlockHash? at}) async {
    final hashedKey = _solutionProviderID.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _solutionProviderID.decodeValue(bytes);
    }
    return BigInt.zero; /* Default */
  }

  _i11.Future<_i9.StorageVersion> palletVersion({_i1.BlockHash? at}) async {
    final hashedKey = _palletVersion.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _palletVersion.decodeValue(bytes);
    }
    return _i9.StorageVersion.v10; /* Default */
  }

  _i11.Future<BigInt> billingFrequency({_i1.BlockHash? at}) async {
    final hashedKey = _billingFrequency.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _billingFrequency.decodeValue(bytes);
    }
    return BigInt.from(600); /* Default */
  }

  _i11.Future<_i10.ServiceContract?> serviceContracts(
    BigInt key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _serviceContracts.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _serviceContracts.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i11.Future<BigInt> serviceContractID({_i1.BlockHash? at}) async {
    final hashedKey = _serviceContractID.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _serviceContractID.decodeValue(bytes);
    }
    return BigInt.zero; /* Default */
  }

  /// The current migration's stage, if any.
  _i11.Future<int?> currentMigrationStage({_i1.BlockHash? at}) async {
    final hashedKey = _currentMigrationStage.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _currentMigrationStage.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i11.Future<BigInt> dedicatedNodesExtraFee(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _dedicatedNodesExtraFee.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _dedicatedNodesExtraFee.decodeValue(bytes);
    }
    return BigInt.zero; /* Default */
  }
}

class Txs {
  const Txs();

  _i13.RuntimeCall createNodeContract({
    required nodeId,
    required deploymentHash,
    required deploymentData,
    required publicIps,
    solutionProviderId,
  }) {
    final _call = _i14.Call.values.createNodeContract(
      nodeId: nodeId,
      deploymentHash: deploymentHash,
      deploymentData: deploymentData,
      publicIps: publicIps,
      solutionProviderId: solutionProviderId,
    );
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall updateNodeContract({
    required contractId,
    required deploymentHash,
    required deploymentData,
  }) {
    final _call = _i14.Call.values.updateNodeContract(
      contractId: contractId,
      deploymentHash: deploymentHash,
      deploymentData: deploymentData,
    );
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall cancelContract({required contractId}) {
    final _call = _i14.Call.values.cancelContract(contractId: contractId);
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall createNameContract({required name}) {
    final _call = _i14.Call.values.createNameContract(name: name);
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall addNruReports({required reports}) {
    final _call = _i14.Call.values.addNruReports(reports: reports);
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall reportContractResources({required contractResources}) {
    final _call = _i14.Call.values
        .reportContractResources(contractResources: contractResources);
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall createRentContract({
    required nodeId,
    solutionProviderId,
  }) {
    final _call = _i14.Call.values.createRentContract(
      nodeId: nodeId,
      solutionProviderId: solutionProviderId,
    );
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall createSolutionProvider({
    required description,
    required link,
    required providers,
  }) {
    final _call = _i14.Call.values.createSolutionProvider(
      description: description,
      link: link,
      providers: providers,
    );
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall approveSolutionProvider({
    required solutionProviderId,
    required approve,
  }) {
    final _call = _i14.Call.values.approveSolutionProvider(
      solutionProviderId: solutionProviderId,
      approve: approve,
    );
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall billContractForBlock({required contractId}) {
    final _call = _i14.Call.values.billContractForBlock(contractId: contractId);
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall serviceContractCreate({
    required serviceAccount,
    required consumerAccount,
  }) {
    final _call = _i14.Call.values.serviceContractCreate(
      serviceAccount: serviceAccount,
      consumerAccount: consumerAccount,
    );
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall serviceContractSetMetadata({
    required serviceContractId,
    required metadata,
  }) {
    final _call = _i14.Call.values.serviceContractSetMetadata(
      serviceContractId: serviceContractId,
      metadata: metadata,
    );
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall serviceContractSetFees({
    required serviceContractId,
    required baseFee,
    required variableFee,
  }) {
    final _call = _i14.Call.values.serviceContractSetFees(
      serviceContractId: serviceContractId,
      baseFee: baseFee,
      variableFee: variableFee,
    );
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall serviceContractApprove({required serviceContractId}) {
    final _call = _i14.Call.values
        .serviceContractApprove(serviceContractId: serviceContractId);
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall serviceContractReject({required serviceContractId}) {
    final _call = _i14.Call.values
        .serviceContractReject(serviceContractId: serviceContractId);
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall serviceContractCancel({required serviceContractId}) {
    final _call = _i14.Call.values
        .serviceContractCancel(serviceContractId: serviceContractId);
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall serviceContractBill({
    required serviceContractId,
    required variableAmount,
    required metadata,
  }) {
    final _call = _i14.Call.values.serviceContractBill(
      serviceContractId: serviceContractId,
      variableAmount: variableAmount,
      metadata: metadata,
    );
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall changeBillingFrequency({required frequency}) {
    final _call = _i14.Call.values.changeBillingFrequency(frequency: frequency);
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall attachSolutionProviderId({
    required contractId,
    required solutionProviderId,
  }) {
    final _call = _i14.Call.values.attachSolutionProviderId(
      contractId: contractId,
      solutionProviderId: solutionProviderId,
    );
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }

  _i13.RuntimeCall setDedicatedNodeExtraFee({
    required nodeId,
    required extraFee,
  }) {
    final _call = _i14.Call.values.setDedicatedNodeExtraFee(
      nodeId: nodeId,
      extraFee: extraFee,
    );
    return _i13.RuntimeCall.values.smartContractModule(_call);
  }
}

class Constants {
  Constants();

  final int maxNameContractNameLength = 64;

  final int maxDeploymentDataLength = 512;

  final int maxNodeContractPublicIps = 512;
}
