// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import '../../sp_core/crypto/account_id32.dart' as _i3;

/// Contains one variant per dispatchable that can be called by an extrinsic.
abstract class Call {
  const Call();

  factory Call.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $CallCodec codec = $CallCodec();

  static const $Call values = $Call();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, Map<String, List<int>>> toJson();
}

class $Call {
  const $Call();

  AddValidator addValidator({required _i3.AccountId32 validatorId}) {
    return AddValidator(validatorId: validatorId);
  }

  RemoveValidator removeValidator({required _i3.AccountId32 validatorId}) {
    return RemoveValidator(validatorId: validatorId);
  }

  AddValidatorAgain addValidatorAgain({required _i3.AccountId32 validatorId}) {
    return AddValidatorAgain(validatorId: validatorId);
  }
}

class $CallCodec with _i1.Codec<Call> {
  const $CallCodec();

  @override
  Call decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return AddValidator._decode(input);
      case 1:
        return RemoveValidator._decode(input);
      case 2:
        return AddValidatorAgain._decode(input);
      default:
        throw Exception('Call: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Call value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case AddValidator:
        (value as AddValidator).encodeTo(output);
        break;
      case RemoveValidator:
        (value as RemoveValidator).encodeTo(output);
        break;
      case AddValidatorAgain:
        (value as AddValidatorAgain).encodeTo(output);
        break;
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Call value) {
    switch (value.runtimeType) {
      case AddValidator:
        return (value as AddValidator)._sizeHint();
      case RemoveValidator:
        return (value as RemoveValidator)._sizeHint();
      case AddValidatorAgain:
        return (value as AddValidatorAgain)._sizeHint();
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

/// Add a new validator.
///
/// New validator's session keys should be set in Session pallet before
/// calling this.
///
/// The origin can be configured using the `AddRemoveOrigin` type in the
/// host runtime. Can also be set to sudo/root.
class AddValidator extends Call {
  const AddValidator({required this.validatorId});

  factory AddValidator._decode(_i1.Input input) {
    return AddValidator(validatorId: const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i3.AccountId32 validatorId;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'add_validator': {'validatorId': validatorId.toList()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(validatorId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      validatorId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is AddValidator &&
          _i4.listsEqual(
            other.validatorId,
            validatorId,
          );

  @override
  int get hashCode => validatorId.hashCode;
}

/// Remove a validator.
///
/// The origin can be configured using the `AddRemoveOrigin` type in the
/// host runtime. Can also be set to sudo/root.
class RemoveValidator extends Call {
  const RemoveValidator({required this.validatorId});

  factory RemoveValidator._decode(_i1.Input input) {
    return RemoveValidator(
        validatorId: const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i3.AccountId32 validatorId;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'remove_validator': {'validatorId': validatorId.toList()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(validatorId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      validatorId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RemoveValidator &&
          _i4.listsEqual(
            other.validatorId,
            validatorId,
          );

  @override
  int get hashCode => validatorId.hashCode;
}

/// Add an approved validator again when it comes back online.
///
/// For this call, the dispatch origin must be the validator itself.
class AddValidatorAgain extends Call {
  const AddValidatorAgain({required this.validatorId});

  factory AddValidatorAgain._decode(_i1.Input input) {
    return AddValidatorAgain(
        validatorId: const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i3.AccountId32 validatorId;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'add_validator_again': {'validatorId': validatorId.toList()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(validatorId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      validatorId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is AddValidatorAgain &&
          _i4.listsEqual(
            other.validatorId,
            validatorId,
          );

  @override
  int get hashCode => validatorId.hashCode;
}
