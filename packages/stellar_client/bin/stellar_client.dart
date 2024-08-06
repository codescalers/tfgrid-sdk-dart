import 'package:stellar_client/models/client.dart';
import 'package:stellar_client/stellar_client.dart';
import 'package:stellar_flutter_sdk/stellar_flutter_sdk.dart';

void main() async {
  final stellarClient = Client(NetworkType.TestNet);
  final mnemonic = await Wallet.generate24WordsMnemonic();

  final newPair = await stellarClient
      .createThreefoldAccount(CreateAccountOptions(mnemonic: mnemonic));
  print(newPair!.accountId);
  // await stellarClient.fundTrustLine("TFT");

  // final list = await stellarClient.getBalance();
  // print(list);

  // await stellarClient.getTransactions();

  // await stellarClient.fetchFundDetails(FetchFundDetailsOptions(
  //     assetCode: 'TFT',
  //     issuer: 'GBOVQKJYHXRR3DX6NOX2RRYFRCUMSADGDESTDNBDS6CDVLGVESRTAC47'));
}
