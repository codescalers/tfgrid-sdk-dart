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
      await signer.fromMnemonic(mnemonic);
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
      expect(() async => await signer.fromMnemonic(invalidMnemonic),
          throwsException);
    });

    test('Test sign and verify with wrong signature', () async {
      final mnemonic =
          'picnic flip cigar rival risk scatter slide aware trust garlic solution token';
      await signer.fromMnemonic(mnemonic);

      final data = 'dummyData';
      final signature = await signer.sign(data);

      final modifiedSignature = Uint8List.fromList([...signature, 0x01]);

      final isVerified = await signer.verify(modifiedSignature, data);
      expect(isVerified, isFalse);
    });

    test('Test sign and verify using seed', () async {
      final seed = Uint8List.fromList([
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
      await signer.fromSeed(seed);

      final data = 'dummyData';
      final signature = await signer.sign(data);

      final isVerified = await signer.verify(signature, data);
      expect(isVerified, isTrue);
    });

    test('Test with invalid seed', () async {
      final invalidSeed = Uint8List.fromList([
        108,
        29,
        148,
        202,
      ]);
      expect(() async => await signer.fromSeed(invalidSeed), throwsException);
    });

    test('Test sign and verify with hex seed', () async {
      await signer.fromHexSeed(
          '0x6c1d94caa7bf0a0d7ef0983c1823e9ac6abed57221d57d0922654352d85cb1e4');
      final data = 'dummyData';
      final signature = await signer.sign(data);

      final isVerified = await signer.verify(signature, data);
      expect(isVerified, isTrue);
    });

    test('Test sign with invalid hex seed', () async {
      expect(() async => await signer.fromHexSeed('0x6c1'), throwsException);
    });

    test('Test verify with empty data', () async {
      final mnemonic =
          'picnic flip cigar rival risk scatter slide aware trust garlic solution token';
      await signer.fromMnemonic(mnemonic);

      final data = '';
      final signature = await signer.sign(data);

      final isVerified = await signer.verify(signature, data);
      expect(isVerified, isTrue);
    });

    test('Test verify with different data', () async {
      final mnemonic =
          'picnic flip cigar rival risk scatter slide aware trust garlic solution token';
      await signer.fromMnemonic(mnemonic);

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
      await signer.fromMnemonic(mnemonic);

      final keypair = await KeyPair.fromMnemonic(mnemonic);
      final address = keypair.address;

      final pair = await signer.keypairFromAddress(address);

      expect(pair, isNotNull);
      expect(pair.address, equals(address));
    });
  });
}
