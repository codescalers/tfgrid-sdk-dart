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
  Bridge(Client this.client) : super(client);
  final Client client;

  Future<void> swapToStellar(
      {required String target, required BigInt amount}) async {
    final extrinsic = client.api.tx.tFTBridgeModule.swapToStellar(
        targetStellarAddress: target.codeUnits,
        amount: amount * BigInt.from(10).pow(7));
    await client.apply(extrinsic);
  }
}
