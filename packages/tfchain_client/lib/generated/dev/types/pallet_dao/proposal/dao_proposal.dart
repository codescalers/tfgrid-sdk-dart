// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i3;

class DaoProposal {
  const DaoProposal({
    required this.index,
    required this.description,
    required this.link,
  });

  factory DaoProposal.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// ProposalIndex
  final int index;

  /// Vec<u8>
  final List<int> description;

  /// Vec<u8>
  final List<int> link;

  static const $DaoProposalCodec codec = $DaoProposalCodec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'index': index,
        'description': description,
        'link': link,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is DaoProposal &&
          other.index == index &&
          _i3.listsEqual(
            other.description,
            description,
          ) &&
          _i3.listsEqual(
            other.link,
            link,
          );

  @override
  int get hashCode => Object.hash(
        index,
        description,
        link,
      );
}

class $DaoProposalCodec with _i1.Codec<DaoProposal> {
  const $DaoProposalCodec();

  @override
  void encodeTo(
    DaoProposal obj,
    _i1.Output output,
  ) {
    _i1.U32Codec.codec.encodeTo(
      obj.index,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.description,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.link,
      output,
    );
  }

  @override
  DaoProposal decode(_i1.Input input) {
    return DaoProposal(
      index: _i1.U32Codec.codec.decode(input),
      description: _i1.U8SequenceCodec.codec.decode(input),
      link: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  @override
  int sizeHint(DaoProposal obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.index);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.description);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.link);
    return size;
  }
}
