// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i5;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i6;

import '../../sp_core/crypto/account_id32.dart' as _i2;
import '../node/city_name.dart' as _i4;
import '../node/country_name.dart' as _i3;

class Entity {
  const Entity({
    required this.version,
    required this.id,
    required this.name,
    required this.accountId,
    required this.country,
    required this.city,
  });

  factory Entity.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u32
  final int version;

  /// u32
  final int id;

  /// Vec<u8>
  final List<int> name;

  /// AccountId
  final _i2.AccountId32 accountId;

  /// Country
  final _i3.CountryName country;

  /// City
  final _i4.CityName city;

  static const $EntityCodec codec = $EntityCodec();

  _i5.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'version': version,
        'id': id,
        'name': name,
        'accountId': accountId.toList(),
        'country': country,
        'city': city,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Entity &&
          other.version == version &&
          other.id == id &&
          _i6.listsEqual(
            other.name,
            name,
          ) &&
          _i6.listsEqual(
            other.accountId,
            accountId,
          ) &&
          _i6.listsEqual(
            other.country,
            country,
          ) &&
          _i6.listsEqual(
            other.city,
            city,
          );

  @override
  int get hashCode => Object.hash(
        version,
        id,
        name,
        accountId,
        country,
        city,
      );
}

class $EntityCodec with _i1.Codec<Entity> {
  const $EntityCodec();

  @override
  void encodeTo(
    Entity obj,
    _i1.Output output,
  ) {
    _i1.U32Codec.codec.encodeTo(
      obj.version,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.id,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.name,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      obj.accountId,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.country,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.city,
      output,
    );
  }

  @override
  Entity decode(_i1.Input input) {
    return Entity(
      version: _i1.U32Codec.codec.decode(input),
      id: _i1.U32Codec.codec.decode(input),
      name: _i1.U8SequenceCodec.codec.decode(input),
      accountId: const _i1.U8ArrayCodec(32).decode(input),
      country: _i1.U8SequenceCodec.codec.decode(input),
      city: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  @override
  int sizeHint(Entity obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.version);
    size = size + _i1.U32Codec.codec.sizeHint(obj.id);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.name);
    size = size + const _i2.AccountId32Codec().sizeHint(obj.accountId);
    size = size + const _i3.CountryNameCodec().sizeHint(obj.country);
    size = size + const _i4.CityNameCodec().sizeHint(obj.city);
    return size;
  }
}
