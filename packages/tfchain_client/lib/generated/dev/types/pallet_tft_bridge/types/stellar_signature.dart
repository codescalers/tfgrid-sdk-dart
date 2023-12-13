// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i3;

class StellarSignature {
  const StellarSignature({
    required this.signature,
    required this.stellarPubKey,
  });

  factory StellarSignature.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// Vec<u8>
  final List<int> signature;

  /// Vec<u8>
  final List<int> stellarPubKey;

  static const $StellarSignatureCodec codec = $StellarSignatureCodec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, List<int>> toJson() => {
        'signature': signature,
        'stellarPubKey': stellarPubKey,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is StellarSignature &&
          _i3.listsEqual(
            other.signature,
            signature,
          ) &&
          _i3.listsEqual(
            other.stellarPubKey,
            stellarPubKey,
          );

  @override
  int get hashCode => Object.hash(
        signature,
        stellarPubKey,
      );
}

class $StellarSignatureCodec with _i1.Codec<StellarSignature> {
  const $StellarSignatureCodec();

  @override
  void encodeTo(
    StellarSignature obj,
    _i1.Output output,
  ) {
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.signature,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.stellarPubKey,
      output,
    );
  }

  @override
  StellarSignature decode(_i1.Input input) {
    return StellarSignature(
      signature: _i1.U8SequenceCodec.codec.decode(input),
      stellarPubKey: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  @override
  int sizeHint(StellarSignature obj) {
    int size = 0;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.signature);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.stellarPubKey);
    return size;
  }
}
