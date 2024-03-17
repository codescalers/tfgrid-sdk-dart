// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

import '../frame_system/pallet/call.dart' as _i3;
import '../pallet_balances/pallet/call.dart' as _i10;
import '../pallet_burning/pallet/call.dart' as _i15;
import '../pallet_collective/pallet/call.dart' as _i18;
import '../pallet_dao/pallet/call.dart' as _i20;
import '../pallet_grandpa/pallet/call.dart' as _i9;
import '../pallet_kvstore/pallet/call.dart' as _i16;
import '../pallet_membership/pallet/call.dart' as _i19;
import '../pallet_runtime_upgrade/pallet/call.dart' as _i17;
import '../pallet_scheduler/pallet/call.dart' as _i6;
import '../pallet_session/pallet/call.dart' as _i8;
import '../pallet_smart_contract/pallet/call.dart' as _i12;
import '../pallet_tfgrid/pallet/call.dart' as _i11;
import '../pallet_tft_bridge/pallet/call.dart' as _i13;
import '../pallet_tft_price/pallet/call.dart' as _i14;
import '../pallet_timestamp/pallet/call.dart' as _i4;
import '../pallet_utility/pallet/call.dart' as _i5;
import '../pallet_validator/pallet/call.dart' as _i21;
import '../substrate_validator_set/pallet/call.dart' as _i7;

abstract class RuntimeCall {
  const RuntimeCall();

  factory RuntimeCall.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $RuntimeCallCodec codec = $RuntimeCallCodec();

  static const $RuntimeCall values = $RuntimeCall();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, Map<String, dynamic>> toJson();
}

class $RuntimeCall {
  const $RuntimeCall();

  System system(_i3.Call value0) {
    return System(value0);
  }

  Timestamp timestamp(_i4.Call value0) {
    return Timestamp(value0);
  }

  Utility utility(_i5.Call value0) {
    return Utility(value0);
  }

  Scheduler scheduler(_i6.Call value0) {
    return Scheduler(value0);
  }

  ValidatorSet validatorSet(_i7.Call value0) {
    return ValidatorSet(value0);
  }

  Session session(_i8.Call value0) {
    return Session(value0);
  }

  Grandpa grandpa(_i9.Call value0) {
    return Grandpa(value0);
  }

  Balances balances(_i10.Call value0) {
    return Balances(value0);
  }

  TfgridModule tfgridModule(_i11.Call value0) {
    return TfgridModule(value0);
  }

  SmartContractModule smartContractModule(_i12.Call value0) {
    return SmartContractModule(value0);
  }

  TFTBridgeModule tFTBridgeModule(_i13.Call value0) {
    return TFTBridgeModule(value0);
  }

  TFTPriceModule tFTPriceModule(_i14.Call value0) {
    return TFTPriceModule(value0);
  }

  BurningModule burningModule(_i15.Call value0) {
    return BurningModule(value0);
  }

  TFKVStore tFKVStore(_i16.Call value0) {
    return TFKVStore(value0);
  }

  RuntimeUpgrade runtimeUpgrade(_i17.Call value0) {
    return RuntimeUpgrade(value0);
  }

  Council council(_i18.Call value0) {
    return Council(value0);
  }

  CouncilMembership councilMembership(_i19.Call value0) {
    return CouncilMembership(value0);
  }

  Dao dao(_i20.Call value0) {
    return Dao(value0);
  }

  Validator validator(_i21.Call value0) {
    return Validator(value0);
  }
}

class $RuntimeCallCodec with _i1.Codec<RuntimeCall> {
  const $RuntimeCallCodec();

