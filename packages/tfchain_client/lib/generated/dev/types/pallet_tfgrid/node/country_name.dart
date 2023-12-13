// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:polkadart/scale_codec.dart' as _i1;

typedef CountryName = List<int>;

class CountryNameCodec with _i1.Codec<CountryName> {
  const CountryNameCodec();

  @override
  CountryName decode(_i1.Input input) {
    return _i1.U8SequenceCodec.codec.decode(input);
  }

  @override
  void encodeTo(
    CountryName value,
    _i1.Output output,
  ) {
    _i1.U8SequenceCodec.codec.encodeTo(
      value,
      output,
    );
  }

  @override
  int sizeHint(CountryName value) {
    return _i1.U8SequenceCodec.codec.sizeHint(value);
  }
}
