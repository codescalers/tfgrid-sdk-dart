// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i5;

import '../../sp_core/crypto/account_id32.dart' as _i3;
import '../../sp_runtime/multiaddress/multi_address.dart' as _i4;

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

  Map<String, dynamic> toJson();
}

class $Call {
  const $Call();

  CreateValidatorRequest createValidatorRequest({
    required _i3.AccountId32 validatorNodeAccount,
    required _i3.AccountId32 stashAccount,
    required List<int> description,
    required List<int> tfConnectId,
    required List<int> info,
  }) {
    return CreateValidatorRequest(
      validatorNodeAccount: validatorNodeAccount,
      stashAccount: stashAccount,
      description: description,
      tfConnectId: tfConnectId,
      info: info,
    );
  }

  ActivateValidatorNode activateValidatorNode() {
    return ActivateValidatorNode();
  }

  ChangeValidatorNodeAccount changeValidatorNodeAccount(
      {required _i3.AccountId32 newNodeValidatorAccount}) {
    return ChangeValidatorNodeAccount(
        newNodeValidatorAccount: newNodeValidatorAccount);
  }

  Bond bond({required _i4.MultiAddress validator}) {
    return Bond(validator: validator);
  }

  ApproveValidator approveValidator(
      {required _i4.MultiAddress validatorAccount}) {
    return ApproveValidator(validatorAccount: validatorAccount);
  }

  RemoveValidator removeValidator(
      {required _i4.MultiAddress validatorAccount}) {
    return RemoveValidator(validatorAccount: validatorAccount);
  }
}

class $CallCodec with _i1.Codec<Call> {
  const $CallCodec();

