// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i3;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import 'provider.dart' as _i2;

class SolutionProvider {
  const SolutionProvider({
    required this.solutionProviderId,
    required this.providers,
    required this.description,
    required this.link,
    required this.approved,
  });

  factory SolutionProvider.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u64
  final BigInt solutionProviderId;

  /// Vec<Provider<AccountId>>
  final List<_i2.Provider> providers;

  /// Vec<u8>
  final List<int> description;

  /// Vec<u8>
  final List<int> link;

  /// bool
  final bool approved;

  static const $SolutionProviderCodec codec = $SolutionProviderCodec();

  _i3.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'solutionProviderId': solutionProviderId,
        'providers': providers.map((value) => value.toJson()).toList(),
        'description': description,
        'link': link,
        'approved': approved,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SolutionProvider &&
          other.solutionProviderId == solutionProviderId &&
          _i4.listsEqual(
            other.providers,
            providers,
          ) &&
          _i4.listsEqual(
            other.description,
            description,
          ) &&
          _i4.listsEqual(
            other.link,
            link,
          ) &&
          other.approved == approved;

  @override
  int get hashCode => Object.hash(
        solutionProviderId,
        providers,
        description,
        link,
        approved,
      );
}

class $SolutionProviderCodec with _i1.Codec<SolutionProvider> {
  const $SolutionProviderCodec();

  @override
  void encodeTo(
    SolutionProvider obj,
    _i1.Output output,
  ) {
    _i1.U64Codec.codec.encodeTo(
      obj.solutionProviderId,
      output,
    );
    const _i1.SequenceCodec<_i2.Provider>(_i2.Provider.codec).encodeTo(
      obj.providers,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.description,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.link,
      output,
    );
    _i1.BoolCodec.codec.encodeTo(
      obj.approved,
      output,
    );
  }

  @override
  SolutionProvider decode(_i1.Input input) {
    return SolutionProvider(
      solutionProviderId: _i1.U64Codec.codec.decode(input),
      providers: const _i1.SequenceCodec<_i2.Provider>(_i2.Provider.codec)
          .decode(input),
      description: _i1.U8SequenceCodec.codec.decode(input),
      link: _i1.U8SequenceCodec.codec.decode(input),
      approved: _i1.BoolCodec.codec.decode(input),
    );
  }

  @override
  int sizeHint(SolutionProvider obj) {
    int size = 0;
    size = size + _i1.U64Codec.codec.sizeHint(obj.solutionProviderId);
    size = size +
        const _i1.SequenceCodec<_i2.Provider>(_i2.Provider.codec)
            .sizeHint(obj.providers);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.description);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.link);
    size = size + _i1.BoolCodec.codec.sizeHint(obj.approved);
    return size;
  }
}
