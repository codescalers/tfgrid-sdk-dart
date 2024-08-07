// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i6;

import '../../primitive_types/h256.dart' as _i4;
import '../../sp_core/crypto/account_id32.dart' as _i3;
import '../../sp_runtime/dispatch_error.dart' as _i5;

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

  Map<String, Map<String, dynamic>> toJson();
}

class $Event {
  const $Event();

  Voted voted({
    required _i3.AccountId32 account,
    required _i4.H256 proposalHash,
    required bool voted,
    required int yes,
    required int no,
  }) {
    return Voted(
      account: account,
      proposalHash: proposalHash,
      voted: voted,
      yes: yes,
      no: no,
    );
  }

  Proposed proposed({
    required _i3.AccountId32 account,
    required int proposalIndex,
    required _i4.H256 proposalHash,
    required int threshold,
  }) {
    return Proposed(
      account: account,
      proposalIndex: proposalIndex,
      proposalHash: proposalHash,
      threshold: threshold,
    );
  }

  Approved approved({required _i4.H256 proposalHash}) {
    return Approved(proposalHash: proposalHash);
  }

  Disapproved disapproved({required _i4.H256 proposalHash}) {
    return Disapproved(proposalHash: proposalHash);
  }

  Executed executed({
    required _i4.H256 proposalHash,
    required _i1.Result<dynamic, _i5.DispatchError> result,
  }) {
    return Executed(
      proposalHash: proposalHash,
      result: result,
    );
  }

  Closed closed({
    required _i4.H256 proposalHash,
    required int yes,
    required BigInt yesWeight,
    required int no,
    required BigInt noWeight,
  }) {
    return Closed(
      proposalHash: proposalHash,
      yes: yes,
      yesWeight: yesWeight,
      no: no,
      noWeight: noWeight,
    );
  }

  ClosedByCouncil closedByCouncil({
    required _i4.H256 proposalHash,
    required List<_i3.AccountId32> vetos,
  }) {
    return ClosedByCouncil(
      proposalHash: proposalHash,
      vetos: vetos,
    );
  }

