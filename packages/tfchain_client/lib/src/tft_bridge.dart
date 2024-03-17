import 'package:tfchain_client/generated/dev/types/tfchain_runtime/runtime_call.dart';
import 'package:tfchain_client/tfchain_client.dart';

class QueryBridge {
  final QueryClient client;
  QueryBridge(this.client);

  Future<BigInt?> getWithdrawFee() async {
    final fee = await client.api.query.tFTBridgeModule.withdrawFee();
    return fee;
  }

  Future<BigInt?> getDepositFee() async {
    final fee = await client.api.query.tFTBridgeModule.depositFee();
    return fee;
  }
}

class Bridge extends QueryBridge {
  Bridge(Client client) : super(client);

  Future<RuntimeCall> swapToStellar(
      {required String target, required int amount}) async {
    final extrinsic = client.api.tx.tFTBridgeModule
        .swapToStellar(targetStellarAddress: target, amount: amount);
    return extrinsic;
  }
}
