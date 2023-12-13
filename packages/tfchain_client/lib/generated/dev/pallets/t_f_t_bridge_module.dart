// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:polkadart/polkadart.dart' as _i1;
import 'package:polkadart/scale_codec.dart' as _i3;

import '../types/pallet_tft_bridge/pallet/call.dart' as _i9;
import '../types/pallet_tft_bridge/types/burn_transaction.dart' as _i5;
import '../types/pallet_tft_bridge/types/mint_transaction.dart' as _i4;
import '../types/pallet_tft_bridge/types/refund_transaction.dart' as _i6;
import '../types/sp_core/crypto/account_id32.dart' as _i2;
import '../types/tfchain_runtime/runtime_call.dart' as _i8;

class Queries {
  const Queries(this.__api);

  final _i1.StateApi __api;

  final _i1.StorageValue<List<_i2.AccountId32>> _validators =
      const _i1.StorageValue<List<_i2.AccountId32>>(
    prefix: 'TFTBridgeModule',
    storage: 'Validators',
    valueCodec: _i3.SequenceCodec<_i2.AccountId32>(_i2.AccountId32Codec()),
  );

  final _i1.StorageValue<_i2.AccountId32> _feeAccount =
      const _i1.StorageValue<_i2.AccountId32>(
    prefix: 'TFTBridgeModule',
    storage: 'FeeAccount',
    valueCodec: _i2.AccountId32Codec(),
  );

  final _i1.StorageMap<List<int>, _i4.MintTransaction> _mintTransactions =
      const _i1.StorageMap<List<int>, _i4.MintTransaction>(
    prefix: 'TFTBridgeModule',
    storage: 'MintTransactions',
    valueCodec: _i4.MintTransaction.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U8SequenceCodec.codec),
  );

  final _i1.StorageMap<List<int>, _i4.MintTransaction>
      _executedMintTransactions =
      const _i1.StorageMap<List<int>, _i4.MintTransaction>(
    prefix: 'TFTBridgeModule',
    storage: 'ExecutedMintTransactions',
    valueCodec: _i4.MintTransaction.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U8SequenceCodec.codec),
  );

  final _i1.StorageMap<BigInt, _i5.BurnTransaction> _burnTransactions =
      const _i1.StorageMap<BigInt, _i5.BurnTransaction>(
    prefix: 'TFTBridgeModule',
    storage: 'BurnTransactions',
    valueCodec: _i5.BurnTransaction.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U64Codec.codec),
  );

  final _i1.StorageMap<BigInt, _i5.BurnTransaction> _executedBurnTransactions =
      const _i1.StorageMap<BigInt, _i5.BurnTransaction>(
    prefix: 'TFTBridgeModule',
    storage: 'ExecutedBurnTransactions',
    valueCodec: _i5.BurnTransaction.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U64Codec.codec),
  );

  final _i1.StorageMap<List<int>, _i6.RefundTransaction> _refundTransactions =
      const _i1.StorageMap<List<int>, _i6.RefundTransaction>(
    prefix: 'TFTBridgeModule',
    storage: 'RefundTransactions',
    valueCodec: _i6.RefundTransaction.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U8SequenceCodec.codec),
  );

  final _i1.StorageMap<List<int>, _i6.RefundTransaction>
      _executedRefundTransactions =
      const _i1.StorageMap<List<int>, _i6.RefundTransaction>(
    prefix: 'TFTBridgeModule',
    storage: 'ExecutedRefundTransactions',
    valueCodec: _i6.RefundTransaction.codec,
    hasher: _i1.StorageHasher.blake2b128Concat(_i3.U8SequenceCodec.codec),
  );

  final _i1.StorageValue<BigInt> _burnTransactionID =
      const _i1.StorageValue<BigInt>(
    prefix: 'TFTBridgeModule',
    storage: 'BurnTransactionID',
    valueCodec: _i3.U64Codec.codec,
  );

  final _i1.StorageValue<BigInt> _withdrawFee = const _i1.StorageValue<BigInt>(
    prefix: 'TFTBridgeModule',
    storage: 'WithdrawFee',
    valueCodec: _i3.U64Codec.codec,
  );

  final _i1.StorageValue<BigInt> _depositFee = const _i1.StorageValue<BigInt>(
    prefix: 'TFTBridgeModule',
    storage: 'DepositFee',
    valueCodec: _i3.U64Codec.codec,
  );

  _i7.Future<List<_i2.AccountId32>> validators({_i1.BlockHash? at}) async {
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

  _i7.Future<_i2.AccountId32?> feeAccount({_i1.BlockHash? at}) async {
    final hashedKey = _feeAccount.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _feeAccount.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i7.Future<_i4.MintTransaction?> mintTransactions(
    List<int> key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _mintTransactions.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _mintTransactions.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i7.Future<_i4.MintTransaction?> executedMintTransactions(
    List<int> key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _executedMintTransactions.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _executedMintTransactions.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i7.Future<_i5.BurnTransaction> burnTransactions(
    BigInt key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _burnTransactions.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _burnTransactions.decodeValue(bytes);
    }
    return _i5.BurnTransaction(
      block: 0,
      amount: BigInt.zero,
      target: List<int>.filled(
        0,
        0,
        growable: true,
      ),
      signatures: [],
      sequenceNumber: BigInt.zero,
    ); /* Default */
  }

  _i7.Future<_i5.BurnTransaction> executedBurnTransactions(
    BigInt key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _executedBurnTransactions.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _executedBurnTransactions.decodeValue(bytes);
    }
    return _i5.BurnTransaction(
      block: 0,
      amount: BigInt.zero,
      target: List<int>.filled(
        0,
        0,
        growable: true,
      ),
      signatures: [],
      sequenceNumber: BigInt.zero,
    ); /* Default */
  }

  _i7.Future<_i6.RefundTransaction> refundTransactions(
    List<int> key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _refundTransactions.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _refundTransactions.decodeValue(bytes);
    }
    return _i6.RefundTransaction(
      block: 0,
      amount: BigInt.zero,
      target: List<int>.filled(
        0,
        0,
        growable: true,
      ),
      txHash: List<int>.filled(
        0,
        0,
        growable: true,
      ),
      signatures: [],
      sequenceNumber: BigInt.zero,
    ); /* Default */
  }

  _i7.Future<_i6.RefundTransaction> executedRefundTransactions(
    List<int> key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _executedRefundTransactions.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _executedRefundTransactions.decodeValue(bytes);
    }
    return _i6.RefundTransaction(
      block: 0,
      amount: BigInt.zero,
      target: List<int>.filled(
        0,
        0,
        growable: true,
      ),
      txHash: List<int>.filled(
        0,
        0,
        growable: true,
      ),
      signatures: [],
      sequenceNumber: BigInt.zero,
    ); /* Default */
  }

  _i7.Future<BigInt> burnTransactionID({_i1.BlockHash? at}) async {
    final hashedKey = _burnTransactionID.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _burnTransactionID.decodeValue(bytes);
    }
    return BigInt.zero; /* Default */
  }

  _i7.Future<BigInt> withdrawFee({_i1.BlockHash? at}) async {
    final hashedKey = _withdrawFee.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _withdrawFee.decodeValue(bytes);
    }
    return BigInt.zero; /* Default */
  }

  _i7.Future<BigInt> depositFee({_i1.BlockHash? at}) async {
    final hashedKey = _depositFee.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _depositFee.decodeValue(bytes);
    }
    return BigInt.zero; /* Default */
  }
}

