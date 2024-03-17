import 'package:tfchain_client/generated/dev/types/pallet_tfgrid/types/twin.dart';
import 'package:tfchain_client/generated/dev/types/tfchain_runtime/runtime_call.dart';
import 'package:tfchain_client/models/twins.dart';
import 'package:tfchain_client/tfchain_client.dart';

class QueryTwins {
  final QueryClient client;
  QueryTwins(this.client);

  Future<Twin?> get(QueryTwinsGetOptions options) async {
    final res = await client.api.query.tfgridModule.twins(options.id);
    return res;
  }

  Future<int?> getTwinIdByAccountId(
      QueryTwinsGetTwinByAccountIdOptions options) async {
    final res = await client.api.query.tfgridModule
        .twinIdByAccountID(options.accountId);
    return res;
  }
}

class Twins extends QueryTwins {
  Twins(Client client) : super(client);

  Future<RuntimeCall> create(TwinOptions options) async {
    final extrinsic = client.api.tx.tfgridModule
        .createTwin(relay: options.relay, pk: options.pk);
    return extrinsic;
  }

  Future<RuntimeCall> update(TwinOptions options) async {
    final extrinsic = client.api.tx.tfgridModule
        .updateTwin(relay: options.relay, pk: options.pk);
    return extrinsic;
  }
}
