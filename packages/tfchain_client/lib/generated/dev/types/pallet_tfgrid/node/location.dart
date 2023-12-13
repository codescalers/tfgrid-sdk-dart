// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i4;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i5;

import 'city_name.dart' as _i2;
import 'country_name.dart' as _i3;

class Location {
  const Location({
    required this.city,
    required this.country,
    required this.latitude,
    required this.longitude,
  });

  factory Location.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// CityName<T>
  final _i2.CityName city;

  /// CountryName<T>
  final _i3.CountryName country;

  /// BoundedVec<u8, ConstU32<MAX_LATITUDE_LENGTH>>
  final List<int> latitude;

  /// BoundedVec<u8, ConstU32<MAX_LONGITUDE_LENGTH>>
  final List<int> longitude;

  static const $LocationCodec codec = $LocationCodec();

  _i4.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, List<int>> toJson() => {
        'city': city,
        'country': country,
        'latitude': latitude,
        'longitude': longitude,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Location &&
          _i5.listsEqual(
            other.city,
            city,
          ) &&
          _i5.listsEqual(
            other.country,
            country,
          ) &&
          _i5.listsEqual(
            other.latitude,
            latitude,
          ) &&
          _i5.listsEqual(
            other.longitude,
            longitude,
          );

  @override
  int get hashCode => Object.hash(
        city,
        country,
        latitude,
        longitude,
      );
}

class $LocationCodec with _i1.Codec<Location> {
  const $LocationCodec();

  @override
  void encodeTo(
    Location obj,
    _i1.Output output,
  ) {
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.city,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.country,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.latitude,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.longitude,
      output,
    );
  }

  @override
  Location decode(_i1.Input input) {
    return Location(
      city: _i1.U8SequenceCodec.codec.decode(input),
      country: _i1.U8SequenceCodec.codec.decode(input),
      latitude: _i1.U8SequenceCodec.codec.decode(input),
      longitude: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  @override
  int sizeHint(Location obj) {
    int size = 0;
    size = size + const _i2.CityNameCodec().sizeHint(obj.city);
    size = size + const _i3.CountryNameCodec().sizeHint(obj.country);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.latitude);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.longitude);
    return size;
  }
}
