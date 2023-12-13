// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import '../../sp_core/crypto/account_id32.dart' as _i3;

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

  Map<String, List<List<int>>> toJson();
}

class $Event {
  const $Event();

  EntrySet entrySet(
    _i3.AccountId32 value0,
    List<int> value1,
    List<int> value2,
  ) {
    return EntrySet(
      value0,
      value1,
      value2,
    );
  }

  EntryGot entryGot(
    _i3.AccountId32 value0,
    List<int> value1,
    List<int> value2,
  ) {
    return EntryGot(
      value0,
      value1,
      value2,
    );
  }

  EntryTaken entryTaken(
    _i3.AccountId32 value0,
    List<int> value1,
    List<int> value2,
  ) {
    return EntryTaken(
      value0,
      value1,
      value2,
    );
  }
}

class $EventCodec with _i1.Codec<Event> {
  const $EventCodec();

  @override
  Event decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return EntrySet._decode(input);
      case 1:
        return EntryGot._decode(input);
      case 2:
        return EntryTaken._decode(input);
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
      case EntrySet:
        (value as EntrySet).encodeTo(output);
        break;
      case EntryGot:
        (value as EntryGot).encodeTo(output);
        break;
      case EntryTaken:
        (value as EntryTaken).encodeTo(output);
        break;
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Event value) {
    switch (value.runtimeType) {
      case EntrySet:
        return (value as EntrySet)._sizeHint();
      case EntryGot:
        return (value as EntryGot)._sizeHint();
      case EntryTaken:
        return (value as EntryTaken)._sizeHint();
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

/// A user has set their entry
class EntrySet extends Event {
  const EntrySet(
    this.value0,
    this.value1,
    this.value2,
  );

  factory EntrySet._decode(_i1.Input input) {
    return EntrySet(
      const _i1.U8ArrayCodec(32).decode(input),
      _i1.U8SequenceCodec.codec.decode(input),
      _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i3.AccountId32 value0;

  /// Vec<u8>
  final List<int> value1;

  /// Vec<u8>
  final List<int> value2;

  @override
  Map<String, List<List<int>>> toJson() => {
        'EntrySet': [
          value0.toList(),
          value1,
          value2,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(value0);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value1);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value2);
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
    _i1.U8SequenceCodec.codec.encodeTo(
      value1,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value2,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is EntrySet &&
          _i4.listsEqual(
            other.value0,
            value0,
          ) &&
          _i4.listsEqual(
            other.value1,
            value1,
          ) &&
          _i4.listsEqual(
            other.value2,
            value2,
          );

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
        value2,
      );
}

/// A user has read their entry, leaving it in storage
class EntryGot extends Event {
  const EntryGot(
    this.value0,
    this.value1,
    this.value2,
  );

  factory EntryGot._decode(_i1.Input input) {
    return EntryGot(
      const _i1.U8ArrayCodec(32).decode(input),
      _i1.U8SequenceCodec.codec.decode(input),
      _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i3.AccountId32 value0;

  /// Vec<u8>
  final List<int> value1;

  /// Vec<u8>
  final List<int> value2;

  @override
  Map<String, List<List<int>>> toJson() => {
        'EntryGot': [
          value0.toList(),
          value1,
          value2,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(value0);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value1);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value2);
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
    _i1.U8SequenceCodec.codec.encodeTo(
      value1,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value2,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is EntryGot &&
          _i4.listsEqual(
            other.value0,
            value0,
          ) &&
          _i4.listsEqual(
            other.value1,
            value1,
          ) &&
          _i4.listsEqual(
            other.value2,
            value2,
          );

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
        value2,
      );
}

/// A user has read their entry, removing it from storage
class EntryTaken extends Event {
  const EntryTaken(
    this.value0,
    this.value1,
    this.value2,
  );

  factory EntryTaken._decode(_i1.Input input) {
    return EntryTaken(
      const _i1.U8ArrayCodec(32).decode(input),
      _i1.U8SequenceCodec.codec.decode(input),
      _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i3.AccountId32 value0;

  /// Vec<u8>
  final List<int> value1;

  /// Vec<u8>
  final List<int> value2;

  @override
  Map<String, List<List<int>>> toJson() => {
        'EntryTaken': [
          value0.toList(),
          value1,
          value2,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(value0);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value1);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value2);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      value0,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value1,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value2,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is EntryTaken &&
          _i4.listsEqual(
            other.value0,
            value0,
          ) &&
          _i4.listsEqual(
            other.value1,
            value1,
          ) &&
          _i4.listsEqual(
            other.value2,
            value2,
          );

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
        value2,
      );
}
