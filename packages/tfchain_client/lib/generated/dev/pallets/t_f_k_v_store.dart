// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:polkadart/polkadart.dart' as _i1;
import 'package:polkadart/scale_codec.dart' as _i3;

import '../types/pallet_kvstore/pallet/call.dart' as _i6;
import '../types/sp_core/crypto/account_id32.dart' as _i2;
import '../types/tfchain_runtime/runtime_call.dart' as _i5;

class Queries {
  const Queries(this.__api);

  final _i1.StateApi __api;

  final _i1.StorageDoubleMap<_i2.AccountId32, List<int>, List<int>> _tFKVStore =
      const _i1.StorageDoubleMap<_i2.AccountId32, List<int>, List<int>>(
    prefix: 'TFKVStore',
    storage: 'TFKVStore',
    valueCodec: _i3.U8SequenceCodec.codec,
    hasher1: _i1.StorageHasher.blake2b128Concat(_i2.AccountId32Codec()),
    hasher2: _i1.StorageHasher.blake2b128Concat(_i3.U8SequenceCodec.codec),
  );

  _i4.Future<List<int>> tFKVStore(
    _i2.AccountId32 key1,
    List<int> key2, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _tFKVStore.hashedKeyFor(
      key1,
      key2,
    );
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _tFKVStore.decodeValue(bytes);
    }
    return List<int>.filled(
      0,
      0,
      growable: true,
    ); /* Default */
  }
}

class Txs {
  const Txs();

  /// Set the value stored at a particular key
  _i5.RuntimeCall set({
    required key,
    required value,
  }) {
    final _call = _i6.Call.values.set(
      key: key,
      value: value,
    );
    return _i5.RuntimeCall.values.tFKVStore(_call);
  }

  /// Read the value stored at a particular key, while removing it from the map.
  /// Also emit the read value in an event
  _i5.RuntimeCall delete({required key}) {
    final _call = _i6.Call.values.delete(key: key);
    return _i5.RuntimeCall.values.tFKVStore(_call);
  }
}
