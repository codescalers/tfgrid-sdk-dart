// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i16;

import '../../sp_core/crypto/account_id32.dart' as _i8;
import '../../tfchain_support/types/farm.dart' as _i3;
import '../../tfchain_support/types/farm_certification.dart' as _i13;
import '../../tfchain_support/types/farming_policy_limit.dart' as _i12;
import '../../tfchain_support/types/node.dart' as _i4;
import '../../tfchain_support/types/node_certification.dart' as _i11;
import '../../tfchain_support/types/power.dart' as _i14;
import '../../tfchain_support/types/power_state.dart' as _i15;
import '../../tfchain_support/types/public_config.dart' as _i5;
import '../types/entity.dart' as _i6;
import '../types/farming_policy.dart' as _i10;
import '../types/pricing_policy.dart' as _i9;
import '../types/twin.dart' as _i7;

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

  FarmStored farmStored(_i3.Farm value0) {
    return FarmStored(value0);
  }

  FarmUpdated farmUpdated(_i3.Farm value0) {
    return FarmUpdated(value0);
  }

  FarmDeleted farmDeleted(int value0) {
    return FarmDeleted(value0);
  }

  NodeStored nodeStored(_i4.Node value0) {
    return NodeStored(value0);
  }

  NodeUpdated nodeUpdated(_i4.Node value0) {
    return NodeUpdated(value0);
  }

  NodeDeleted nodeDeleted(int value0) {
    return NodeDeleted(value0);
  }

  NodeUptimeReported nodeUptimeReported(
    int value0,
    BigInt value1,
    BigInt value2,
  ) {
    return NodeUptimeReported(
      value0,
      value1,
      value2,
    );
  }

  NodePublicConfigStored nodePublicConfigStored(
    int value0,
    _i5.PublicConfig? value1,
  ) {
    return NodePublicConfigStored(
      value0,
      value1,
    );
  }

  EntityStored entityStored(_i6.Entity value0) {
    return EntityStored(value0);
  }

  EntityUpdated entityUpdated(_i6.Entity value0) {
    return EntityUpdated(value0);
  }

  EntityDeleted entityDeleted(int value0) {
    return EntityDeleted(value0);
  }

  TwinStored twinStored(_i7.Twin value0) {
    return TwinStored(value0);
  }

  TwinUpdated twinUpdated(_i7.Twin value0) {
    return TwinUpdated(value0);
  }

  TwinEntityStored twinEntityStored(
    int value0,
    int value1,
    List<int> value2,
  ) {
    return TwinEntityStored(
      value0,
      value1,
      value2,
    );
  }

  TwinEntityRemoved twinEntityRemoved(
    int value0,
    int value1,
  ) {
    return TwinEntityRemoved(
      value0,
      value1,
    );
  }

  TwinDeleted twinDeleted(int value0) {
    return TwinDeleted(value0);
  }

  TwinAccountBounded twinAccountBounded(
    int value0,
    _i8.AccountId32 value1,
  ) {
    return TwinAccountBounded(
      value0,
      value1,
    );
  }

  PricingPolicyStored pricingPolicyStored(_i9.PricingPolicy value0) {
    return PricingPolicyStored(value0);
  }

  FarmingPolicyStored farmingPolicyStored(_i10.FarmingPolicy value0) {
    return FarmingPolicyStored(value0);
  }

  FarmPayoutV2AddressRegistered farmPayoutV2AddressRegistered(
    int value0,
    List<int> value1,
  ) {
    return FarmPayoutV2AddressRegistered(
      value0,
      value1,
    );
  }

  FarmMarkedAsDedicated farmMarkedAsDedicated(int value0) {
    return FarmMarkedAsDedicated(value0);
  }

  ConnectionPriceSet connectionPriceSet(int value0) {
    return ConnectionPriceSet(value0);
  }

  NodeCertificationSet nodeCertificationSet(
    int value0,
    _i11.NodeCertification value1,
  ) {
    return NodeCertificationSet(
      value0,
      value1,
    );
  }

  NodeCertifierAdded nodeCertifierAdded(_i8.AccountId32 value0) {
    return NodeCertifierAdded(value0);
  }

  NodeCertifierRemoved nodeCertifierRemoved(_i8.AccountId32 value0) {
    return NodeCertifierRemoved(value0);
  }

  FarmingPolicyUpdated farmingPolicyUpdated(_i10.FarmingPolicy value0) {
    return FarmingPolicyUpdated(value0);
  }

  FarmingPolicySet farmingPolicySet(
    int value0,
    _i12.FarmingPolicyLimit? value1,
  ) {
    return FarmingPolicySet(
      value0,
      value1,
    );
  }

  FarmCertificationSet farmCertificationSet(
    int value0,
    _i13.FarmCertification value1,
  ) {
    return FarmCertificationSet(
      value0,
      value1,
    );
  }

  ZosVersionUpdated zosVersionUpdated(List<int> value0) {
    return ZosVersionUpdated(value0);
  }

  PowerTargetChanged powerTargetChanged({
    required int farmId,
    required int nodeId,
    required _i14.Power powerTarget,
  }) {
    return PowerTargetChanged(
      farmId: farmId,
      nodeId: nodeId,
      powerTarget: powerTarget,
    );
  }

  PowerStateChanged powerStateChanged({
    required int farmId,
    required int nodeId,
    required _i15.PowerState powerState,
  }) {
    return PowerStateChanged(
      farmId: farmId,
      nodeId: nodeId,
      powerState: powerState,
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
        return FarmStored._decode(input);
      case 1:
        return FarmUpdated._decode(input);
      case 2:
        return FarmDeleted._decode(input);
      case 3:
        return NodeStored._decode(input);
      case 4:
        return NodeUpdated._decode(input);
      case 5:
        return NodeDeleted._decode(input);
      case 6:
        return NodeUptimeReported._decode(input);
      case 7:
        return NodePublicConfigStored._decode(input);
      case 8:
        return EntityStored._decode(input);
      case 9:
        return EntityUpdated._decode(input);
      case 10:
        return EntityDeleted._decode(input);
      case 11:
        return TwinStored._decode(input);
      case 12:
        return TwinUpdated._decode(input);
      case 13:
        return TwinEntityStored._decode(input);
      case 14:
        return TwinEntityRemoved._decode(input);
      case 15:
        return TwinDeleted._decode(input);
      case 16:
        return TwinAccountBounded._decode(input);
      case 17:
        return PricingPolicyStored._decode(input);
      case 18:
        return FarmingPolicyStored._decode(input);
      case 19:
        return FarmPayoutV2AddressRegistered._decode(input);
      case 20:
        return FarmMarkedAsDedicated._decode(input);
      case 21:
        return ConnectionPriceSet._decode(input);
      case 22:
        return NodeCertificationSet._decode(input);
      case 23:
        return NodeCertifierAdded._decode(input);
      case 24:
        return NodeCertifierRemoved._decode(input);
      case 25:
        return FarmingPolicyUpdated._decode(input);
      case 26:
        return FarmingPolicySet._decode(input);
      case 27:
        return FarmCertificationSet._decode(input);
      case 28:
        return ZosVersionUpdated._decode(input);
      case 29:
        return PowerTargetChanged._decode(input);
      case 30:
        return PowerStateChanged._decode(input);
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
      case FarmStored:
        (value as FarmStored).encodeTo(output);
        break;
      case FarmUpdated:
        (value as FarmUpdated).encodeTo(output);
        break;
      case FarmDeleted:
        (value as FarmDeleted).encodeTo(output);
        break;
      case NodeStored:
        (value as NodeStored).encodeTo(output);
        break;
      case NodeUpdated:
        (value as NodeUpdated).encodeTo(output);
        break;
      case NodeDeleted:
        (value as NodeDeleted).encodeTo(output);
        break;
      case NodeUptimeReported:
        (value as NodeUptimeReported).encodeTo(output);
        break;
      case NodePublicConfigStored:
        (value as NodePublicConfigStored).encodeTo(output);
        break;
      case EntityStored:
        (value as EntityStored).encodeTo(output);
        break;
      case EntityUpdated:
        (value as EntityUpdated).encodeTo(output);
        break;
      case EntityDeleted:
        (value as EntityDeleted).encodeTo(output);
        break;
      case TwinStored:
        (value as TwinStored).encodeTo(output);
        break;
      case TwinUpdated:
        (value as TwinUpdated).encodeTo(output);
        break;
      case TwinEntityStored:
        (value as TwinEntityStored).encodeTo(output);
        break;
      case TwinEntityRemoved:
        (value as TwinEntityRemoved).encodeTo(output);
        break;
      case TwinDeleted:
        (value as TwinDeleted).encodeTo(output);
        break;
      case TwinAccountBounded:
        (value as TwinAccountBounded).encodeTo(output);
        break;
      case PricingPolicyStored:
        (value as PricingPolicyStored).encodeTo(output);
        break;
      case FarmingPolicyStored:
        (value as FarmingPolicyStored).encodeTo(output);
        break;
      case FarmPayoutV2AddressRegistered:
        (value as FarmPayoutV2AddressRegistered).encodeTo(output);
        break;
      case FarmMarkedAsDedicated:
        (value as FarmMarkedAsDedicated).encodeTo(output);
        break;
      case ConnectionPriceSet:
        (value as ConnectionPriceSet).encodeTo(output);
        break;
      case NodeCertificationSet:
        (value as NodeCertificationSet).encodeTo(output);
        break;
      case NodeCertifierAdded:
        (value as NodeCertifierAdded).encodeTo(output);
        break;
      case NodeCertifierRemoved:
        (value as NodeCertifierRemoved).encodeTo(output);
        break;
      case FarmingPolicyUpdated:
        (value as FarmingPolicyUpdated).encodeTo(output);
        break;
      case FarmingPolicySet:
        (value as FarmingPolicySet).encodeTo(output);
        break;
      case FarmCertificationSet:
        (value as FarmCertificationSet).encodeTo(output);
        break;
      case ZosVersionUpdated:
        (value as ZosVersionUpdated).encodeTo(output);
        break;
      case PowerTargetChanged:
        (value as PowerTargetChanged).encodeTo(output);
        break;
      case PowerStateChanged:
        (value as PowerStateChanged).encodeTo(output);
        break;
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Event value) {
    switch (value.runtimeType) {
      case FarmStored:
        return (value as FarmStored)._sizeHint();
      case FarmUpdated:
        return (value as FarmUpdated)._sizeHint();
      case FarmDeleted:
        return (value as FarmDeleted)._sizeHint();
      case NodeStored:
        return (value as NodeStored)._sizeHint();
      case NodeUpdated:
        return (value as NodeUpdated)._sizeHint();
      case NodeDeleted:
        return (value as NodeDeleted)._sizeHint();
      case NodeUptimeReported:
        return (value as NodeUptimeReported)._sizeHint();
      case NodePublicConfigStored:
        return (value as NodePublicConfigStored)._sizeHint();
      case EntityStored:
        return (value as EntityStored)._sizeHint();
      case EntityUpdated:
        return (value as EntityUpdated)._sizeHint();
      case EntityDeleted:
        return (value as EntityDeleted)._sizeHint();
      case TwinStored:
        return (value as TwinStored)._sizeHint();
      case TwinUpdated:
        return (value as TwinUpdated)._sizeHint();
      case TwinEntityStored:
        return (value as TwinEntityStored)._sizeHint();
      case TwinEntityRemoved:
        return (value as TwinEntityRemoved)._sizeHint();
      case TwinDeleted:
        return (value as TwinDeleted)._sizeHint();
      case TwinAccountBounded:
        return (value as TwinAccountBounded)._sizeHint();
      case PricingPolicyStored:
        return (value as PricingPolicyStored)._sizeHint();
      case FarmingPolicyStored:
        return (value as FarmingPolicyStored)._sizeHint();
      case FarmPayoutV2AddressRegistered:
        return (value as FarmPayoutV2AddressRegistered)._sizeHint();
      case FarmMarkedAsDedicated:
        return (value as FarmMarkedAsDedicated)._sizeHint();
      case ConnectionPriceSet:
        return (value as ConnectionPriceSet)._sizeHint();
      case NodeCertificationSet:
        return (value as NodeCertificationSet)._sizeHint();
      case NodeCertifierAdded:
        return (value as NodeCertifierAdded)._sizeHint();
      case NodeCertifierRemoved:
        return (value as NodeCertifierRemoved)._sizeHint();
      case FarmingPolicyUpdated:
        return (value as FarmingPolicyUpdated)._sizeHint();
      case FarmingPolicySet:
        return (value as FarmingPolicySet)._sizeHint();
      case FarmCertificationSet:
        return (value as FarmCertificationSet)._sizeHint();
      case ZosVersionUpdated:
        return (value as ZosVersionUpdated)._sizeHint();
      case PowerTargetChanged:
        return (value as PowerTargetChanged)._sizeHint();
      case PowerStateChanged:
        return (value as PowerStateChanged)._sizeHint();
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class FarmStored extends Event {
  const FarmStored(this.value0);

  factory FarmStored._decode(_i1.Input input) {
    return FarmStored(_i3.Farm.codec.decode(input));
  }

  /// FarmInfoOf<T>
  final _i3.Farm value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'FarmStored': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i3.Farm.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i3.Farm.codec.encodeTo(
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
      other is FarmStored && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class FarmUpdated extends Event {
  const FarmUpdated(this.value0);

  factory FarmUpdated._decode(_i1.Input input) {
    return FarmUpdated(_i3.Farm.codec.decode(input));
  }

  /// FarmInfoOf<T>
  final _i3.Farm value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'FarmUpdated': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i3.Farm.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    _i3.Farm.codec.encodeTo(
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
      other is FarmUpdated && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class FarmDeleted extends Event {
  const FarmDeleted(this.value0);

  factory FarmDeleted._decode(_i1.Input input) {
    return FarmDeleted(_i1.U32Codec.codec.decode(input));
  }

  /// u32
  final int value0;

  @override
  Map<String, int> toJson() => {'FarmDeleted': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
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
      other is FarmDeleted && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class NodeStored extends Event {
  const NodeStored(this.value0);

  factory NodeStored._decode(_i1.Input input) {
    return NodeStored(_i4.Node.codec.decode(input));
  }

  /// TfgridNode<T>
  final _i4.Node value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'NodeStored': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i4.Node.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    _i4.Node.codec.encodeTo(
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
      other is NodeStored && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class NodeUpdated extends Event {
  const NodeUpdated(this.value0);

  factory NodeUpdated._decode(_i1.Input input) {
    return NodeUpdated(_i4.Node.codec.decode(input));
  }

  /// TfgridNode<T>
  final _i4.Node value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'NodeUpdated': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i4.Node.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    _i4.Node.codec.encodeTo(
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
      other is NodeUpdated && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class NodeDeleted extends Event {
  const NodeDeleted(this.value0);

  factory NodeDeleted._decode(_i1.Input input) {
    return NodeDeleted(_i1.U32Codec.codec.decode(input));
  }

  /// u32
  final int value0;

  @override
  Map<String, int> toJson() => {'NodeDeleted': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      5,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
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
      other is NodeDeleted && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class NodeUptimeReported extends Event {
  const NodeUptimeReported(
    this.value0,
    this.value1,
    this.value2,
  );

  factory NodeUptimeReported._decode(_i1.Input input) {
    return NodeUptimeReported(
      _i1.U32Codec.codec.decode(input),
      _i1.U64Codec.codec.decode(input),
      _i1.U64Codec.codec.decode(input),
    );
  }

  /// u32
  final int value0;

  /// u64
  final BigInt value1;

  /// u64
  final BigInt value2;

  @override
  Map<String, List<dynamic>> toJson() => {
        'NodeUptimeReported': [
          value0,
          value1,
          value2,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    size = size + _i1.U64Codec.codec.sizeHint(value1);
    size = size + _i1.U64Codec.codec.sizeHint(value2);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      6,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value0,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value1,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
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
      other is NodeUptimeReported &&
          other.value0 == value0 &&
          other.value1 == value1 &&
          other.value2 == value2;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
        value2,
      );
}

class NodePublicConfigStored extends Event {
  const NodePublicConfigStored(
    this.value0,
    this.value1,
  );

  factory NodePublicConfigStored._decode(_i1.Input input) {
    return NodePublicConfigStored(
      _i1.U32Codec.codec.decode(input),
      const _i1.OptionCodec<_i5.PublicConfig>(_i5.PublicConfig.codec)
          .decode(input),
    );
  }

  /// u32
  final int value0;

  /// Option<pallet::PublicConfig>
  final _i5.PublicConfig? value1;

  @override
  Map<String, List<dynamic>> toJson() => {
        'NodePublicConfigStored': [
          value0,
          value1?.toJson(),
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    size = size +
        const _i1.OptionCodec<_i5.PublicConfig>(_i5.PublicConfig.codec)
            .sizeHint(value1);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      7,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value0,
      output,
    );
    const _i1.OptionCodec<_i5.PublicConfig>(_i5.PublicConfig.codec).encodeTo(
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
      other is NodePublicConfigStored &&
          other.value0 == value0 &&
          other.value1 == value1;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
      );
}

class EntityStored extends Event {
  const EntityStored(this.value0);

  factory EntityStored._decode(_i1.Input input) {
    return EntityStored(_i6.Entity.codec.decode(input));
  }

  /// TfgridEntity<T>
  final _i6.Entity value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'EntityStored': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i6.Entity.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      8,
      output,
    );
    _i6.Entity.codec.encodeTo(
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
      other is EntityStored && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class EntityUpdated extends Event {
  const EntityUpdated(this.value0);

  factory EntityUpdated._decode(_i1.Input input) {
    return EntityUpdated(_i6.Entity.codec.decode(input));
  }

  /// TfgridEntity<T>
  final _i6.Entity value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'EntityUpdated': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i6.Entity.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      9,
      output,
    );
    _i6.Entity.codec.encodeTo(
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
      other is EntityUpdated && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class EntityDeleted extends Event {
  const EntityDeleted(this.value0);

  factory EntityDeleted._decode(_i1.Input input) {
    return EntityDeleted(_i1.U32Codec.codec.decode(input));
  }

  /// u32
  final int value0;

  @override
  Map<String, int> toJson() => {'EntityDeleted': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      10,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
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
      other is EntityDeleted && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class TwinStored extends Event {
  const TwinStored(this.value0);

  factory TwinStored._decode(_i1.Input input) {
    return TwinStored(_i7.Twin.codec.decode(input));
  }

  /// types::Twin<T::AccountId>
  final _i7.Twin value0;

  @override
  Map<String, Map<String, dynamic>> toJson() => {'TwinStored': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i7.Twin.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      11,
      output,
    );
    _i7.Twin.codec.encodeTo(
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
      other is TwinStored && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class TwinUpdated extends Event {
  const TwinUpdated(this.value0);

  factory TwinUpdated._decode(_i1.Input input) {
    return TwinUpdated(_i7.Twin.codec.decode(input));
  }

  /// types::Twin<T::AccountId>
  final _i7.Twin value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'TwinUpdated': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i7.Twin.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      12,
      output,
    );
    _i7.Twin.codec.encodeTo(
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
      other is TwinUpdated && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class TwinEntityStored extends Event {
  const TwinEntityStored(
    this.value0,
    this.value1,
    this.value2,
  );

  factory TwinEntityStored._decode(_i1.Input input) {
    return TwinEntityStored(
      _i1.U32Codec.codec.decode(input),
      _i1.U32Codec.codec.decode(input),
      _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// u32
  final int value0;

  /// u32
  final int value1;

  /// Vec<u8>
  final List<int> value2;

  @override
  Map<String, List<dynamic>> toJson() => {
        'TwinEntityStored': [
          value0,
          value1,
          value2,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    size = size + _i1.U32Codec.codec.sizeHint(value1);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value2);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      13,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value0,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
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
      other is TwinEntityStored &&
          other.value0 == value0 &&
          other.value1 == value1 &&
          _i16.listsEqual(
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

class TwinEntityRemoved extends Event {
  const TwinEntityRemoved(
    this.value0,
    this.value1,
  );

  factory TwinEntityRemoved._decode(_i1.Input input) {
    return TwinEntityRemoved(
      _i1.U32Codec.codec.decode(input),
      _i1.U32Codec.codec.decode(input),
    );
  }

  /// u32
  final int value0;

  /// u32
  final int value1;

  @override
  Map<String, List<int>> toJson() => {
        'TwinEntityRemoved': [
          value0,
          value1,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    size = size + _i1.U32Codec.codec.sizeHint(value1);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      14,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value0,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
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
      other is TwinEntityRemoved &&
          other.value0 == value0 &&
          other.value1 == value1;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
      );
}

class TwinDeleted extends Event {
  const TwinDeleted(this.value0);

  factory TwinDeleted._decode(_i1.Input input) {
    return TwinDeleted(_i1.U32Codec.codec.decode(input));
  }

  /// u32
  final int value0;

  @override
  Map<String, int> toJson() => {'TwinDeleted': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      15,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
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
      other is TwinDeleted && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class TwinAccountBounded extends Event {
  const TwinAccountBounded(
    this.value0,
    this.value1,
  );

  factory TwinAccountBounded._decode(_i1.Input input) {
    return TwinAccountBounded(
      _i1.U32Codec.codec.decode(input),
      const _i1.U8ArrayCodec(32).decode(input),
    );
  }

  /// u32
  final int value0;

  /// T::AccountId
  final _i8.AccountId32 value1;

  @override
  Map<String, List<dynamic>> toJson() => {
        'TwinAccountBounded': [
          value0,
          value1.toList(),
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    size = size + const _i8.AccountId32Codec().sizeHint(value1);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      16,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value0,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
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
      other is TwinAccountBounded &&
          other.value0 == value0 &&
          _i16.listsEqual(
            other.value1,
            value1,
          );

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
      );
}

class PricingPolicyStored extends Event {
  const PricingPolicyStored(this.value0);

  factory PricingPolicyStored._decode(_i1.Input input) {
    return PricingPolicyStored(_i9.PricingPolicy.codec.decode(input));
  }

  /// types::PricingPolicy<T::AccountId>
  final _i9.PricingPolicy value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'PricingPolicyStored': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i9.PricingPolicy.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      17,
      output,
    );
    _i9.PricingPolicy.codec.encodeTo(
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
      other is PricingPolicyStored && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class FarmingPolicyStored extends Event {
  const FarmingPolicyStored(this.value0);

  factory FarmingPolicyStored._decode(_i1.Input input) {
    return FarmingPolicyStored(_i10.FarmingPolicy.codec.decode(input));
  }

  /// types::FarmingPolicy<T::BlockNumber>
  final _i10.FarmingPolicy value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'FarmingPolicyStored': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i10.FarmingPolicy.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      18,
      output,
    );
    _i10.FarmingPolicy.codec.encodeTo(
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
      other is FarmingPolicyStored && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class FarmPayoutV2AddressRegistered extends Event {
  const FarmPayoutV2AddressRegistered(
    this.value0,
    this.value1,
  );

  factory FarmPayoutV2AddressRegistered._decode(_i1.Input input) {
    return FarmPayoutV2AddressRegistered(
      _i1.U32Codec.codec.decode(input),
      _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  /// u32
  final int value0;

  /// Vec<u8>
  final List<int> value1;

  @override
  Map<String, List<dynamic>> toJson() => {
        'FarmPayoutV2AddressRegistered': [
          value0,
          value1,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value1);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      19,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value0,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
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
      other is FarmPayoutV2AddressRegistered &&
          other.value0 == value0 &&
          _i16.listsEqual(
            other.value1,
            value1,
          );

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
      );
}

class FarmMarkedAsDedicated extends Event {
  const FarmMarkedAsDedicated(this.value0);

  factory FarmMarkedAsDedicated._decode(_i1.Input input) {
    return FarmMarkedAsDedicated(_i1.U32Codec.codec.decode(input));
  }

  /// u32
  final int value0;

  @override
  Map<String, int> toJson() => {'FarmMarkedAsDedicated': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      20,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
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
      other is FarmMarkedAsDedicated && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class ConnectionPriceSet extends Event {
  const ConnectionPriceSet(this.value0);

  factory ConnectionPriceSet._decode(_i1.Input input) {
    return ConnectionPriceSet(_i1.U32Codec.codec.decode(input));
  }

  /// u32
  final int value0;

  @override
  Map<String, int> toJson() => {'ConnectionPriceSet': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      21,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
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
      other is ConnectionPriceSet && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class NodeCertificationSet extends Event {
  const NodeCertificationSet(
    this.value0,
    this.value1,
  );

  factory NodeCertificationSet._decode(_i1.Input input) {
    return NodeCertificationSet(
      _i1.U32Codec.codec.decode(input),
      _i11.NodeCertification.codec.decode(input),
    );
  }

  /// u32
  final int value0;

  /// NodeCertification
  final _i11.NodeCertification value1;

  @override
  Map<String, List<dynamic>> toJson() => {
        'NodeCertificationSet': [
          value0,
          value1.toJson(),
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    size = size + _i11.NodeCertification.codec.sizeHint(value1);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      22,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value0,
      output,
    );
    _i11.NodeCertification.codec.encodeTo(
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
      other is NodeCertificationSet &&
          other.value0 == value0 &&
          other.value1 == value1;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
      );
}

class NodeCertifierAdded extends Event {
  const NodeCertifierAdded(this.value0);

  factory NodeCertifierAdded._decode(_i1.Input input) {
    return NodeCertifierAdded(const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i8.AccountId32 value0;

  @override
  Map<String, List<int>> toJson() => {'NodeCertifierAdded': value0.toList()};

  int _sizeHint() {
    int size = 1;
    size = size + const _i8.AccountId32Codec().sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      23,
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
      other is NodeCertifierAdded &&
          _i16.listsEqual(
            other.value0,
            value0,
          );

  @override
  int get hashCode => value0.hashCode;
}

class NodeCertifierRemoved extends Event {
  const NodeCertifierRemoved(this.value0);

  factory NodeCertifierRemoved._decode(_i1.Input input) {
    return NodeCertifierRemoved(const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i8.AccountId32 value0;

  @override
  Map<String, List<int>> toJson() => {'NodeCertifierRemoved': value0.toList()};

  int _sizeHint() {
    int size = 1;
    size = size + const _i8.AccountId32Codec().sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      24,
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
      other is NodeCertifierRemoved &&
          _i16.listsEqual(
            other.value0,
            value0,
          );

  @override
  int get hashCode => value0.hashCode;
}

class FarmingPolicyUpdated extends Event {
  const FarmingPolicyUpdated(this.value0);

  factory FarmingPolicyUpdated._decode(_i1.Input input) {
    return FarmingPolicyUpdated(_i10.FarmingPolicy.codec.decode(input));
  }

  /// types::FarmingPolicy<T::BlockNumber>
  final _i10.FarmingPolicy value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'FarmingPolicyUpdated': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i10.FarmingPolicy.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      25,
      output,
    );
    _i10.FarmingPolicy.codec.encodeTo(
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
      other is FarmingPolicyUpdated && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class FarmingPolicySet extends Event {
  const FarmingPolicySet(
    this.value0,
    this.value1,
  );

  factory FarmingPolicySet._decode(_i1.Input input) {
    return FarmingPolicySet(
      _i1.U32Codec.codec.decode(input),
      const _i1.OptionCodec<_i12.FarmingPolicyLimit>(
              _i12.FarmingPolicyLimit.codec)
          .decode(input),
    );
  }

  /// u32
  final int value0;

  /// Option<FarmingPolicyLimit>
  final _i12.FarmingPolicyLimit? value1;

  @override
  Map<String, List<dynamic>> toJson() => {
        'FarmingPolicySet': [
          value0,
          value1?.toJson(),
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    size = size +
        const _i1.OptionCodec<_i12.FarmingPolicyLimit>(
                _i12.FarmingPolicyLimit.codec)
            .sizeHint(value1);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      26,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value0,
      output,
    );
    const _i1.OptionCodec<_i12.FarmingPolicyLimit>(
            _i12.FarmingPolicyLimit.codec)
        .encodeTo(
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
      other is FarmingPolicySet &&
          other.value0 == value0 &&
          other.value1 == value1;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
      );
}

class FarmCertificationSet extends Event {
  const FarmCertificationSet(
    this.value0,
    this.value1,
  );

  factory FarmCertificationSet._decode(_i1.Input input) {
    return FarmCertificationSet(
      _i1.U32Codec.codec.decode(input),
      _i13.FarmCertification.codec.decode(input),
    );
  }

  /// u32
  final int value0;

  /// FarmCertification
  final _i13.FarmCertification value1;

  @override
  Map<String, List<dynamic>> toJson() => {
        'FarmCertificationSet': [
          value0,
          value1.toJson(),
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(value0);
    size = size + _i13.FarmCertification.codec.sizeHint(value1);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      27,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      value0,
      output,
    );
    _i13.FarmCertification.codec.encodeTo(
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
      other is FarmCertificationSet &&
          other.value0 == value0 &&
          other.value1 == value1;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
      );
}

class ZosVersionUpdated extends Event {
  const ZosVersionUpdated(this.value0);

  factory ZosVersionUpdated._decode(_i1.Input input) {
    return ZosVersionUpdated(_i1.U8SequenceCodec.codec.decode(input));
  }

  /// Vec<u8>
  final List<int> value0;

  @override
  Map<String, List<int>> toJson() => {'ZosVersionUpdated': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      28,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
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
      other is ZosVersionUpdated &&
          _i16.listsEqual(
            other.value0,
            value0,
          );

  @override
  int get hashCode => value0.hashCode;
}

/// Send an event to zero os to change its state
class PowerTargetChanged extends Event {
  const PowerTargetChanged({
    required this.farmId,
    required this.nodeId,
    required this.powerTarget,
  });

  factory PowerTargetChanged._decode(_i1.Input input) {
    return PowerTargetChanged(
      farmId: _i1.U32Codec.codec.decode(input),
      nodeId: _i1.U32Codec.codec.decode(input),
      powerTarget: _i14.Power.codec.decode(input),
    );
  }

  /// u32
  final int farmId;

  /// u32
  final int nodeId;

  /// Power
  final _i14.Power powerTarget;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'PowerTargetChanged': {
          'farmId': farmId,
          'nodeId': nodeId,
          'powerTarget': powerTarget.toJson(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(farmId);
    size = size + _i1.U32Codec.codec.sizeHint(nodeId);
    size = size + _i14.Power.codec.sizeHint(powerTarget);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      29,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nodeId,
      output,
    );
    _i14.Power.codec.encodeTo(
      powerTarget,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is PowerTargetChanged &&
          other.farmId == farmId &&
          other.nodeId == nodeId &&
          other.powerTarget == powerTarget;

  @override
  int get hashCode => Object.hash(
        farmId,
        nodeId,
        powerTarget,
      );
}

class PowerStateChanged extends Event {
  const PowerStateChanged({
    required this.farmId,
    required this.nodeId,
    required this.powerState,
  });

  factory PowerStateChanged._decode(_i1.Input input) {
    return PowerStateChanged(
      farmId: _i1.U32Codec.codec.decode(input),
      nodeId: _i1.U32Codec.codec.decode(input),
      powerState: _i15.PowerState.codec.decode(input),
    );
  }

  /// u32
  final int farmId;

  /// u32
  final int nodeId;

  /// PowerState<T::BlockNumber>
  final _i15.PowerState powerState;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'PowerStateChanged': {
          'farmId': farmId,
          'nodeId': nodeId,
          'powerState': powerState.toJson(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(farmId);
    size = size + _i1.U32Codec.codec.sizeHint(nodeId);
    size = size + _i15.PowerState.codec.sizeHint(powerState);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      30,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmId,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      nodeId,
      output,
    );
    _i15.PowerState.codec.encodeTo(
      powerState,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is PowerStateChanged &&
          other.farmId == farmId &&
          other.nodeId == nodeId &&
          other.powerState == powerState;

  @override
  int get hashCode => Object.hash(
        farmId,
        nodeId,
        powerState,
      );
}
