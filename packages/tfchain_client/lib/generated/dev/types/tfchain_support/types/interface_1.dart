// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i5;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i6;

import '../../pallet_tfgrid/interface/interface_ip.dart' as _i4;
import '../../pallet_tfgrid/interface/interface_mac.dart' as _i3;
import '../../pallet_tfgrid/interface/interface_name.dart' as _i2;

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
  final _i2.InterfaceName name;

  /// Mac
  final _i3.InterfaceMac mac;

  /// Ips
  final List<_i4.InterfaceIp> ips;

  static const $InterfaceCodec codec = $InterfaceCodec();

  _i5.Uint8List encode() {
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
          _i6.listsEqual(
            other.name,
            name,
          ) &&
          _i6.listsEqual(
            other.mac,
            mac,
          ) &&
          _i6.listsEqual(
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
    const _i1.SequenceCodec<_i4.InterfaceIp>(_i4.InterfaceIpCodec()).encodeTo(
      obj.ips,
      output,
    );
  }

  @override
  Interface decode(_i1.Input input) {
    return Interface(
      name: _i1.U8SequenceCodec.codec.decode(input),
      mac: _i1.U8SequenceCodec.codec.decode(input),
      ips: const _i1.SequenceCodec<_i4.InterfaceIp>(_i4.InterfaceIpCodec())
          .decode(input),
    );
  }

  @override
  int sizeHint(Interface obj) {
    int size = 0;
    size = size + const _i2.InterfaceNameCodec().sizeHint(obj.name);
    size = size + const _i3.InterfaceMacCodec().sizeHint(obj.mac);
    size = size +
        const _i1.SequenceCodec<_i4.InterfaceIp>(_i4.InterfaceIpCodec())
            .sizeHint(obj.ips);
    return size;
  }
}
