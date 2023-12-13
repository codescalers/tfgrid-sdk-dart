// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i4;

import 'package:polkadart/scale_codec.dart' as _i1;

import 'power.dart' as _i3;
import 'power_state.dart' as _i2;

class NodePower {
  const NodePower({
    required this.state,
    required this.target,
  });

  factory NodePower.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// PowerState<B>
  final _i2.PowerState state;

  /// Power
  final _i3.Power target;

  static const $NodePowerCodec codec = $NodePowerCodec();

  _i4.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'state': state.toJson(),
        'target': target.toJson(),
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is NodePower && other.state == state && other.target == target;

  @override
  int get hashCode => Object.hash(
        state,
        target,
      );
}

class $NodePowerCodec with _i1.Codec<NodePower> {
  const $NodePowerCodec();

  @override
  void encodeTo(
    NodePower obj,
    _i1.Output output,
  ) {
    _i2.PowerState.codec.encodeTo(
      obj.state,
      output,
    );
    _i3.Power.codec.encodeTo(
      obj.target,
      output,
    );
  }

  @override
  NodePower decode(_i1.Input input) {
    return NodePower(
      state: _i2.PowerState.codec.decode(input),
      target: _i3.Power.codec.decode(input),
    );
  }

  @override
  int sizeHint(NodePower obj) {
    int size = 0;
    size = size + _i2.PowerState.codec.sizeHint(obj.state);
    size = size + _i3.Power.codec.sizeHint(obj.target);
    return size;
  }
}
