// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:polkadart/polkadart.dart' as _i1;
import 'package:polkadart/scale_codec.dart' as _i3;

import '../types/sp_core/crypto/account_id32.dart' as _i2;
import '../types/substrate_validator_set/pallet/call.dart' as _i6;
import '../types/tfchain_runtime/runtime_call.dart' as _i5;

class Queries {
  const Queries(this.__api);

  final _i1.StateApi __api;

  final _i1.StorageValue<List<_i2.AccountId32>> _validators =
      const _i1.StorageValue<List<_i2.AccountId32>>(
    prefix: 'ValidatorSet',
    storage: 'Validators',
    valueCodec: _i3.SequenceCodec<_i2.AccountId32>(_i2.AccountId32Codec()),
  );

  final _i1.StorageValue<List<_i2.AccountId32>> _approvedValidators =
      const _i1.StorageValue<List<_i2.AccountId32>>(
    prefix: 'ValidatorSet',
    storage: 'ApprovedValidators',
    valueCodec: _i3.SequenceCodec<_i2.AccountId32>(_i2.AccountId32Codec()),
  );

  final _i1.StorageValue<List<_i2.AccountId32>> _offlineValidators =
      const _i1.StorageValue<List<_i2.AccountId32>>(
    prefix: 'ValidatorSet',
    storage: 'OfflineValidators',
    valueCodec: _i3.SequenceCodec<_i2.AccountId32>(_i2.AccountId32Codec()),
  );

  _i4.Future<List<_i2.AccountId32>> validators({_i1.BlockHash? at}) async {
    final hashedKey = _validators.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _validators.decodeValue(bytes);
    }
    return []; /* Default */
  }

  _i4.Future<List<_i2.AccountId32>> approvedValidators(
      {_i1.BlockHash? at}) async {
    final hashedKey = _approvedValidators.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _approvedValidators.decodeValue(bytes);
    }
    return []; /* Default */
  }

  _i4.Future<List<_i2.AccountId32>> offlineValidators(
      {_i1.BlockHash? at}) async {
    final hashedKey = _offlineValidators.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _offlineValidators.decodeValue(bytes);
    }
    return []; /* Default */
  }
}

class Txs {
  const Txs();

  /// Add a new validator.
  ///
  /// New validator's session keys should be set in Session pallet before
  /// calling this.
  ///
  /// The origin can be configured using the `AddRemoveOrigin` type in the
  /// host runtime. Can also be set to sudo/root.
  _i5.RuntimeCall addValidator({required validatorId}) {
    final _call = _i6.Call.values.addValidator(validatorId: validatorId);
    return _i5.RuntimeCall.values.validatorSet(_call);
  }

  /// Remove a validator.
  ///
  /// The origin can be configured using the `AddRemoveOrigin` type in the
  /// host runtime. Can also be set to sudo/root.
  _i5.RuntimeCall removeValidator({required validatorId}) {
    final _call = _i6.Call.values.removeValidator(validatorId: validatorId);
    return _i5.RuntimeCall.values.validatorSet(_call);
  }

  /// Add an approved validator again when it comes back online.
  ///
  /// For this call, the dispatch origin must be the validator itself.
  _i5.RuntimeCall addValidatorAgain({required validatorId}) {
    final _call = _i6.Call.values.addValidatorAgain(validatorId: validatorId);
    return _i5.RuntimeCall.values.validatorSet(_call);
  }
}
