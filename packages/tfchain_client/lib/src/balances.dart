import 'package:polkadart/scale_codec.dart';
import 'package:tfchain_client/generated/dev/types/frame_system/account_info.dart';
import 'package:tfchain_client/generated/dev/types/sp_runtime/multiaddress/multi_address.dart';
import 'package:tfchain_client/generated/dev/types/tfchain_runtime/runtime_call.dart';
import 'package:tfchain_client/models/balances.dart';
import 'package:tfchain_client/tfchain_client.dart';

class QueryBalances {
  final QueryClient client;
  QueryBalances(this.client);

  Future<AccountInfo?> get(QueryBalancesGetOptions options) async {
    // TODO: should get pair.publicKey.bytes
    final res =
        await client.api.query.system.account(options.address.codeUnits);
    return res;
  }
}

class Balances extends QueryBalances {
  Balances(Client client) : super(client);

  Future<RuntimeCall> transfer(BalanceTransferOptions options) async {
    if (options.amount.isNaN || options.amount <= 0) {
      throw Exception("Amount must be a positive numeric value");
    }
    MultiAddress multiAddress =
        MultiAddress.decode(Input.fromBytes(options.address));
    final extrinsic = client.api.tx.balances
        .transfer(dest: multiAddress, value: options.amount);
    return extrinsic;
  }

  // Future<void> getMyBalance() async {
  //   return this.get(QueryBalancesGetOptions(address: client.))
  // }
}
