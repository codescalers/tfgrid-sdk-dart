// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i3;

/// Contains one variant per dispatchable that can be called by an extrinsic.
abstract class Call {
  const Call();

  factory Call.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $CallCodec codec = $CallCodec();

  static const $Call values = $Call();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, Map<String, List<int>>> toJson();
}

class $Call {
  const $Call();

  Set set({
    required List<int> key,
    required List<int> value,
  }) {
    return Set(
      key: key,
      value: value,
    );
  }

  Delete delete({required List<int> key}) {
    return Delete(key: key);
  }
}

class $CallCodec with _i1.Codec<Call> {
  const $CallCodec();

  @override
  Call decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return Set._decode(input);
      case 1:
        return Delete._decode(input);
      default:
        throw Exception('Call: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Call value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case Set:
        (value as Set).encodeTo(output);
        break;
      case Delete:
        (value as Delete).encodeTo(output);
        break;
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Call value) {
    switch (value.runtimeType) {
      case Set:
        return (value as Set)._sizeHint();
      case Delete:
        return (value as Delete)._sizeHint();
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

/// Set the value stored at a particular key
class Set extends Call {
  const Set({
    required this.key,
    required this.value,
  });

  factory Set._decode(_i1.Input input) {
    return Set(
      key: _i1.U8SequenceCodec.codec.decode(input),
      value: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// Vec<u8>
  final List<int> key;

  /// Vec<u8>
  final List<int> value;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'set': {
          'key': key,
          'value': value,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(key);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      key,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Set &&
          _i3.listsEqual(
            other.key,
            key,
          ) &&
          _i3.listsEqual(
            other.value,
            value,
          );

  @override
  int get hashCode => Object.hash(
        key,
        value,
      );
}

/// Read the value stored at a particular key, while removing it from the map.
/// Also emit the read value in an event
class Delete extends Call {
  const Delete({required this.key});

  factory Delete._decode(_i1.Input input) {
    return Delete(key: _i1.U8SequenceCodec.codec.decode(input));
  }

  /// Vec<u8>
  final List<int> key;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'delete': {'key': key}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(key);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      key,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Delete &&
          _i3.listsEqual(
            other.key,
            key,
          );

  @override
  int get hashCode => key.hashCode;
}
