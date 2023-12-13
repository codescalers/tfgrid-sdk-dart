// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:polkadart/polkadart.dart' as _i1;
import 'package:polkadart/scale_codec.dart' as _i3;

import '../types/pallet_burning/pallet/call.dart' as _i6;
import '../types/pallet_burning/types/burn.dart' as _i2;
import '../types/tfchain_runtime/runtime_call.dart' as _i5;

class Queries {
  const Queries(this.__api);

  final _i1.StateApi __api;

  final _i1.StorageValue<List<_i2.Burn>> _burns =
      const _i1.StorageValue<List<_i2.Burn>>(
    prefix: 'BurningModule',
    storage: 'Burns',
    valueCodec: _i3.SequenceCodec<_i2.Burn>(_i2.Burn.codec),
  );

  _i4.Future<List<_i2.Burn>?> burns({_i1.BlockHash? at}) async {
    final hashedKey = _burns.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _burns.decodeValue(bytes);
    }
    return null; /* Nullable */
  }
}

class Txs {
  const Txs();

  _i5.RuntimeCall burnTft({
    required amount,
    required message,
  }) {
    final _call = _i6.Call.values.burnTft(
      amount: amount,
      message: message,
    );
    return _i5.RuntimeCall.values.burningModule(_call);
  }
}
