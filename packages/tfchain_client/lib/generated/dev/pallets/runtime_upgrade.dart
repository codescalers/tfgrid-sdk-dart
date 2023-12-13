// ignore_for_file: no_leading_underscores_for_library_prefixes
import '../types/pallet_runtime_upgrade/pallet/call.dart' as _i2;
import '../types/tfchain_runtime/runtime_call.dart' as _i1;

class Txs {
  const Txs();

  _i1.RuntimeCall setCode({required code}) {
    final _call = _i2.Call.values.setCode(code: code);
    return _i1.RuntimeCall.values.runtimeUpgrade(_call);
  }
}
