// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i3;

class ServiceContractBill {
  const ServiceContractBill({
    required this.variableAmount,
    required this.window,
    required this.metadata,
  });

  factory ServiceContractBill.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u64
  final BigInt variableAmount;

  /// u64
  final BigInt window;

  /// BoundedVec<u8, ConstU32<MAX_BILL_METADATA_LENGTH>>
  final List<int> metadata;

  static const $ServiceContractBillCodec codec = $ServiceContractBillCodec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'variableAmount': variableAmount,
        'window': window,
        'metadata': metadata,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ServiceContractBill &&
          other.variableAmount == variableAmount &&
          other.window == window &&
          _i3.listsEqual(
            other.metadata,
            metadata,
          );

  @override
  int get hashCode => Object.hash(
        variableAmount,
        window,
        metadata,
      );
}

class $ServiceContractBillCodec with _i1.Codec<ServiceContractBill> {
  const $ServiceContractBillCodec();

  @override
  void encodeTo(
    ServiceContractBill obj,
    _i1.Output output,
  ) {
    _i1.U64Codec.codec.encodeTo(
      obj.variableAmount,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      obj.window,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.metadata,
      output,
    );
  }

  @override
  ServiceContractBill decode(_i1.Input input) {
    return ServiceContractBill(
      variableAmount: _i1.U64Codec.codec.decode(input),
      window: _i1.U64Codec.codec.decode(input),
      metadata: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  @override
  int sizeHint(ServiceContractBill obj) {
    int size = 0;
    size = size + _i1.U64Codec.codec.sizeHint(obj.variableAmount);
    size = size + _i1.U64Codec.codec.sizeHint(obj.window);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.metadata);
    return size;
  }
}
