part of '../stellar_client.dart';

enum NetworkType {
  TestNet,
  PublicNet,
}

extension NetworkTypeExtension on NetworkType {
  String get value {
    switch (this) {
      case NetworkType.TestNet:
        return 'TESTNET';
      case NetworkType.PublicNet:
        return 'PUBLIC';
    }
  }
}
