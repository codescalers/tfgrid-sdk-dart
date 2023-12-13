// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

import '../frame_system/pallet/event.dart' as _i3;
import '../pallet_balances/pallet/event.dart' as _i9;
import '../pallet_burning/pallet/event.dart' as _i15;
import '../pallet_collective/pallet/event.dart' as _i17;
import '../pallet_dao/pallet/event.dart' as _i19;
import '../pallet_grandpa/pallet/event.dart' as _i8;
import '../pallet_kvstore/pallet/event.dart' as _i16;
import '../pallet_membership/pallet/event.dart' as _i18;
import '../pallet_scheduler/pallet/event.dart' as _i5;
import '../pallet_session/pallet/event.dart' as _i7;
import '../pallet_smart_contract/pallet/event.dart' as _i12;
import '../pallet_tfgrid/pallet/event.dart' as _i11;
import '../pallet_tft_bridge/pallet/event.dart' as _i13;
import '../pallet_tft_price/pallet/event.dart' as _i14;
import '../pallet_transaction_payment/pallet/event.dart' as _i10;
import '../pallet_utility/pallet/event.dart' as _i4;
import '../pallet_validator/pallet/event.dart' as _i20;
import '../substrate_validator_set/pallet/event.dart' as _i6;

abstract class RuntimeEvent {
  const RuntimeEvent();

  factory RuntimeEvent.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $RuntimeEventCodec codec = $RuntimeEventCodec();

  static const $RuntimeEvent values = $RuntimeEvent();

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

class $RuntimeEvent {
  const $RuntimeEvent();

  System system(_i3.Event value0) {
    return System(value0);
  }

  Utility utility(_i4.Event value0) {
    return Utility(value0);
  }

  Scheduler scheduler(_i5.Event value0) {
    return Scheduler(value0);
  }

  ValidatorSet validatorSet(_i6.Event value0) {
    return ValidatorSet(value0);
  }

  Session session(_i7.Event value0) {
    return Session(value0);
  }

  Grandpa grandpa(_i8.Event value0) {
    return Grandpa(value0);
  }

  Balances balances(_i9.Event value0) {
    return Balances(value0);
  }

  TransactionPayment transactionPayment(_i10.Event value0) {
    return TransactionPayment(value0);
  }

  TfgridModule tfgridModule(_i11.Event value0) {
    return TfgridModule(value0);
  }

  SmartContractModule smartContractModule(_i12.Event value0) {
    return SmartContractModule(value0);
  }

  TFTBridgeModule tFTBridgeModule(_i13.Event value0) {
    return TFTBridgeModule(value0);
  }

  TFTPriceModule tFTPriceModule(_i14.Event value0) {
    return TFTPriceModule(value0);
  }

  BurningModule burningModule(_i15.Event value0) {
    return BurningModule(value0);
  }

  TFKVStore tFKVStore(_i16.Event value0) {
    return TFKVStore(value0);
  }

  Council council(_i17.Event value0) {
    return Council(value0);
  }

  CouncilMembership councilMembership(_i18.Event value0) {
    return CouncilMembership(value0);
  }

  Dao dao(_i19.Event value0) {
    return Dao(value0);
  }

  Validator validator(_i20.Event value0) {
    return Validator(value0);
  }
}

class $RuntimeEventCodec with _i1.Codec<RuntimeEvent> {
  const $RuntimeEventCodec();

