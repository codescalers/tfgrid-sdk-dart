// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i5;

import '../../primitive_types/h256.dart' as _i4;
import '../../tfchain_runtime/runtime_call.dart' as _i3;

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

  Map<String, Map<String, dynamic>> toJson();
}

class $Call {
  const $Call();

  Propose propose({
    required BigInt threshold,
    required _i3.RuntimeCall action,
    required List<int> description,
    required List<int> link,
    int? duration,
  }) {
    return Propose(
      threshold: threshold,
      action: action,
      description: description,
      link: link,
      duration: duration,
    );
  }

  Vote vote({
    required int farmId,
    required _i4.H256 proposalHash,
    required bool approve,
  }) {
    return Vote(
      farmId: farmId,
      proposalHash: proposalHash,
      approve: approve,
    );
  }

  Veto veto({required _i4.H256 proposalHash}) {
    return Veto(proposalHash: proposalHash);
  }

  Close close({
    required _i4.H256 proposalHash,
    required BigInt proposalIndex,
  }) {
    return Close(
      proposalHash: proposalHash,
      proposalIndex: proposalIndex,
    );
  }
}

class $CallCodec with _i1.Codec<Call> {
  const $CallCodec();

  @override
  Call decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return Propose._decode(input);
      case 1:
        return Vote._decode(input);
      case 2:
        return Veto._decode(input);
      case 3:
        return Close._decode(input);
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
      case Propose:
        (value as Propose).encodeTo(output);
        break;
      case Vote:
        (value as Vote).encodeTo(output);
        break;
      case Veto:
        (value as Veto).encodeTo(output);
        break;
      case Close:
        (value as Close).encodeTo(output);
        break;
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Call value) {
    switch (value.runtimeType) {
      case Propose:
        return (value as Propose)._sizeHint();
      case Vote:
        return (value as Vote)._sizeHint();
      case Veto:
        return (value as Veto)._sizeHint();
      case Close:
        return (value as Close)._sizeHint();
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class Propose extends Call {
  const Propose({
    required this.threshold,
    required this.action,
    required this.description,
    required this.link,
    this.duration,
  });

  factory Propose._decode(_i1.Input input) {
    return Propose(
      threshold: _i1.CompactBigIntCodec.codec.decode(input),
      action: _i3.RuntimeCall.codec.decode(input),
      description: _i1.U8SequenceCodec.codec.decode(input),
      link: _i1.U8SequenceCodec.codec.decode(input),
      duration: const _i1.OptionCodec<int>(_i1.U32Codec.codec).decode(input),
    );
  }

  /// u32
  final BigInt threshold;

  /// Box<<T as Config>::Proposal>
  final _i3.RuntimeCall action;

  /// Vec<u8>
  final List<int> description;

  /// Vec<u8>
  final List<int> link;

  /// Option<T::BlockNumber>
  final int? duration;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'propose': {
          'threshold': threshold,
          'action': action.toJson(),
          'description': description,
          'link': link,
          'duration': duration,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.CompactBigIntCodec.codec.sizeHint(threshold);
    size = size + _i3.RuntimeCall.codec.sizeHint(action);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(description);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(link);
    size = size +
        const _i1.OptionCodec<int>(_i1.U32Codec.codec).sizeHint(duration);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i1.CompactBigIntCodec.codec.encodeTo(
      threshold,
      output,
    );
    _i3.RuntimeCall.codec.encodeTo(
      action,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      description,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      link,
      output,
    );
    const _i1.OptionCodec<int>(_i1.U32Codec.codec).encodeTo(
      duration,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Propose &&
          other.threshold == threshold &&
          other.action == action &&
          _i5.listsEqual(
            other.description,
            description,
          ) &&
          _i5.listsEqual(
            other.link,
            link,
          ) &&
          other.duration == duration;

  @override
  int get hashCode => Object.hash(
        threshold,
        action,
        description,
        link,
        duration,
      );
}

class Vote extends Call {
  const Vote({
    required this.farmId,
    required this.proposalHash,
    required this.approve,
  });

  factory Vote._decode(_i1.Input input) {
    return Vote(
      farmId: _i1.U32Codec.codec.decode(input),
      proposalHash: const _i1.U8ArrayCodec(32).decode(input),
      approve: _i1.BoolCodec.codec.decode(input),
    );
  }

  /// u32
  final int farmId;

  /// T::Hash
  final _i4.H256 proposalHash;

  /// bool
  final bool approve;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'vote': {
          'farmId': farmId,
          'proposalHash': proposalHash.toList(),
          'approve': approve,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U32Codec.codec.sizeHint(farmId);
    size = size + const _i4.H256Codec().sizeHint(proposalHash);
    size = size + _i1.BoolCodec.codec.sizeHint(approve);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      farmId,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      proposalHash,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      approve,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Vote &&
          other.farmId == farmId &&
          _i5.listsEqual(
            other.proposalHash,
            proposalHash,
          ) &&
          other.approve == approve;

  @override
  int get hashCode => Object.hash(
        farmId,
        proposalHash,
        approve,
      );
}

class Veto extends Call {
  const Veto({required this.proposalHash});

  factory Veto._decode(_i1.Input input) {
    return Veto(proposalHash: const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::Hash
  final _i4.H256 proposalHash;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'veto': {'proposalHash': proposalHash.toList()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i4.H256Codec().sizeHint(proposalHash);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      proposalHash,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Veto &&
          _i5.listsEqual(
            other.proposalHash,
            proposalHash,
          );

  @override
  int get hashCode => proposalHash.hashCode;
}

class Close extends Call {
  const Close({
    required this.proposalHash,
    required this.proposalIndex,
  });

  factory Close._decode(_i1.Input input) {
    return Close(
      proposalHash: const _i1.U8ArrayCodec(32).decode(input),
      proposalIndex: _i1.CompactBigIntCodec.codec.decode(input),
    );
  }

  /// T::Hash
  final _i4.H256 proposalHash;

  /// ProposalIndex
  final BigInt proposalIndex;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'close': {
          'proposalHash': proposalHash.toList(),
          'proposalIndex': proposalIndex,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i4.H256Codec().sizeHint(proposalHash);
    size = size + _i1.CompactBigIntCodec.codec.sizeHint(proposalIndex);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      proposalHash,
      output,
    );
    _i1.CompactBigIntCodec.codec.encodeTo(
      proposalIndex,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Close &&
          _i5.listsEqual(
            other.proposalHash,
            proposalHash,
          ) &&
          other.proposalIndex == proposalIndex;

  @override
  int get hashCode => Object.hash(
        proposalHash,
        proposalIndex,
      );
}
