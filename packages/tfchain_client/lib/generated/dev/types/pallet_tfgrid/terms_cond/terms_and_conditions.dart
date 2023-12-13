// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i3;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import '../../sp_core/crypto/account_id32.dart' as _i2;

class TermsAndConditions {
  const TermsAndConditions({
    required this.accountId,
    required this.timestamp,
    required this.documentLink,
    required this.documentHash,
  });

  factory TermsAndConditions.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// T::AccountId
  final _i2.AccountId32 accountId;

  /// u64
  final BigInt timestamp;

  /// BoundedVec<u8, ConstU32<MAX_DOCUMENT_LINK_LENGTH>>
  final List<int> documentLink;

  /// BoundedVec<u8, ConstU32<MAX_DOCUMENT_HASH_LENGTH>>
  final List<int> documentHash;

  static const $TermsAndConditionsCodec codec = $TermsAndConditionsCodec();

  _i3.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'accountId': accountId.toList(),
        'timestamp': timestamp,
        'documentLink': documentLink,
        'documentHash': documentHash,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is TermsAndConditions &&
          _i4.listsEqual(
            other.accountId,
            accountId,
          ) &&
          other.timestamp == timestamp &&
          _i4.listsEqual(
            other.documentLink,
            documentLink,
          ) &&
          _i4.listsEqual(
            other.documentHash,
            documentHash,
          );

  @override
  int get hashCode => Object.hash(
        accountId,
        timestamp,
        documentLink,
        documentHash,
      );
}

class $TermsAndConditionsCodec with _i1.Codec<TermsAndConditions> {
  const $TermsAndConditionsCodec();

  @override
  void encodeTo(
    TermsAndConditions obj,
    _i1.Output output,
  ) {
    const _i1.U8ArrayCodec(32).encodeTo(
      obj.accountId,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.timestamp,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.documentLink,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.documentHash,
      output,
    );
  }

  @override
  TermsAndConditions decode(_i1.Input input) {
    return TermsAndConditions(
      accountId: const _i1.U8ArrayCodec(32).decode(input),
      timestamp: _i1.U64Codec.codec.decode(input),
      documentLink: _i1.U8SequenceCodec.codec.decode(input),
      documentHash: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  @override
  int sizeHint(TermsAndConditions obj) {
    int size = 0;
    size = size + const _i2.AccountId32Codec().sizeHint(obj.accountId);
    size = size + _i1.U64Codec.codec.sizeHint(obj.timestamp);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.documentLink);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.documentHash);
    return size;
  }
}
