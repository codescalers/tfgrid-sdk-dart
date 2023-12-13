// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i3;

class LocationInput {
  const LocationInput({
    required this.city,
    required this.country,
    required this.latitude,
    required this.longitude,
  });

  factory LocationInput.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// City
  final List<int> city;

  /// Country
  final List<int> country;

  /// Latitude
  final List<int> latitude;

  /// Longitude
  final List<int> longitude;

  static const $LocationInputCodec codec = $LocationInputCodec();

  _i2.Uint8List encode() {
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
      other is LocationInput &&
          _i3.listsEqual(
            other.city,
            city,
          ) &&
          _i3.listsEqual(
            other.country,
            country,
          ) &&
          _i3.listsEqual(
            other.latitude,
            latitude,
          ) &&
          _i3.listsEqual(
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

class $LocationInputCodec with _i1.Codec<LocationInput> {
  const $LocationInputCodec();

  @override
  void encodeTo(
    LocationInput obj,
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
  LocationInput decode(_i1.Input input) {
    return LocationInput(
      city: _i1.U8SequenceCodec.codec.decode(input),
      country: _i1.U8SequenceCodec.codec.decode(input),
      latitude: _i1.U8SequenceCodec.codec.decode(input),
      longitude: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  @override
  int sizeHint(LocationInput obj) {
    int size = 0;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.city);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.country);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.latitude);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.longitude);
    return size;
  }
}