  CouncilMemberVeto councilMemberVeto({
    required _i4.H256 proposalHash,
    required _i3.AccountId32 who,
  }) {
    return CouncilMemberVeto(
      proposalHash: proposalHash,
      who: who,
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
        return Voted._decode(input);
      case 1:
        return Proposed._decode(input);
      case 2:
        return Approved._decode(input);
      case 3:
        return Disapproved._decode(input);
      case 4:
        return Executed._decode(input);
      case 5:
        return Closed._decode(input);
      case 6:
        return ClosedByCouncil._decode(input);
      case 7:
        return CouncilMemberVeto._decode(input);
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
      case Voted:
        (value as Voted).encodeTo(output);
        break;
      case Proposed:
        (value as Proposed).encodeTo(output);
        break;
      case Approved:
        (value as Approved).encodeTo(output);
        break;
      case Disapproved:
        (value as Disapproved).encodeTo(output);
        break;
      case Executed:
        (value as Executed).encodeTo(output);
        break;
      case Closed:
        (value as Closed).encodeTo(output);
        break;
      case ClosedByCouncil:
        (value as ClosedByCouncil).encodeTo(output);
        break;
      case CouncilMemberVeto:
        (value as CouncilMemberVeto).encodeTo(output);
        break;
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Event value) {
    switch (value.runtimeType) {
      case Voted:
        return (value as Voted)._sizeHint();
      case Proposed:
        return (value as Proposed)._sizeHint();
      case Approved:
        return (value as Approved)._sizeHint();
      case Disapproved:
        return (value as Disapproved)._sizeHint();
      case Executed:
        return (value as Executed)._sizeHint();
      case Closed:
        return (value as Closed)._sizeHint();
      case ClosedByCouncil:
        return (value as ClosedByCouncil)._sizeHint();
      case CouncilMemberVeto:
        return (value as CouncilMemberVeto)._sizeHint();
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class Voted extends Event {
  const Voted({
    required this.account,
    required this.proposalHash,
    required this.voted,
    required this.yes,
    required this.no,
  });

  factory Voted._decode(_i1.Input input) {
    return Voted(
      account: const _i1.U8ArrayCodec(32).decode(input),
      proposalHash: const _i1.U8ArrayCodec(32).decode(input),
      voted: _i1.BoolCodec.codec.decode(input),
      yes: _i1.U32Codec.codec.decode(input),
      no: _i1.U32Codec.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i3.AccountId32 account;

  /// T::Hash
  final _i4.H256 proposalHash;

  /// bool
  final bool voted;

  /// u32
  final int yes;

  /// u32
  final int no;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'Voted': {
          'account': account.toList(),
          'proposalHash': proposalHash.toList(),
          'voted': voted,
          'yes': yes,
          'no': no,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(account);
    size = size + const _i4.H256Codec().sizeHint(proposalHash);
    size = size + _i1.BoolCodec.codec.sizeHint(voted);
    size = size + _i1.U32Codec.codec.sizeHint(yes);
    size = size + _i1.U32Codec.codec.sizeHint(no);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      account,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      proposalHash,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      voted,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      yes,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      no,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Voted &&
          _i6.listsEqual(
            other.account,
            account,
          ) &&
          _i6.listsEqual(
            other.proposalHash,
            proposalHash,
          ) &&
          other.voted == voted &&
          other.yes == yes &&
          other.no == no;

  @override
  int get hashCode => Object.hash(
        account,
        proposalHash,
        voted,
        yes,
        no,
      );
}

/// A motion (given hash) has been proposed (by given account) with a threshold (given
/// `MemberCount`).
class Proposed extends Event {
  const Proposed({
    required this.account,
    required this.proposalIndex,
    required this.proposalHash,
    required this.threshold,
  });

  factory Proposed._decode(_i1.Input input) {
    return Proposed(
      account: const _i1.U8ArrayCodec(32).decode(input),
      proposalIndex: _i1.U32Codec.codec.decode(input),
      proposalHash: const _i1.U8ArrayCodec(32).decode(input),
      threshold: _i1.U32Codec.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i3.AccountId32 account;

  /// ProposalIndex
  final int proposalIndex;

  /// T::Hash
  final _i4.H256 proposalHash;

  /// u32
  final int threshold;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'Proposed': {
          'account': account.toList(),
          'proposalIndex': proposalIndex,
          'proposalHash': proposalHash.toList(),
          'threshold': threshold,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(account);
    size = size + _i1.U32Codec.codec.sizeHint(proposalIndex);
    size = size + const _i4.H256Codec().sizeHint(proposalHash);
    size = size + _i1.U32Codec.codec.sizeHint(threshold);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      account,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      proposalIndex,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      proposalHash,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      threshold,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Proposed &&
          _i6.listsEqual(
            other.account,
            account,
          ) &&
          other.proposalIndex == proposalIndex &&
          _i6.listsEqual(
            other.proposalHash,
            proposalHash,
          ) &&
          other.threshold == threshold;

  @override
  int get hashCode => Object.hash(
        account,
        proposalIndex,
        proposalHash,
        threshold,
      );
}

/// A motion was approved by the required threshold.
class Approved extends Event {
  const Approved({required this.proposalHash});

  factory Approved._decode(_i1.Input input) {
    return Approved(proposalHash: const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::Hash
  final _i4.H256 proposalHash;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'Approved': {'proposalHash': proposalHash.toList()}
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
      other is Approved &&
          _i6.listsEqual(
            other.proposalHash,
            proposalHash,
          );

  @override
  int get hashCode => proposalHash.hashCode;
}

/// A motion was not approved by the required threshold.
class Disapproved extends Event {
  const Disapproved({required this.proposalHash});

  factory Disapproved._decode(_i1.Input input) {
    return Disapproved(proposalHash: const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::Hash
  final _i4.H256 proposalHash;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'Disapproved': {'proposalHash': proposalHash.toList()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i4.H256Codec().sizeHint(proposalHash);
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
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Disapproved &&
          _i6.listsEqual(
            other.proposalHash,
            proposalHash,
          );

  @override
  int get hashCode => proposalHash.hashCode;
}

/// A motion was executed; result will be `Ok` if it returned without error.
class Executed extends Event {
  const Executed({
    required this.proposalHash,
    required this.result,
  });

  factory Executed._decode(_i1.Input input) {
    return Executed(
      proposalHash: const _i1.U8ArrayCodec(32).decode(input),
      result: const _i1.ResultCodec<dynamic, _i5.DispatchError>(
        _i1.NullCodec.codec,
        _i5.DispatchError.codec,
      ).decode(input),
    );
  }

  /// T::Hash
  final _i4.H256 proposalHash;

  /// DispatchResult
  final _i1.Result<dynamic, _i5.DispatchError> result;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'Executed': {
          'proposalHash': proposalHash.toList(),
          'result': result.toJson(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i4.H256Codec().sizeHint(proposalHash);
    size = size +
        const _i1.ResultCodec<dynamic, _i5.DispatchError>(
          _i1.NullCodec.codec,
          _i5.DispatchError.codec,
        ).sizeHint(result);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      proposalHash,
      output,
    );
    const _i1.ResultCodec<dynamic, _i5.DispatchError>(
      _i1.NullCodec.codec,
      _i5.DispatchError.codec,
    ).encodeTo(
      result,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Executed &&
          _i6.listsEqual(
            other.proposalHash,
            proposalHash,
          ) &&
          other.result == result;

  @override
  int get hashCode => Object.hash(
        proposalHash,
        result,
      );
}

/// A proposal_hash was closed because its threshold was reached or after its duration was up.
class Closed extends Event {
  const Closed({
    required this.proposalHash,
    required this.yes,
    required this.yesWeight,
    required this.no,
    required this.noWeight,
  });

  factory Closed._decode(_i1.Input input) {
    return Closed(
      proposalHash: const _i1.U8ArrayCodec(32).decode(input),
      yes: _i1.U32Codec.codec.decode(input),
      yesWeight: _i1.U64Codec.codec.decode(input),
      no: _i1.U32Codec.codec.decode(input),
      noWeight: _i1.U64Codec.codec.decode(input),
    );
  }

  /// T::Hash
  final _i4.H256 proposalHash;

  /// u32
  final int yes;

  /// u64
  final BigInt yesWeight;

  /// u32
  final int no;

  /// u64
  final BigInt noWeight;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'Closed': {
          'proposalHash': proposalHash.toList(),
          'yes': yes,
          'yesWeight': yesWeight,
          'no': no,
          'noWeight': noWeight,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i4.H256Codec().sizeHint(proposalHash);
    size = size + _i1.U32Codec.codec.sizeHint(yes);
    size = size + _i1.U64Codec.codec.sizeHint(yesWeight);
    size = size + _i1.U32Codec.codec.sizeHint(no);
    size = size + _i1.U64Codec.codec.sizeHint(noWeight);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      5,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      proposalHash,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      yes,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      yesWeight,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      no,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      noWeight,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Closed &&
          _i6.listsEqual(
            other.proposalHash,
            proposalHash,
          ) &&
          other.yes == yes &&
          other.yesWeight == yesWeight &&
          other.no == no &&
          other.noWeight == noWeight;

  @override
  int get hashCode => Object.hash(
        proposalHash,
        yes,
        yesWeight,
        no,
        noWeight,
      );
}

class ClosedByCouncil extends Event {
  const ClosedByCouncil({
    required this.proposalHash,
    required this.vetos,
  });

  factory ClosedByCouncil._decode(_i1.Input input) {
    return ClosedByCouncil(
      proposalHash: const _i1.U8ArrayCodec(32).decode(input),
      vetos: const _i1.SequenceCodec<_i3.AccountId32>(_i3.AccountId32Codec())
          .decode(input),
    );
  }

  /// T::Hash
  final _i4.H256 proposalHash;

  /// Vec<T::AccountId>
  final List<_i3.AccountId32> vetos;

  @override
  Map<String, Map<String, List<dynamic>>> toJson() => {
        'ClosedByCouncil': {
          'proposalHash': proposalHash.toList(),
          'vetos': vetos.map((value) => value.toList()).toList(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i4.H256Codec().sizeHint(proposalHash);
    size = size +
        const _i1.SequenceCodec<_i3.AccountId32>(_i3.AccountId32Codec())
            .sizeHint(vetos);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      6,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      proposalHash,
      output,
    );
    const _i1.SequenceCodec<_i3.AccountId32>(_i3.AccountId32Codec()).encodeTo(
      vetos,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ClosedByCouncil &&
          _i6.listsEqual(
            other.proposalHash,
            proposalHash,
          ) &&
          _i6.listsEqual(
            other.vetos,
            vetos,
          );

  @override
  int get hashCode => Object.hash(
        proposalHash,
        vetos,
      );
}

class CouncilMemberVeto extends Event {
  const CouncilMemberVeto({
    required this.proposalHash,
    required this.who,
  });

  factory CouncilMemberVeto._decode(_i1.Input input) {
    return CouncilMemberVeto(
      proposalHash: const _i1.U8ArrayCodec(32).decode(input),
      who: const _i1.U8ArrayCodec(32).decode(input),
    );
  }

  /// T::Hash
  final _i4.H256 proposalHash;

  /// T::AccountId
  final _i3.AccountId32 who;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'CouncilMemberVeto': {
          'proposalHash': proposalHash.toList(),
          'who': who.toList(),
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i4.H256Codec().sizeHint(proposalHash);
    size = size + const _i3.AccountId32Codec().sizeHint(who);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      7,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      proposalHash,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      who,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is CouncilMemberVeto &&
          _i6.listsEqual(
            other.proposalHash,
            proposalHash,
          ) &&
          _i6.listsEqual(
            other.who,
            who,
          );

  @override
  int get hashCode => Object.hash(
        proposalHash,
        who,
      );
}
