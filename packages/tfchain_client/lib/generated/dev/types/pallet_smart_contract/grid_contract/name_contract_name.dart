// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:polkadart/scale_codec.dart' as _i1;

typedef NameContractName = List<int>;

class NameContractNameCodec with _i1.Codec<NameContractName> {
  const NameContractNameCodec();

  @override
  NameContractName decode(_i1.Input input) {
    return _i1.U8SequenceCodec.codec.decode(input);
  }

  @override
  void encodeTo(
    NameContractName value,
    _i1.Output output,
  ) {
    _i1.U8SequenceCodec.codec.encodeTo(
      value,
      output,
    );
  }

  @override
  int sizeHint(NameContractName value) {
    return _i1.U8SequenceCodec.codec.sizeHint(value);
  }
}
