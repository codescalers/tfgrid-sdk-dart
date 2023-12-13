part of '../signer.dart';

class Signer {
  KeyPair? _keypair;

  Future<void> fromMnemonic(String mnemonic) async {
    try {
      _keypair = await KeyPair.fromMnemonic(mnemonic);
    } catch (e) {
      throw Exception("Failed to create keyPair from mnemonic. Error: $e");
    }
  }

  Future<void> fromSeed(Uint8List seed) async {
    try {
      _keypair = KeyPair.fromSeed(seed);
    } catch (e) {
      throw Exception("Failed to create keyPair from seed. Error: $e");
    }
  }

  Future<void> fromHexSeed(String hexSeed) async {
    try {
      final seed = HEX.decode(hexSeed.replaceAll('0x', ''));
      _keypair = KeyPair.fromSeed(Uint8List.fromList(seed));
    } catch (e) {
      throw Exception("Failed to create keyPair from hex seed. Error: $e");
    }
  }

  Future<Uint8List> sign(String data) async {
    if (_keypair == null) {
      throw Exception("keypair not initialized.");
    }
    try {
      final dataBytes = Uint8List.fromList(utf8.encode(data));
      final signature = _keypair!.sign(dataBytes);
      return signature;
    } catch (e) {
      throw Exception("Failed to sign data. Error: $e");
    }
  }

  Future<bool> verify(Uint8List signature, String data) async {
    if (_keypair == null) {
      throw Exception("keypair not initialized.");
    }
    try {
      final dataBytes = Uint8List.fromList(utf8.encode(data));
      return _keypair!.verify(dataBytes, signature);
    } catch (e) {
      throw Exception("Failed to verify signature. Error: $e");
    }
  }

  Future<KeyPair> keypairFromAddress(String address) async {
    final keyring = Keyring();
    keyring.add(_keypair!);
    final pair = keyring.getByAddress(address);
    return pair;
  }
}
