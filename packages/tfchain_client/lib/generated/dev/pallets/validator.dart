// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:polkadart/polkadart.dart' as _i1;

import '../types/pallet_validator/pallet/call.dart' as _i6;
import '../types/pallet_validator/types/validator.dart' as _i3;
import '../types/sp_core/crypto/account_id32.dart' as _i2;
import '../types/tfchain_runtime/runtime_call.dart' as _i5;

class Queries {
  const Queries(this.__api);

  final _i1.StateApi __api;

  final _i1.StorageMap<_i2.AccountId32, _i3.Validator> _validator =
      const _i1.StorageMap<_i2.AccountId32, _i3.Validator>(
    prefix: 'Validator',
    storage: 'Validator',
    valueCodec: _i3.Validator.codec,
    hasher: _i1.StorageHasher.twoxx64Concat(_i2.AccountId32Codec()),
  );

  final _i1.StorageMap<_i2.AccountId32, _i2.AccountId32> _bonded =
      const _i1.StorageMap<_i2.AccountId32, _i2.AccountId32>(
    prefix: 'Validator',
    storage: 'Bonded',
    valueCodec: _i2.AccountId32Codec(),
    hasher: _i1.StorageHasher.twoxx64Concat(_i2.AccountId32Codec()),
  );

  _i4.Future<_i3.Validator?> validator(
    _i2.AccountId32 key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _validator.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _validator.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i4.Future<_i2.AccountId32?> bonded(
    _i2.AccountId32 key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _bonded.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _bonded.decodeValue(bytes);
    }
    return null; /* Nullable */
  }
}

class Txs {
  const Txs();

  /// Create a request to become a validator
  /// Validator account (signer): the account of the validator (this account will be added to the council)
  /// Validator node account: the account that will validate on consensus layer
  /// Stash account: the "bank" account of the validator (where rewards should be sent to) the stash should be bonded to a validator
  /// Description: why someone wants to become a validator
  /// Tf Connect ID: the threefold connect ID of the person who wants to become a validator
  /// Info: some public info about the validator (website link, blog link, ..)
  /// A user can only have 1 validator request at a time
  _i5.RuntimeCall createValidatorRequest({
    required validatorNodeAccount,
    required stashAccount,
    required description,
    required tfConnectId,
    required info,
  }) {
    final _call = _i6.Call.values.createValidatorRequest(
      validatorNodeAccount: validatorNodeAccount,
      stashAccount: stashAccount,
      description: description,
      tfConnectId: tfConnectId,
      info: info,
    );
    return _i5.RuntimeCall.values.validator(_call);
  }

  /// Start participating in consensus
  /// Will activate the Validator node account on consensus level
  /// A user can only call this if his request to be a validator is approved by the council
  /// Should be called when his node is synced and ready to start validating
  _i5.RuntimeCall activateValidatorNode() {
    final _call = _i6.Call.values.activateValidatorNode();
    return _i5.RuntimeCall.values.validator(_call);
  }

  /// Change validator node account
  /// In case the Validator wishes to change his validator node account
  /// he can call this method with the new node validator account
  /// this new account will be added as a new consensus validator if he is validating already
  _i5.RuntimeCall changeValidatorNodeAccount(
      {required newNodeValidatorAccount}) {
    final _call = _i6.Call.values.changeValidatorNodeAccount(
        newNodeValidatorAccount: newNodeValidatorAccount);
    return _i5.RuntimeCall.values.validator(_call);
  }

  /// Bond an account to a validator account
  /// Just proves that the stash account is indeed under control of the validator account
  _i5.RuntimeCall bond({required validator}) {
    final _call = _i6.Call.values.bond(validator: validator);
    return _i5.RuntimeCall.values.validator(_call);
  }

  /// Approve validator (council)
  /// Approves a validator to be added as a council member and
  /// to participate in consensus
  _i5.RuntimeCall approveValidator({required validatorAccount}) {
    final _call =
        _i6.Call.values.approveValidator(validatorAccount: validatorAccount);
    return _i5.RuntimeCall.values.validator(_call);
  }

  /// Remove validator
  /// Removes a validator from:
  /// 1. Council
  /// 2. Storage
  /// 3. Consensus
  /// Can only be called by the user or the council
  _i5.RuntimeCall removeValidator({required validatorAccount}) {
    final _call =
        _i6.Call.values.removeValidator(validatorAccount: validatorAccount);
    return _i5.RuntimeCall.values.validator(_call);
  }
}