class Txs {
  const Txs();

  _i8.RuntimeCall addBridgeValidator({required target}) {
    final _call = _i9.Call.values.addBridgeValidator(target: target);
    return _i8.RuntimeCall.values.tFTBridgeModule(_call);
  }

  _i8.RuntimeCall removeBridgeValidator({required target}) {
    final _call = _i9.Call.values.removeBridgeValidator(target: target);
    return _i8.RuntimeCall.values.tFTBridgeModule(_call);
  }

  _i8.RuntimeCall setFeeAccount({required target}) {
    final _call = _i9.Call.values.setFeeAccount(target: target);
    return _i8.RuntimeCall.values.tFTBridgeModule(_call);
  }

  _i8.RuntimeCall setWithdrawFee({required amount}) {
    final _call = _i9.Call.values.setWithdrawFee(amount: amount);
    return _i8.RuntimeCall.values.tFTBridgeModule(_call);
  }

  _i8.RuntimeCall setDepositFee({required amount}) {
    final _call = _i9.Call.values.setDepositFee(amount: amount);
    return _i8.RuntimeCall.values.tFTBridgeModule(_call);
  }

  _i8.RuntimeCall swapToStellar({
    required targetStellarAddress,
    required amount,
  }) {
    final _call = _i9.Call.values.swapToStellar(
      targetStellarAddress: targetStellarAddress,
      amount: amount,
    );
    return _i8.RuntimeCall.values.tFTBridgeModule(_call);
  }

  _i8.RuntimeCall proposeOrVoteMintTransaction({
    required transaction,
    required target,
    required amount,
  }) {
    final _call = _i9.Call.values.proposeOrVoteMintTransaction(
      transaction: transaction,
      target: target,
      amount: amount,
    );
    return _i8.RuntimeCall.values.tFTBridgeModule(_call);
  }

  _i8.RuntimeCall proposeBurnTransactionOrAddSig({
    required transactionId,
    required target,
    required amount,
    required signature,
    required stellarPubKey,
    required sequenceNumber,
  }) {
    final _call = _i9.Call.values.proposeBurnTransactionOrAddSig(
      transactionId: transactionId,
      target: target,
      amount: amount,
      signature: signature,
      stellarPubKey: stellarPubKey,
      sequenceNumber: sequenceNumber,
    );
    return _i8.RuntimeCall.values.tFTBridgeModule(_call);
  }

  _i8.RuntimeCall setBurnTransactionExecuted({required transactionId}) {
    final _call = _i9.Call.values
        .setBurnTransactionExecuted(transactionId: transactionId);
    return _i8.RuntimeCall.values.tFTBridgeModule(_call);
  }

  _i8.RuntimeCall createRefundTransactionOrAddSig({
    required txHash,
    required target,
    required amount,
    required signature,
    required stellarPubKey,
    required sequenceNumber,
  }) {
    final _call = _i9.Call.values.createRefundTransactionOrAddSig(
      txHash: txHash,
      target: target,
      amount: amount,
      signature: signature,
      stellarPubKey: stellarPubKey,
      sequenceNumber: sequenceNumber,
    );
    return _i8.RuntimeCall.values.tFTBridgeModule(_call);
  }

  _i8.RuntimeCall setRefundTransactionExecuted({required txHash}) {
    final _call = _i9.Call.values.setRefundTransactionExecuted(txHash: txHash);
    return _i8.RuntimeCall.values.tFTBridgeModule(_call);
  }
}
