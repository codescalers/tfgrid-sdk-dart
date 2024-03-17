// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:polkadart/scale_codec.dart' as _i1;

typedef SerialNumber = List<int>;

class SerialNumberCodec with _i1.Codec<SerialNumber> {
  const SerialNumberCodec();

  @override
  SerialNumber decode(_i1.Input input) {
    return _i1.U8SequenceCodec.codec.decode(input);
  }

  @override
  void encodeTo(
    SerialNumber value,
    _i1.Output output,
  ) {
    _i1.U8SequenceCodec.codec.encodeTo(
      value,
      output,
    );
  }

  @override
  int sizeHint(SerialNumber value) {
    return _i1.U8SequenceCodec.codec.sizeHint(value);
  }
}
