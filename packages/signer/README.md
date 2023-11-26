# Signer

[![Coverage Status](https://img.shields.io/badge/coverage-86.4%25-brightgreen.svg)](https://your-coverage-report-url)

Signer is a dart client created to sign and verify raw data using mnemonic or seed.

## Requirements

[Dart](https://dart.dev/get-dart) >= 3.2.0

## Examples

This is a simple example to sign and verify data using mnemonic.

```dart
// Add your mnemonic
final mnemonic = 'your-mnemonic';

// Create Instance of signer
final signer = Signer();

// Initialize signer from mnemonic
await signer.fromMnemonic(mnemonic);

// Add your data
final data = "anydata123";

// Sign data with mnemonic
final signatureFromMnemonic = await signer.sign(data);

// Verify signed data with your mnemonic
final res = await signer.verify(signatureFromMnemonic, data);
```

This is a simple example to sign and verify data using hex seed.

```dart
// Create Instance of signer
final signer = Signer();

// Add your hex seed
final seed = '0x.....';

// Initialize signer from your seed
await signer.fromHexSeed(seed);

// Add your data
final data = "anydata123";

// Sign data with your seed
final signatureFromSeed = await signer.sign(data);

// Verify signed data with your mnemonic
final res = await signer.verify(signatureFromSeed, data);
```

## Initialize Workspace
To initialize workspace and get all packages, run the following command.
```bash
dart pub get
```

## Run Tests

To run the tests, run the following command 

```bash
dart test
```

## Generate Coverage

To generate coverage signer package, run the following command

```bash
make coverage
```

Check results from `result.txt` with the following command

```bash
cat coverage/result.txt
```
