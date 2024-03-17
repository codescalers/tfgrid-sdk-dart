part of '../signer.dart';
// TODO: should return keypair or not ?


class Signer {
  KeyPair? keypair;
  KPType? _type;

  Future<KeyPair?> fromMnemonic(String mnemonic, KPType type) async {
    try {
      if (type.value == KPType.sr25519.value) {
        keypair = await KeyPair.sr25519.fromMnemonic(mnemonic);
        _type = KPType.sr25519;
        return keypair;
      } else if (type.value == KPType.ed25519.value) {
        keypair = await KeyPair.ed25519.fromMnemonic(mnemonic);
        _type = KPType.ed25519;
        return keypair;
      } else {
        throw Exception("Wrong KeyPair type !");
      }
    } catch (e) {
      throw Exception("Failed to create keyPair from mnemonic. Error: $e");
    }
  }

  Future<KeyPair?> fromSeed(Uint8List seed, KPType type) async {
    try {
      if (type.value == KPType.sr25519.value) {
        keypair = await KeyPair.sr25519.fromSeed(seed);
        _type = KPType.sr25519;
        return keypair;
      } else if (type.value == KPType.ed25519.value) {
        keypair = await KeyPair.ed25519.fromSeed(seed);
        _type = KPType.ed25519;
        return keypair;
      } else {
        throw Exception("Wrong KeyPair type !");
      }
    } catch (e) {
      throw Exception("Failed to create keyPair from seed. Error: $e");
    }
  }

  void fromHexSeed(String hexSeed, KPType type) {
    try {
      final seed = HEX.decode(hexSeed.replaceAll('0x', ''));
      if (type.value == KPType.sr25519.value) {
        keypair = KeyPair.sr25519.fromSeed(Uint8List.fromList(seed));
        _type = KPType.sr25519;
      } else if (type.value == KPType.ed25519.value) {
        keypair = KeyPair.ed25519.fromSeed(Uint8List.fromList(seed));
        _type = KPType.ed25519;
      } else {
        throw Exception("Wrong KeyPair type !");
      }
    } catch (e) {
      throw Exception("Failed to create keyPair from hex seed. Error: $e");
    }
  }

  Uint8List sign(String data) {
    if (keypair == null) {
      throw Exception("keypair not initialized.");
    }
    try {
      final dataBytes = Uint8List.fromList(utf8.encode(data));
      final signature = keypair!.sign(dataBytes);
      return signature;
    } catch (e) {
      throw Exception("Failed to sign data. Error: $e");
    }
  }

  bool verify(Uint8List signature, String data) {
    if (keypair == null) {
      throw Exception("keypair not initialized.");
    }
    try {
      final dataBytes = Uint8List.fromList(utf8.encode(data));
      return keypair!.verify(dataBytes, signature);
    } catch (e) {
      throw Exception("Failed to verify signature. Error: $e");
    }
  }

  KeyPair keypairFromAddress(String address) {
    final keyring = Keyring();

    keyring.add(keypair!);
    final pair = keyring.getByAddress(address);
    return pair;
  }
}
