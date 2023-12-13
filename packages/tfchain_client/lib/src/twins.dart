import 'package:tfchain_client/generated/dev/types/pallet_tfgrid/types/twin.dart';
import 'package:tfchain_client/generated/dev/types/tfchain_runtime/runtime_call.dart';
import 'package:tfchain_client/tfchain_client.dart';

class QueryTwins {
  final QueryClient client;
  QueryTwins(this.client);

  Future<Twin?> get({required int id}) async {
    final res = await client.api.query.tfgridModule.twins(id);
    return res;
  }

  Future<int?> getTwinIdByAccountId({required List<int> accountId}) async {
    final res =
        await client.api.query.tfgridModule.twinIdByAccountID(accountId);
    return res;
  }
}

class Twins extends QueryTwins {
  Twins(Client client) : super(client);

  Future<RuntimeCall> create(
      {required String relay, required String pk}) async {
    final extrinsic =
        client.api.tx.tfgridModule.createTwin(relay: relay, pk: pk);
    return extrinsic;
  }

  Future<RuntimeCall> update(
      {required String relay, required String pk}) async {
    final extrinsic =
        client.api.tx.tfgridModule.updateTwin(relay: relay, pk: pk);
    return extrinsic;
  }
// TODO:
  // Future<int?> getMyTwinId(
  //     {required List<int> accountId) async {
  //       return getTwinIdByAccountId(accountId: accountId);

  // }
}
