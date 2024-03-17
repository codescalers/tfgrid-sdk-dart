// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i3;

class Interface {
  const Interface({
    required this.name,
    required this.mac,
    required this.ips,
  });

  factory Interface.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// Name
  final List<int> name;

  /// Mac
  final List<int> mac;

  /// Ips
  final List<List<int>> ips;

  static const $InterfaceCodec codec = $InterfaceCodec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, List<dynamic>> toJson() => {
        'name': name,
        'mac': mac,
        'ips': ips.map((value) => value).toList(),
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Interface &&
          _i3.listsEqual(
            other.name,
            name,
          ) &&
          _i3.listsEqual(
            other.mac,
            mac,
          ) &&
          _i3.listsEqual(
            other.ips,
            ips,
          );

  @override
  int get hashCode => Object.hash(
        name,
        mac,
        ips,
      );
}

class $InterfaceCodec with _i1.Codec<Interface> {
  const $InterfaceCodec();

  @override
  void encodeTo(
    Interface obj,
    _i1.Output output,
  ) {
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.name,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.mac,
      output,
    );
    const _i1.SequenceCodec<List<int>>(_i1.U8SequenceCodec.codec).encodeTo(
      obj.ips,
      output,
    );
  }

  @override
  Interface decode(_i1.Input input) {
    return Interface(
      name: _i1.U8SequenceCodec.codec.decode(input),
      mac: _i1.U8SequenceCodec.codec.decode(input),
      ips: const _i1.SequenceCodec<List<int>>(_i1.U8SequenceCodec.codec)
          .decode(input),
    );
  }

  @override
  int sizeHint(Interface obj) {
    int size = 0;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.name);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.mac);
    size = size +
        const _i1.SequenceCodec<List<int>>(_i1.U8SequenceCodec.codec)
            .sizeHint(obj.ips);
    return size;
  }
}
