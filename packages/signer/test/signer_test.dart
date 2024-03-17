import 'dart:typed_data';

import 'package:polkadart_keyring/polkadart_keyring.dart';
import 'package:signer/signer.dart';
import 'package:test/test.dart';

void main() {
  group('Signer Tests', () {
    late Signer signer;

    setUp(() {
      signer = Signer();
    });

    test('Test sign and verify using mnemonic', () async {
      final mnemonic =
          'picnic flip cigar rival risk scatter slide aware trust garlic solution token';
      await signer.fromMnemonic(mnemonic, KPType.ed25519);
      final data = 'dummyData';

      final signature = await signer.sign(data);

      final isVerified = await signer.verify(signature, data);
      expect(isVerified, isTrue);
    });

    test('Test not initializing signer', () async {
      final data = 'dummyData';
      try {
        await signer.sign(data);
        fail('Expected an exception when signing with uninitialized signer.');
      } catch (e) {
        expect(e, isA<Exception>());
        expect(e.toString(), contains('keypair not initialized.'));
      }
    });

    test('Test with invalid mnemonic', () async {
      final invalidMnemonic = 'invalid mnemonic phrase';
      expect(
          () async =>
              await signer.fromMnemonic(invalidMnemonic, KPType.ed25519),
          throwsException);
    });

    test('Test sign and verify with wrong signature', () async {
      final mnemonic =
          'picnic flip cigar rival risk scatter slide aware trust garlic solution token';
      await signer.fromMnemonic(mnemonic, KPType.ed25519);

      final data = 'dummyData';
      final signature = await signer.sign(data);

      final modifiedSignature = Uint8List.fromList([...signature, 0x01]);

      final isVerified = await signer.verify(modifiedSignature, data);
      expect(isVerified, isFalse);
    });

    test('Test with invalid seed', () async {
      final invalidSeed = Uint8List.fromList([
        108,
        29,
        148,
        202,
      ]);
      expect(() async => await signer.fromSeed(invalidSeed, KPType.ed25519),
          throwsException);
    });

    test('Test sign with invalid hex seed', () async {
      expect(() async => signer.fromHexSeed('0x6c1', KPType.ed25519),
          throwsException);
    });

    test('Test verify with empty data', () async {
      final mnemonic =
          'picnic flip cigar rival risk scatter slide aware trust garlic solution token';
      await signer.fromMnemonic(mnemonic, KPType.ed25519);

      final data = '';
      final signature = await signer.sign(data);

      final isVerified = await signer.verify(signature, data);
      expect(isVerified, isTrue);
    });

    test('Test verify with different data', () async {
      final mnemonic =
          'picnic flip cigar rival risk scatter slide aware trust garlic solution token';
      await signer.fromMnemonic(mnemonic, KPType.ed25519);

      final originalData = 'originalData';
      final signature = await signer.sign(originalData);

      final differentData = 'differentData';
      final isVerified = await signer.verify(signature, differentData);
      expect(isVerified, isFalse);
    });

    test('Keypair from address', () async {
      final signer = Signer();
      final mnemonic =
          'picnic flip cigar rival risk scatter slide aware trust garlic solution token';
      await signer.fromMnemonic(mnemonic, KPType.ed25519);

      final keypair = await KeyPair.ed25519.fromMnemonic(mnemonic);
      final address = keypair.address;

      final pair = await signer.keypairFromAddress(address);

      expect(pair, isNotNull);
      expect(pair.address, equals(address));
    });
  });
}
