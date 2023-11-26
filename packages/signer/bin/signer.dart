import 'package:signer/signer.dart';
import 'dart:typed_data';

// Just for testing will be deleted soon

void main() async {
  final mnemonic =
      'picnic flip cigar rival risk scatter slide aware trust garlic solution token';
  final signer = Signer();
  await signer.fromMnemonic(mnemonic);
  final data = "anydata123";
  final signatureFromMnemonic = await signer.sign(data);

  print("Signature from mnemonic: $signatureFromMnemonic");

  final seedUint8List = Uint8List.fromList([
    108,
    29,
    148,
    202,
    167,
    191,
    10,
    13,
    126,
    240,
    152,
    60,
    24,
    35,
    233,
    172,
    106,
    190,
    213,
    114,
    33,
    213,
    125,
    9,
    34,
    101,
    67,
    82,
    216,
    92,
    177,
    228
  ]);

  final signer2 = Signer();
  await signer2.fromSeed(seedUint8List);
  final signatureFromSeed = await signer2.sign(data);
  print("Signature from Seed: $signatureFromSeed");

  final signer3 = Signer();
  await signer3.fromHexSeed(
      '0x6c1d94caa7bf0a0d7ef0983c1823e9ac6abed57221d57d0922654352d85cb1e4');
  final signatureFromSeed2 = await signer3.sign(data);
  print("Signature from Hex Seed: $signatureFromSeed2");

}
