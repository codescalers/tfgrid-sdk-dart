// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i3;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import '../grid_contract/name_contract_name.dart' as _i2;

class NameContract {
  const NameContract({required this.name});

  factory NameContract.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// T::NameContractName
  final _i2.NameContractName name;

  static const $NameContractCodec codec = $NameContractCodec();

  _i3.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, List<int>> toJson() => {'name': name};

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is NameContract &&
          _i4.listsEqual(
            other.name,
            name,
          );

  @override
  int get hashCode => name.hashCode;
}

class $NameContractCodec with _i1.Codec<NameContract> {
  const $NameContractCodec();

  @override
  void encodeTo(
    NameContract obj,
    _i1.Output output,
  ) {
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.name,
      output,
    );
  }

  @override
  NameContract decode(_i1.Input input) {
    return NameContract(name: _i1.U8SequenceCodec.codec.decode(input));
  }

  @override
  int sizeHint(NameContract obj) {
    int size = 0;
    size = size + const _i2.NameContractNameCodec().sizeHint(obj.name);
    return size;
  }
}
