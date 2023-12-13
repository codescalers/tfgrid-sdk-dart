// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:polkadart/scale_codec.dart' as _i1;

typedef CityName = List<int>;

class CityNameCodec with _i1.Codec<CityName> {
  const CityNameCodec();

  @override
  CityName decode(_i1.Input input) {
    return _i1.U8SequenceCodec.codec.decode(input);
  }

  @override
  void encodeTo(
    CityName value,
    _i1.Output output,
  ) {
    _i1.U8SequenceCodec.codec.encodeTo(
      value,
      output,
    );
  }

  @override
  int sizeHint(CityName value) {
    return _i1.U8SequenceCodec.codec.sizeHint(value);
  }
}