  @override
  RuntimeCall decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return System._decode(input);
      case 1:
        return Timestamp._decode(input);
      case 3:
        return Utility._decode(input);
      case 4:
        return Scheduler._decode(input);
      case 10:
        return ValidatorSet._decode(input);
      case 11:
        return Session._decode(input);
      case 13:
        return Grandpa._decode(input);
      case 20:
        return Balances._decode(input);
      case 25:
        return TfgridModule._decode(input);
      case 26:
        return SmartContractModule._decode(input);
      case 27:
        return TFTBridgeModule._decode(input);
      case 28:
        return TFTPriceModule._decode(input);
      case 29:
        return BurningModule._decode(input);
      case 30:
        return TFKVStore._decode(input);
      case 31:
        return RuntimeUpgrade._decode(input);
      case 40:
        return Council._decode(input);
      case 41:
        return CouncilMembership._decode(input);
      case 43:
        return Dao._decode(input);
      case 50:
        return Validator._decode(input);
      default:
        throw Exception('RuntimeCall: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    RuntimeCall value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case System:
        (value as System).encodeTo(output);
        break;
      case Timestamp:
        (value as Timestamp).encodeTo(output);
        break;
      case Utility:
        (value as Utility).encodeTo(output);
        break;
      case Scheduler:
        (value as Scheduler).encodeTo(output);
        break;
      case ValidatorSet:
        (value as ValidatorSet).encodeTo(output);
        break;
      case Session:
        (value as Session).encodeTo(output);
        break;
      case Grandpa:
        (value as Grandpa).encodeTo(output);
        break;
      case Balances:
        (value as Balances).encodeTo(output);
        break;
      case TfgridModule:
        (value as TfgridModule).encodeTo(output);
        break;
      case SmartContractModule:
        (value as SmartContractModule).encodeTo(output);
        break;
      case TFTBridgeModule:
        (value as TFTBridgeModule).encodeTo(output);
        break;
      case TFTPriceModule:
        (value as TFTPriceModule).encodeTo(output);
        break;
      case BurningModule:
        (value as BurningModule).encodeTo(output);
        break;
      case TFKVStore:
        (value as TFKVStore).encodeTo(output);
        break;
      case RuntimeUpgrade:
        (value as RuntimeUpgrade).encodeTo(output);
        break;
      case Council:
        (value as Council).encodeTo(output);
        break;
      case CouncilMembership:
        (value as CouncilMembership).encodeTo(output);
        break;
      case Dao:
        (value as Dao).encodeTo(output);
        break;
      case Validator:
        (value as Validator).encodeTo(output);
        break;
      default:
        throw Exception(
            'RuntimeCall: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(RuntimeCall value) {
    switch (value.runtimeType) {
      case System:
        return (value as System)._sizeHint();
      case Timestamp:
        return (value as Timestamp)._sizeHint();
      case Utility:
        return (value as Utility)._sizeHint();
      case Scheduler:
        return (value as Scheduler)._sizeHint();
      case ValidatorSet:
        return (value as ValidatorSet)._sizeHint();
      case Session:
        return (value as Session)._sizeHint();
      case Grandpa:
        return (value as Grandpa)._sizeHint();
      case Balances:
        return (value as Balances)._sizeHint();
      case TfgridModule:
        return (value as TfgridModule)._sizeHint();
      case SmartContractModule:
        return (value as SmartContractModule)._sizeHint();
      case TFTBridgeModule:
        return (value as TFTBridgeModule)._sizeHint();
      case TFTPriceModule:
        return (value as TFTPriceModule)._sizeHint();
      case BurningModule:
        return (value as BurningModule)._sizeHint();
      case TFKVStore:
        return (value as TFKVStore)._sizeHint();
      case RuntimeUpgrade:
        return (value as RuntimeUpgrade)._sizeHint();
      case Council:
        return (value as Council)._sizeHint();
      case CouncilMembership:
        return (value as CouncilMembership)._sizeHint();
      case Dao:
        return (value as Dao)._sizeHint();
      case Validator:
        return (value as Validator)._sizeHint();
      default:
        throw Exception(
            'RuntimeCall: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class System extends RuntimeCall {
  const System(this.value0);

  factory System._decode(_i1.Input input) {
    return System(_i3.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<System, Runtime>
  final _i3.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'System': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i3.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i3.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is System && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Timestamp extends RuntimeCall {
  const Timestamp(this.value0);

  factory Timestamp._decode(_i1.Input input) {
    return Timestamp(_i4.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Timestamp, Runtime>
  final _i4.Call value0;

  @override
  Map<String, Map<String, Map<String, BigInt>>> toJson() =>
      {'Timestamp': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i4.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    _i4.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Timestamp && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Utility extends RuntimeCall {
  const Utility(this.value0);

  factory Utility._decode(_i1.Input input) {
    return Utility(_i5.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Utility, Runtime>
  final _i5.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Utility': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i5.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    _i5.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Utility && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Scheduler extends RuntimeCall {
  const Scheduler(this.value0);

  factory Scheduler._decode(_i1.Input input) {
    return Scheduler(_i6.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Scheduler, Runtime>
  final _i6.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Scheduler': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i6.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    _i6.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Scheduler && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class ValidatorSet extends RuntimeCall {
  const ValidatorSet(this.value0);

  factory ValidatorSet._decode(_i1.Input input) {
    return ValidatorSet(_i7.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<ValidatorSet, Runtime>
  final _i7.Call value0;

  @override
  Map<String, Map<String, Map<String, List<int>>>> toJson() =>
      {'ValidatorSet': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i7.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      10,
      output,
    );
    _i7.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ValidatorSet && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Session extends RuntimeCall {
  const Session(this.value0);

  factory Session._decode(_i1.Input input) {
    return Session(_i8.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Session, Runtime>
  final _i8.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'Session': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i8.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      11,
      output,
    );
    _i8.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Session && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Grandpa extends RuntimeCall {
  const Grandpa(this.value0);

  factory Grandpa._decode(_i1.Input input) {
    return Grandpa(_i9.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Grandpa, Runtime>
  final _i9.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Grandpa': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i9.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      13,
      output,
    );
    _i9.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Grandpa && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Balances extends RuntimeCall {
  const Balances(this.value0);

  factory Balances._decode(_i1.Input input) {
    return Balances(_i10.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Balances, Runtime>
  final _i10.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Balances': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i10.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      20,
      output,
    );
    _i10.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Balances && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class TfgridModule extends RuntimeCall {
  const TfgridModule(this.value0);

  factory TfgridModule._decode(_i1.Input input) {
    return TfgridModule(_i11.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<TfgridModule, Runtime>
  final _i11.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'TfgridModule': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i11.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      25,
      output,
    );
    _i11.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is TfgridModule && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class SmartContractModule extends RuntimeCall {
  const SmartContractModule(this.value0);

  factory SmartContractModule._decode(_i1.Input input) {
    return SmartContractModule(_i12.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<SmartContractModule, Runtime>
  final _i12.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'SmartContractModule': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i12.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      26,
      output,
    );
    _i12.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SmartContractModule && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class TFTBridgeModule extends RuntimeCall {
  const TFTBridgeModule(this.value0);

  factory TFTBridgeModule._decode(_i1.Input input) {
    return TFTBridgeModule(_i13.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<TFTBridgeModule, Runtime>
  final _i13.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'TFTBridgeModule': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i13.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      27,
      output,
    );
    _i13.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is TFTBridgeModule && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class TFTPriceModule extends RuntimeCall {
  const TFTPriceModule(this.value0);

  factory TFTPriceModule._decode(_i1.Input input) {
    return TFTPriceModule(_i14.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<TFTPriceModule, Runtime>
  final _i14.Call value0;

  @override
  Map<String, Map<String, Map<String, int>>> toJson() =>
      {'TFTPriceModule': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i14.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      28,
      output,
    );
    _i14.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is TFTPriceModule && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class BurningModule extends RuntimeCall {
  const BurningModule(this.value0);

  factory BurningModule._decode(_i1.Input input) {
    return BurningModule(_i15.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<BurningModule, Runtime>
  final _i15.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'BurningModule': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i15.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      29,
      output,
    );
    _i15.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is BurningModule && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class TFKVStore extends RuntimeCall {
  const TFKVStore(this.value0);

  factory TFKVStore._decode(_i1.Input input) {
    return TFKVStore(_i16.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<TFKVStore, Runtime>
  final _i16.Call value0;

  @override
  Map<String, Map<String, Map<String, List<int>>>> toJson() =>
      {'TFKVStore': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i16.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      30,
      output,
    );
    _i16.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is TFKVStore && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class RuntimeUpgrade extends RuntimeCall {
  const RuntimeUpgrade(this.value0);

  factory RuntimeUpgrade._decode(_i1.Input input) {
    return RuntimeUpgrade(_i17.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<RuntimeUpgrade, Runtime>
  final _i17.Call value0;

  @override
  Map<String, Map<String, Map<String, List<int>>>> toJson() =>
      {'RuntimeUpgrade': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i17.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      31,
      output,
    );
    _i17.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RuntimeUpgrade && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Council extends RuntimeCall {
  const Council(this.value0);

  factory Council._decode(_i1.Input input) {
    return Council(_i18.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Council, Runtime>
  final _i18.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Council': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i18.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      40,
      output,
    );
    _i18.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Council && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class CouncilMembership extends RuntimeCall {
  const CouncilMembership(this.value0);

  factory CouncilMembership._decode(_i1.Input input) {
    return CouncilMembership(_i19.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<CouncilMembership, Runtime>
  final _i19.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'CouncilMembership': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i19.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      41,
      output,
    );
    _i19.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is CouncilMembership && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Dao extends RuntimeCall {
  const Dao(this.value0);

  factory Dao._decode(_i1.Input input) {
    return Dao(_i20.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Dao, Runtime>
  final _i20.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Dao': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i20.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      43,
      output,
    );
    _i20.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Dao && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Validator extends RuntimeCall {
  const Validator(this.value0);

  factory Validator._decode(_i1.Input input) {
    return Validator(_i21.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Validator, Runtime>
  final _i21.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'Validator': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i21.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      50,
      output,
    );
    _i21.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Validator && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}
