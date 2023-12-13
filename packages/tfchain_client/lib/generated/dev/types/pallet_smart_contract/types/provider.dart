// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i3;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import '../../sp_core/crypto/account_id32.dart' as _i2;

class Provider {
  const Provider({
    required this.who,
    required this.take,
  });

  factory Provider.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// AccountId
  final _i2.AccountId32 who;

  /// u8
  final int take;

  static const $ProviderCodec codec = $ProviderCodec();

  _i3.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'who': who.toList(),
        'take': take,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Provider &&
          _i4.listsEqual(
            other.who,
            who,
          ) &&
          other.take == take;

  @override
  int get hashCode => Object.hash(
        who,
        take,
      );
}

class $ProviderCodec with _i1.Codec<Provider> {
  const $ProviderCodec();

  @override
  void encodeTo(
    Provider obj,
    _i1.Output output,
  ) {
    const _i1.U8ArrayCodec(32).encodeTo(
      obj.who,
      output,
    );
    _i1.U8Codec.codec.encodeTo(
      obj.take,
      output,
    );
  }

  @override
  Provider decode(_i1.Input input) {
    return Provider(
      who: const _i1.U8ArrayCodec(32).decode(input),
      take: _i1.U8Codec.codec.decode(input),
    );
  }

  @override
  int sizeHint(Provider obj) {
    int size = 0;
    size = size + const _i2.AccountId32Codec().sizeHint(obj.who);
    size = size + _i1.U8Codec.codec.sizeHint(obj.take);
    return size;
  }
}
