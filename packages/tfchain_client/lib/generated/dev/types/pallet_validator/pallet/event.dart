// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i5;

import '../../sp_core/crypto/account_id32.dart' as _i3;
import '../types/validator.dart' as _i4;

///
///			The [event](https://docs.substrate.io/main-docs/build/events-errors/) emitted
///			by this pallet.
///
abstract class Event {
  const Event();

  factory Event.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $EventCodec codec = $EventCodec();

  static const $Event values = $Event();

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

class $Event {
  const $Event();

  Bonded bonded(_i3.AccountId32 value0) {
    return Bonded(value0);
  }

  ValidatorRequestCreated validatorRequestCreated(
    _i3.AccountId32 value0,
    _i4.Validator value1,
  ) {
    return ValidatorRequestCreated(
      value0,
      value1,
    );
  }

  ValidatorRequestApproved validatorRequestApproved(_i4.Validator value0) {
    return ValidatorRequestApproved(value0);
  }

  ValidatorActivated validatorActivated(_i4.Validator value0) {
    return ValidatorActivated(value0);
  }

  ValidatorRemoved validatorRemoved(_i4.Validator value0) {
    return ValidatorRemoved(value0);
  }

  NodeValidatorChanged nodeValidatorChanged(_i3.AccountId32 value0) {
    return NodeValidatorChanged(value0);
  }

  NodeValidatorRemoved nodeValidatorRemoved(_i3.AccountId32 value0) {
    return NodeValidatorRemoved(value0);
  }
}

class $EventCodec with _i1.Codec<Event> {
  const $EventCodec();

  @override
  Event decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return Bonded._decode(input);
      case 1:
        return ValidatorRequestCreated._decode(input);
      case 2:
        return ValidatorRequestApproved._decode(input);
      case 3:
        return ValidatorActivated._decode(input);
      case 4:
        return ValidatorRemoved._decode(input);
      case 5:
        return NodeValidatorChanged._decode(input);
      case 6:
        return NodeValidatorRemoved._decode(input);
      default:
        throw Exception('Event: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Event value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case Bonded:
        (value as Bonded).encodeTo(output);
        break;
      case ValidatorRequestCreated:
        (value as ValidatorRequestCreated).encodeTo(output);
        break;
      case ValidatorRequestApproved:
        (value as ValidatorRequestApproved).encodeTo(output);
        break;
      case ValidatorActivated:
        (value as ValidatorActivated).encodeTo(output);
        break;
      case ValidatorRemoved:
        (value as ValidatorRemoved).encodeTo(output);
        break;
      case NodeValidatorChanged:
        (value as NodeValidatorChanged).encodeTo(output);
        break;
      case NodeValidatorRemoved:
        (value as NodeValidatorRemoved).encodeTo(output);
        break;
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Event value) {
    switch (value.runtimeType) {
      case Bonded:
        return (value as Bonded)._sizeHint();
      case ValidatorRequestCreated:
        return (value as ValidatorRequestCreated)._sizeHint();
      case ValidatorRequestApproved:
        return (value as ValidatorRequestApproved)._sizeHint();
      case ValidatorActivated:
        return (value as ValidatorActivated)._sizeHint();
      case ValidatorRemoved:
        return (value as ValidatorRemoved)._sizeHint();
      case NodeValidatorChanged:
        return (value as NodeValidatorChanged)._sizeHint();
      case NodeValidatorRemoved:
        return (value as NodeValidatorRemoved)._sizeHint();
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class Bonded extends Event {
  const Bonded(this.value0);

  factory Bonded._decode(_i1.Input input) {
    return Bonded(const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i3.AccountId32 value0;

  @override
  Map<String, List<int>> toJson() => {'Bonded': value0.toList()};

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
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
      other is Bonded &&
          _i5.listsEqual(
            other.value0,
            value0,
          );

  @override
  int get hashCode => value0.hashCode;
}

class ValidatorRequestCreated extends Event {
  const ValidatorRequestCreated(
    this.value0,
    this.value1,
  );

  factory ValidatorRequestCreated._decode(_i1.Input input) {
    return ValidatorRequestCreated(
      const _i1.U8ArrayCodec(32).decode(input),
      _i4.Validator.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i3.AccountId32 value0;

  /// types::Validator<T::AccountId>
  final _i4.Validator value1;

  @override
  Map<String, List<dynamic>> toJson() => {
        'ValidatorRequestCreated': [
          value0.toList(),
          value1.toJson(),
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(value0);
    size = size + _i4.Validator.codec.sizeHint(value1);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      value0,
      output,
    );
    _i4.Validator.codec.encodeTo(
      value1,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ValidatorRequestCreated &&
          _i5.listsEqual(
            other.value0,
            value0,
          ) &&
          other.value1 == value1;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
      );
}

class ValidatorRequestApproved extends Event {
  const ValidatorRequestApproved(this.value0);

  factory ValidatorRequestApproved._decode(_i1.Input input) {
    return ValidatorRequestApproved(_i4.Validator.codec.decode(input));
  }

  /// types::Validator<T::AccountId>
  final _i4.Validator value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'ValidatorRequestApproved': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i4.Validator.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    _i4.Validator.codec.encodeTo(
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
      other is ValidatorRequestApproved && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class ValidatorActivated extends Event {
  const ValidatorActivated(this.value0);

  factory ValidatorActivated._decode(_i1.Input input) {
    return ValidatorActivated(_i4.Validator.codec.decode(input));
  }

  /// types::Validator<T::AccountId>
  final _i4.Validator value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'ValidatorActivated': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i4.Validator.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    _i4.Validator.codec.encodeTo(
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
      other is ValidatorActivated && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class ValidatorRemoved extends Event {
  const ValidatorRemoved(this.value0);

  factory ValidatorRemoved._decode(_i1.Input input) {
    return ValidatorRemoved(_i4.Validator.codec.decode(input));
  }

  /// types::Validator<T::AccountId>
  final _i4.Validator value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'ValidatorRemoved': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i4.Validator.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    _i4.Validator.codec.encodeTo(
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
      other is ValidatorRemoved && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class NodeValidatorChanged extends Event {
  const NodeValidatorChanged(this.value0);

  factory NodeValidatorChanged._decode(_i1.Input input) {
    return NodeValidatorChanged(const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i3.AccountId32 value0;

  @override
  Map<String, List<int>> toJson() => {'NodeValidatorChanged': value0.toList()};

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      5,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
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
      other is NodeValidatorChanged &&
          _i5.listsEqual(
            other.value0,
            value0,
          );

  @override
  int get hashCode => value0.hashCode;
}

class NodeValidatorRemoved extends Event {
  const NodeValidatorRemoved(this.value0);

  factory NodeValidatorRemoved._decode(_i1.Input input) {
    return NodeValidatorRemoved(const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i3.AccountId32 value0;

  @override
  Map<String, List<int>> toJson() => {'NodeValidatorRemoved': value0.toList()};

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      6,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
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
      other is NodeValidatorRemoved &&
          _i5.listsEqual(
            other.value0,
            value0,
          );

  @override
  int get hashCode => value0.hashCode;
}