  @override
  RuntimeEvent decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return System._decode(input);
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
      case 21:
        return TransactionPayment._decode(input);
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
      case 40:
        return Council._decode(input);
      case 41:
        return CouncilMembership._decode(input);
      case 43:
        return Dao._decode(input);
      case 50:
        return Validator._decode(input);
      default:
        throw Exception('RuntimeEvent: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    RuntimeEvent value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case System:
        (value as System).encodeTo(output);
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
      case TransactionPayment:
        (value as TransactionPayment).encodeTo(output);
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
            'RuntimeEvent: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(RuntimeEvent value) {
    switch (value.runtimeType) {
      case System:
        return (value as System)._sizeHint();
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
      case TransactionPayment:
        return (value as TransactionPayment)._sizeHint();
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
            'RuntimeEvent: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class System extends RuntimeEvent {
  const System(this.value0);

  factory System._decode(_i1.Input input) {
    return System(_i3.Event.codec.decode(input));
  }

  /// frame_system::Event<Runtime>
  final _i3.Event value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'System': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i3.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i3.Event.codec.encodeTo(
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

class Utility extends RuntimeEvent {
  const Utility(this.value0);

  factory Utility._decode(_i1.Input input) {
    return Utility(_i4.Event.codec.decode(input));
  }

  /// pallet_utility::Event
  final _i4.Event value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'Utility': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i4.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    _i4.Event.codec.encodeTo(
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

class Scheduler extends RuntimeEvent {
  const Scheduler(this.value0);

  factory Scheduler._decode(_i1.Input input) {
    return Scheduler(_i5.Event.codec.decode(input));
  }

  /// pallet_scheduler::Event<Runtime>
  final _i5.Event value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Scheduler': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i5.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    _i5.Event.codec.encodeTo(
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

class ValidatorSet extends RuntimeEvent {
  const ValidatorSet(this.value0);

  factory ValidatorSet._decode(_i1.Input input) {
    return ValidatorSet(_i6.Event.codec.decode(input));
  }

  /// substrate_validator_set::Event<Runtime>
  final _i6.Event value0;

  @override
  Map<String, Map<String, List<int>>> toJson() =>
      {'ValidatorSet': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i6.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      10,
      output,
    );
    _i6.Event.codec.encodeTo(
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

class Session extends RuntimeEvent {
  const Session(this.value0);

  factory Session._decode(_i1.Input input) {
    return Session(_i7.Event.codec.decode(input));
  }

  /// pallet_session::Event
  final _i7.Event value0;

  @override
  Map<String, Map<String, Map<String, int>>> toJson() =>
      {'Session': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i7.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      11,
      output,
    );
    _i7.Event.codec.encodeTo(
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

class Grandpa extends RuntimeEvent {
  const Grandpa(this.value0);

  factory Grandpa._decode(_i1.Input input) {
    return Grandpa(_i8.Event.codec.decode(input));
  }

  /// pallet_grandpa::Event
  final _i8.Event value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'Grandpa': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i8.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      13,
      output,
    );
    _i8.Event.codec.encodeTo(
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

class Balances extends RuntimeEvent {
  const Balances(this.value0);

  factory Balances._decode(_i1.Input input) {
    return Balances(_i9.Event.codec.decode(input));
  }

  /// pallet_balances::Event<Runtime>
  final _i9.Event value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Balances': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i9.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      20,
      output,
    );
    _i9.Event.codec.encodeTo(
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

class TransactionPayment extends RuntimeEvent {
  const TransactionPayment(this.value0);

  factory TransactionPayment._decode(_i1.Input input) {
    return TransactionPayment(_i10.Event.codec.decode(input));
  }

  /// pallet_transaction_payment::Event<Runtime>
  final _i10.Event value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'TransactionPayment': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i10.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      21,
      output,
    );
    _i10.Event.codec.encodeTo(
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
      other is TransactionPayment && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class TfgridModule extends RuntimeEvent {
  const TfgridModule(this.value0);

  factory TfgridModule._decode(_i1.Input input) {
    return TfgridModule(_i11.Event.codec.decode(input));
  }

  /// pallet_tfgrid::Event<Runtime>
  final _i11.Event value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'TfgridModule': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i11.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      25,
      output,
    );
    _i11.Event.codec.encodeTo(
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

class SmartContractModule extends RuntimeEvent {
  const SmartContractModule(this.value0);

  factory SmartContractModule._decode(_i1.Input input) {
    return SmartContractModule(_i12.Event.codec.decode(input));
  }

  /// pallet_smart_contract::Event<Runtime>
  final _i12.Event value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'SmartContractModule': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i12.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      26,
      output,
    );
    _i12.Event.codec.encodeTo(
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

class TFTBridgeModule extends RuntimeEvent {
  const TFTBridgeModule(this.value0);

  factory TFTBridgeModule._decode(_i1.Input input) {
    return TFTBridgeModule(_i13.Event.codec.decode(input));
  }

  /// pallet_tft_bridge::Event<Runtime>
  final _i13.Event value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'TFTBridgeModule': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i13.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      27,
      output,
    );
    _i13.Event.codec.encodeTo(
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

class TFTPriceModule extends RuntimeEvent {
  const TFTPriceModule(this.value0);

  factory TFTPriceModule._decode(_i1.Input input) {
    return TFTPriceModule(_i14.Event.codec.decode(input));
  }

  /// pallet_tft_price::Event<Runtime>
  final _i14.Event value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'TFTPriceModule': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i14.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      28,
      output,
    );
    _i14.Event.codec.encodeTo(
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

class BurningModule extends RuntimeEvent {
  const BurningModule(this.value0);

  factory BurningModule._decode(_i1.Input input) {
    return BurningModule(_i15.Event.codec.decode(input));
  }

  /// pallet_burning::Event<Runtime>
  final _i15.Event value0;

  @override
  Map<String, Map<String, List<dynamic>>> toJson() =>
      {'BurningModule': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i15.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      29,
      output,
    );
    _i15.Event.codec.encodeTo(
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

class TFKVStore extends RuntimeEvent {
  const TFKVStore(this.value0);

  factory TFKVStore._decode(_i1.Input input) {
    return TFKVStore(_i16.Event.codec.decode(input));
  }

  /// pallet_kvstore::Event<Runtime>
  final _i16.Event value0;

  @override
  Map<String, Map<String, List<List<int>>>> toJson() =>
      {'TFKVStore': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i16.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      30,
      output,
    );
    _i16.Event.codec.encodeTo(
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

class Council extends RuntimeEvent {
  const Council(this.value0);

  factory Council._decode(_i1.Input input) {
    return Council(_i17.Event.codec.decode(input));
  }

  /// pallet_collective::Event<Runtime, pallet_collective::Instance1>
  final _i17.Event value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Council': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i17.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      40,
      output,
    );
    _i17.Event.codec.encodeTo(
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

class CouncilMembership extends RuntimeEvent {
  const CouncilMembership(this.value0);

  factory CouncilMembership._decode(_i1.Input input) {
    return CouncilMembership(_i18.Event.codec.decode(input));
  }

  /// pallet_membership::Event<Runtime, pallet_membership::Instance1>
  final _i18.Event value0;

  @override
  Map<String, String> toJson() => {'CouncilMembership': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i18.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      41,
      output,
    );
    _i18.Event.codec.encodeTo(
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

class Dao extends RuntimeEvent {
  const Dao(this.value0);

  factory Dao._decode(_i1.Input input) {
    return Dao(_i19.Event.codec.decode(input));
  }

  /// pallet_dao::Event<Runtime>
  final _i19.Event value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Dao': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i19.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      43,
      output,
    );
    _i19.Event.codec.encodeTo(
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

class Validator extends RuntimeEvent {
  const Validator(this.value0);

  factory Validator._decode(_i1.Input input) {
    return Validator(_i20.Event.codec.decode(input));
  }

  /// pallet_validator::Event<Runtime>
  final _i20.Event value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'Validator': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i20.Event.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      50,
      output,
    );
    _i20.Event.codec.encodeTo(
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
