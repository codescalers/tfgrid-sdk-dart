// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i4;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i5;

import '../../sp_core/crypto/account_id32.dart' as _i2;
import 'entity_proof.dart' as _i3;

class Twin {
  const Twin({
    required this.id,
    required this.accountId,
    this.relay,
    required this.entities,
    this.pk,
  });

  factory Twin.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u32
  final int id;

  /// AccountId
  final _i2.AccountId32 accountId;

  /// Option<BoundedVec<u8, ConstU32<MAX_RELAY_LENGTH>>>
  final List<int>? relay;

  /// Vec<EntityProof>
  final List<_i3.EntityProof> entities;

  /// Option<BoundedVec<u8, ConstU32<MAX_PK_LENGTH>>>
  final List<int>? pk;

  static const $TwinCodec codec = $TwinCodec();

  _i4.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId.toList(),
        'relay': relay,
        'entities': entities.map((value) => value.toJson()).toList(),
        'pk': pk,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Twin &&
          other.id == id &&
          _i5.listsEqual(
            other.accountId,
            accountId,
          ) &&
          other.relay == relay &&
          _i5.listsEqual(
            other.entities,
            entities,
          ) &&
          other.pk == pk;

  @override
  int get hashCode => Object.hash(
        id,
        accountId,
        relay,
        entities,
        pk,
      );
}

class $TwinCodec with _i1.Codec<Twin> {
  const $TwinCodec();

  @override
  void encodeTo(
    Twin obj,
    _i1.Output output,
  ) {
    _i1.U32Codec.codec.encodeTo(
      obj.id,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      obj.accountId,
      output,
    );
    const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec).encodeTo(
      obj.relay,
      output,
    );
    const _i1.SequenceCodec<_i3.EntityProof>(_i3.EntityProof.codec).encodeTo(
      obj.entities,
      output,
    );
    const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec).encodeTo(
      obj.pk,
      output,
    );
  }

  @override
  Twin decode(_i1.Input input) {
    return Twin(
      id: _i1.U32Codec.codec.decode(input),
      accountId: const _i1.U8ArrayCodec(32).decode(input),
      relay: const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
          .decode(input),
      entities: const _i1.SequenceCodec<_i3.EntityProof>(_i3.EntityProof.codec)
          .decode(input),
      pk: const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
          .decode(input),
    );
  }

  @override
  int sizeHint(Twin obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.id);
    size = size + const _i2.AccountId32Codec().sizeHint(obj.accountId);
    size = size +
        const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
            .sizeHint(obj.relay);
    size = size +
        const _i1.SequenceCodec<_i3.EntityProof>(_i3.EntityProof.codec)
            .sizeHint(obj.entities);
    size = size +
        const _i1.OptionCodec<List<int>>(_i1.U8SequenceCodec.codec)
            .sizeHint(obj.pk);
    return size;
  }
}
