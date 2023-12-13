import 'package:tfchain_client/generated/dev/types/frame_system/account_info.dart';
import 'package:tfchain_client/generated/dev/types/tfchain_runtime/runtime_call.dart';
import 'package:tfchain_client/tfchain_client.dart';

class QueryBalances {
  final QueryClient client;
  QueryBalances(this.client);

  Future<AccountInfo?> get({required List<int> publicKey}) async {
    final res = await client.api.query.system.account(publicKey);
    return res;
  }
}

class Balances extends QueryBalances {
  Balances(Client client) : super(client);

  //TODO: Error String is not type of multiaddress

  Future<RuntimeCall> transfer(
      {required String address, required int amount}) async {
    if (amount.isNaN || amount <= 0) {
      throw Exception("Amount must be a positive numeric value");
    }

    final extrinsic =
        client.api.tx.balances.transfer(dest: address, value: amount);
    return extrinsic;
  }

// // TODO:
//   Future<void> getMyBalance() async {
//     // return this.get(publicKey: this.client.)
//   }
}
