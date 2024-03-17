import 'package:tfchain_client/generated/dev/types/pallet_smart_contract/grid_contract/name_contract_name.dart';
import 'package:tfchain_client/generated/dev/types/pallet_smart_contract/types/contract.dart';
import 'package:tfchain_client/generated/dev/types/pallet_smart_contract/types/contract_lock.dart';
import 'package:tfchain_client/generated/dev/types/pallet_smart_contract/types/service_contract.dart';
import 'package:tfchain_client/generated/dev/types/tfchain_runtime/runtime_call.dart';
import 'package:tfchain_client/tfchain_client.dart';

const twoWeeks = 1209600000;

class QueryContracts {
  final QueryClient client;
  QueryContracts(this.client);

  Future<Contract?> get({required BigInt contractId}) async {
    final res =
        await client.api.query.smartContractModule.contracts(contractId);
    return res as Contract;
  }

  Future<BigInt?> getContractIdByActiveRentForNode(
      {required int nodeId}) async {
    final res = await client.api.query.smartContractModule
        .activeRentContractForNode(nodeId);
    return res;
  }

  Future<List<int>> getActiveContracts({required int nodeId}) async {
    final res =
        await client.api.query.smartContractModule.activeNodeContracts(nodeId);
    return res;
  }

  Future<BigInt?> getContractIdByName({required String name}) async {
    final res = await client.api.query.smartContractModule
        .contractIDByNameRegistration(name as NameContractName);
    return res;
  }

  Future<BigInt?> getContractIdByNodeIdAndHash(
      {required int nodeId, required List<int> hash}) async {
    final res = await client.api.query.smartContractModule
        .contractIDByNodeIDAndHash(nodeId, hash);
    return res;
  }

  Future<ContractLock?> contractLock({required BigInt id}) async {
    final res = await client.api.query.smartContractModule.contractLock(id);
    return res;
  }

  Future<num> getDeletionTime({required BigInt id}) async {
    final contract = await get(contractId: id);
    if (contract != null && contract.state.toJson()["Created"] == null) {
      return 0;
    }

    //TODO: double check that GracePeriod typed like that.
    final blockNumber = contract!.state.toJson()["GracePeriod"];
    try {
      final currentBlockNumber = await client.api.query.system.number();

      // each block takes 6 seconds
      final gracePeriodStartTime = DateTime.now().millisecondsSinceEpoch -
          (currentBlockNumber - blockNumber) * 6000;
      return gracePeriodStartTime + twoWeeks;
    } catch (e) {
      throw Exception(
          "Error getting current block number for contract $id deletion: $e");
    }
  }

  Future<ServiceContract?> getService({required BigInt serviceId}) async {
    final res =
        await client.api.query.smartContractModule.serviceContracts(serviceId);
    return res;
  }

  Future<BigInt?> getDedicatedNodeExtraFee({required int nodeId}) async {
    final res = await client.api.query.smartContractModule
        .dedicatedNodesExtraFee(nodeId);
    return res;
  }
}

class Contracts extends QueryContracts {
  Contracts(Client client) : super(client);

  Future<RuntimeCall> createNode(
      {required int nodeId,
      required List<int> deploymentHash,
      required List<int> deploymentData,
      required int publicIps}) async {
    final extrinsic = client.api.tx.smartContractModule.createNodeContract(
        nodeId: nodeId,
        deploymentHash: deploymentHash,
        deploymentData: deploymentData,
        publicIps: publicIps);

    return extrinsic;
  }

  Future<RuntimeCall> updateNode(
      {required int contractId,
      required List<int> deploymentHash,
      required List<int> deploymentData}) async {
    final extrinsic = client.api.tx.smartContractModule.updateNodeContract(
        contractId: contractId,
        deploymentHash: deploymentHash,
        deploymentData: deploymentData);
    return extrinsic;
  }

  Future<RuntimeCall> createName({required String name}) async {
    final extrinsic =
        client.api.tx.smartContractModule.createNameContract(name: name);
    return extrinsic;
  }

  Future<RuntimeCall> createRent(
      {required int nodeId, required int solutionProviderId}) async {
    final extrinsic = client.api.tx.smartContractModule.createRentContract(
        nodeId: nodeId, solutionProviderId: solutionProviderId);
    return extrinsic;
  }

  Future<RuntimeCall> cancel({required BigInt contractId}) async {
    final contract = await get(contractId: contractId);
    if (contract == null) {
      throw Exception("Contract not found");
    }

    final extrinsic = client.api.tx.smartContractModule
        .cancelContract(contractId: contractId);
    return extrinsic;
  }

  Future<RuntimeCall> setDedicatedNodeExtraFee(
      {required int nodeId, required int extraFee}) async {
    final extrinsic = client.api.tx.smartContractModule
        .setDedicatedNodeExtraFee(nodeId: nodeId, extraFee: extraFee);
    return extrinsic;
  }
}
