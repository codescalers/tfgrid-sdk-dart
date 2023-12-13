// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i4;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i5;

import '../../sp_core/crypto/account_id32.dart' as _i3;
import 'vote_weight.dart' as _i2;

class DaoVotes {
  const DaoVotes({
    required this.index,
    required this.threshold,
    required this.ayes,
    required this.nays,
    required this.end,
    required this.vetos,
  });

  factory DaoVotes.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// ProposalIndex
  final int index;

  /// u32
  final int threshold;

  /// Vec<VoteWeight>
  final List<_i2.VoteWeight> ayes;

  /// Vec<VoteWeight>
  final List<_i2.VoteWeight> nays;

  /// BlockNumber
  final int end;

  /// Vec<AccountId>
  final List<_i3.AccountId32> vetos;

  static const $DaoVotesCodec codec = $DaoVotesCodec();

  _i4.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'index': index,
        'threshold': threshold,
        'ayes': ayes.map((value) => value.toJson()).toList(),
        'nays': nays.map((value) => value.toJson()).toList(),
        'end': end,
        'vetos': vetos.map((value) => value.toList()).toList(),
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is DaoVotes &&
          other.index == index &&
          other.threshold == threshold &&
          _i5.listsEqual(
            other.ayes,
            ayes,
          ) &&
          _i5.listsEqual(
            other.nays,
            nays,
          ) &&
          other.end == end &&
          _i5.listsEqual(
            other.vetos,
            vetos,
          );

  @override
  int get hashCode => Object.hash(
        index,
        threshold,
        ayes,
        nays,
        end,
        vetos,
      );
}

class $DaoVotesCodec with _i1.Codec<DaoVotes> {
  const $DaoVotesCodec();

  @override
  void encodeTo(
    DaoVotes obj,
    _i1.Output output,
  ) {
    _i1.U32Codec.codec.encodeTo(
      obj.index,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.threshold,
      output,
    );
    const _i1.SequenceCodec<_i2.VoteWeight>(_i2.VoteWeight.codec).encodeTo(
      obj.ayes,
      output,
    );
    const _i1.SequenceCodec<_i2.VoteWeight>(_i2.VoteWeight.codec).encodeTo(
      obj.nays,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.end,
      output,
    );
    const _i1.SequenceCodec<_i3.AccountId32>(_i3.AccountId32Codec()).encodeTo(
      obj.vetos,
      output,
    );
  }

  @override
  DaoVotes decode(_i1.Input input) {
    return DaoVotes(
      index: _i1.U32Codec.codec.decode(input),
      threshold: _i1.U32Codec.codec.decode(input),
      ayes: const _i1.SequenceCodec<_i2.VoteWeight>(_i2.VoteWeight.codec)
          .decode(input),
      nays: const _i1.SequenceCodec<_i2.VoteWeight>(_i2.VoteWeight.codec)
          .decode(input),
      end: _i1.U32Codec.codec.decode(input),
      vetos: const _i1.SequenceCodec<_i3.AccountId32>(_i3.AccountId32Codec())
          .decode(input),
    );
  }

  @override
  int sizeHint(DaoVotes obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.index);
    size = size + _i1.U32Codec.codec.sizeHint(obj.threshold);
    size = size +
        const _i1.SequenceCodec<_i2.VoteWeight>(_i2.VoteWeight.codec)
            .sizeHint(obj.ayes);
    size = size +
        const _i1.SequenceCodec<_i2.VoteWeight>(_i2.VoteWeight.codec)
            .sizeHint(obj.nays);
    size = size + _i1.U32Codec.codec.sizeHint(obj.end);
    size = size +
        const _i1.SequenceCodec<_i3.AccountId32>(_i3.AccountId32Codec())
            .sizeHint(obj.vetos);
    return size;
  }
}
