import 'package:tfchain_client/generated/dev/types/tfchain_runtime/runtime_call.dart';
import 'package:tfchain_client/generated/dev/types/tfchain_support/types/farm.dart';
import 'package:tfchain_client/models/farms.dart';
import 'package:tfchain_client/tfchain_client.dart';

class QueryFarms {
  final QueryClient client;
  QueryFarms(this.client);

  Future<Farm?> get(QueryFarmsGetOptions options) async {
    final res = await client.api.query.tfgridModule.farms(options.id);
    return res as Farm;
  }
}

class Farms extends QueryFarms {
  Farms(Client client) : super(client);

  Future<RuntimeCall> create(CreateFarmOptions options) async {
    final extrinsic = client.api.tx.tfgridModule
        .createFarm(name: options.name.codeUnits, publicIps: options.publicIps);
    return extrinsic;
  }

// TODO: Bug
  Future<RuntimeCall> addFarmIp(AddFarmIPOptions options) async {
    final extrinsic = client.api.tx.tfgridModule.addFarmIp(
        farmId: options.farmId,
        ip: options.ip.codeUnits,
        gw: options.gw.codeUnits);
    return extrinsic;
  }

  Future<RuntimeCall> removeFarmIp(
      {required int farmId, required String ip}) async {
    final extrinsic =
        client.api.tx.tfgridModule.removeFarmIp(farmId: farmId, ip: ip);
    return extrinsic;
  }

  Future<RuntimeCall> addStellarAddress(
      {required int farmId, required String stellarAddress}) async {
    final extrinsic = client.api.tx.tfgridModule.addStellarPayoutV2address(
        farmId: farmId, stellarAddress: stellarAddress);
    return extrinsic;
  }
}