  @override
  Call decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return CreateValidatorRequest._decode(input);
      case 1:
        return const ActivateValidatorNode();
      case 2:
        return ChangeValidatorNodeAccount._decode(input);
      case 3:
        return Bond._decode(input);
      case 4:
        return ApproveValidator._decode(input);
      case 5:
        return RemoveValidator._decode(input);
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
      case CreateValidatorRequest:
        (value as CreateValidatorRequest).encodeTo(output);
        break;
      case ActivateValidatorNode:
        (value as ActivateValidatorNode).encodeTo(output);
        break;
      case ChangeValidatorNodeAccount:
        (value as ChangeValidatorNodeAccount).encodeTo(output);
        break;
      case Bond:
        (value as Bond).encodeTo(output);
        break;
      case ApproveValidator:
        (value as ApproveValidator).encodeTo(output);
        break;
      case RemoveValidator:
        (value as RemoveValidator).encodeTo(output);
        break;
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Call value) {
    switch (value.runtimeType) {
      case CreateValidatorRequest:
        return (value as CreateValidatorRequest)._sizeHint();
      case ActivateValidatorNode:
        return 1;
      case ChangeValidatorNodeAccount:
        return (value as ChangeValidatorNodeAccount)._sizeHint();
      case Bond:
        return (value as Bond)._sizeHint();
      case ApproveValidator:
        return (value as ApproveValidator)._sizeHint();
      case RemoveValidator:
        return (value as RemoveValidator)._sizeHint();
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

/// Create a request to become a validator
/// Validator account (signer): the account of the validator (this account will be added to the council)
/// Validator node account: the account that will validate on consensus layer
/// Stash account: the "bank" account of the validator (where rewards should be sent to) the stash should be bonded to a validator
/// Description: why someone wants to become a validator
/// Tf Connect ID: the threefold connect ID of the person who wants to become a validator
/// Info: some public info about the validator (website link, blog link, ..)
/// A user can only have 1 validator request at a time
class CreateValidatorRequest extends Call {
  const CreateValidatorRequest({
    required this.validatorNodeAccount,
    required this.stashAccount,
    required this.description,
    required this.tfConnectId,
    required this.info,
  });

  factory CreateValidatorRequest._decode(_i1.Input input) {
    return CreateValidatorRequest(
      validatorNodeAccount: const _i1.U8ArrayCodec(32).decode(input),
      stashAccount: const _i1.U8ArrayCodec(32).decode(input),
      description: _i1.U8SequenceCodec.codec.decode(input),
      tfConnectId: _i1.U8SequenceCodec.codec.decode(input),
      info: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i3.AccountId32 validatorNodeAccount;

  /// T::AccountId
  final _i3.AccountId32 stashAccount;

  /// Vec<u8>
  final List<int> description;

  /// Vec<u8>
  final List<int> tfConnectId;

  /// Vec<u8>
  final List<int> info;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'create_validator_request': {
          'validatorNodeAccount': validatorNodeAccount.toList(),
          'stashAccount': stashAccount.toList(),
          'description': description,
          'tfConnectId': tfConnectId,
          'info': info,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(validatorNodeAccount);
    size = size + const _i3.AccountId32Codec().sizeHint(stashAccount);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(description);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(tfConnectId);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(info);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      validatorNodeAccount,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      stashAccount,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      description,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      tfConnectId,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      info,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is CreateValidatorRequest &&
          _i5.listsEqual(
            other.validatorNodeAccount,
            validatorNodeAccount,
          ) &&
          _i5.listsEqual(
            other.stashAccount,
            stashAccount,
          ) &&
          _i5.listsEqual(
            other.description,
            description,
          ) &&
          _i5.listsEqual(
            other.tfConnectId,
            tfConnectId,
          ) &&
          _i5.listsEqual(
            other.info,
            info,
          );

  @override
  int get hashCode => Object.hash(
        validatorNodeAccount,
        stashAccount,
        description,
        tfConnectId,
        info,
      );
}

/// Start participating in consensus
/// Will activate the Validator node account on consensus level
/// A user can only call this if his request to be a validator is approved by the council
/// Should be called when his node is synced and ready to start validating
class ActivateValidatorNode extends Call {
  const ActivateValidatorNode();

  @override
  Map<String, dynamic> toJson() => {'activate_validator_node': null};

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
  }

  @override
  bool operator ==(Object other) => other is ActivateValidatorNode;

  @override
  int get hashCode => runtimeType.hashCode;
}

/// Change validator node account
/// In case the Validator wishes to change his validator node account
/// he can call this method with the new node validator account
/// this new account will be added as a new consensus validator if he is validating already
class ChangeValidatorNodeAccount extends Call {
  const ChangeValidatorNodeAccount({required this.newNodeValidatorAccount});

  factory ChangeValidatorNodeAccount._decode(_i1.Input input) {
    return ChangeValidatorNodeAccount(
        newNodeValidatorAccount: const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i3.AccountId32 newNodeValidatorAccount;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'change_validator_node_account': {
          'newNodeValidatorAccount': newNodeValidatorAccount.toList()
        }
      };

  int _sizeHint() {
    int size = 1;
    size =
        size + const _i3.AccountId32Codec().sizeHint(newNodeValidatorAccount);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      newNodeValidatorAccount,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ChangeValidatorNodeAccount &&
          _i5.listsEqual(
            other.newNodeValidatorAccount,
            newNodeValidatorAccount,
          );

  @override
  int get hashCode => newNodeValidatorAccount.hashCode;
}

/// Bond an account to a validator account
/// Just proves that the stash account is indeed under control of the validator account
class Bond extends Call {
  const Bond({required this.validator});

  factory Bond._decode(_i1.Input input) {
    return Bond(validator: _i4.MultiAddress.codec.decode(input));
  }

  /// <T::Lookup as StaticLookup>::Source
  final _i4.MultiAddress validator;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() => {
        'bond': {'validator': validator.toJson()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i4.MultiAddress.codec.sizeHint(validator);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    _i4.MultiAddress.codec.encodeTo(
      validator,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Bond && other.validator == validator;

  @override
  int get hashCode => validator.hashCode;
}

/// Approve validator (council)
/// Approves a validator to be added as a council member and
/// to participate in consensus
class ApproveValidator extends Call {
  const ApproveValidator({required this.validatorAccount});

  factory ApproveValidator._decode(_i1.Input input) {
    return ApproveValidator(
        validatorAccount: _i4.MultiAddress.codec.decode(input));
  }

  /// <T::Lookup as StaticLookup>::Source
  final _i4.MultiAddress validatorAccount;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() => {
        'approve_validator': {'validatorAccount': validatorAccount.toJson()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i4.MultiAddress.codec.sizeHint(validatorAccount);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    _i4.MultiAddress.codec.encodeTo(
      validatorAccount,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ApproveValidator && other.validatorAccount == validatorAccount;

  @override
  int get hashCode => validatorAccount.hashCode;
}

/// Remove validator
/// Removes a validator from:
/// 1. Council
/// 2. Storage
/// 3. Consensus
/// Can only be called by the user or the council
class RemoveValidator extends Call {
  const RemoveValidator({required this.validatorAccount});

  factory RemoveValidator._decode(_i1.Input input) {
    return RemoveValidator(
        validatorAccount: _i4.MultiAddress.codec.decode(input));
  }

  /// <T::Lookup as StaticLookup>::Source
  final _i4.MultiAddress validatorAccount;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() => {
        'remove_validator': {'validatorAccount': validatorAccount.toJson()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i4.MultiAddress.codec.sizeHint(validatorAccount);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      5,
      output,
    );
    _i4.MultiAddress.codec.encodeTo(
      validatorAccount,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RemoveValidator && other.validatorAccount == validatorAccount;

  @override
  int get hashCode => validatorAccount.hashCode;
}
