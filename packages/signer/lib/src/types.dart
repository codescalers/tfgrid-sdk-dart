part of '../signer.dart';

enum KPType {
  sr25519,
  ed25519,
}

extension KPTypeExtension on KPType {
  String get value {
    switch (this) {
      case KPType.sr25519:
        return 'sr25519';
      case KPType.ed25519:
        return 'ed25519';
    }
  }
}
