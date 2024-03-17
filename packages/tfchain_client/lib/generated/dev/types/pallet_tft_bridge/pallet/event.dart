// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i8;

import '../../sp_core/crypto/account_id32.dart' as _i3;
import '../types/burn_transaction.dart' as _i6;
import '../types/mint_transaction.dart' as _i4;
import '../types/refund_transaction.dart' as _i7;
import '../types/stellar_signature.dart' as _i5;

///
///			The [event](https://docs.substrate.io/main-docs/build/events-errors/) emitted
///			by this pallet.
///
abstract class Event {
  const Event();

  factory Event.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $EventCodec codec = $EventCodec();

  static const $Event values = $Event();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, dynamic> toJson();
}

class $Event {
  const $Event();

  MintTransactionProposed mintTransactionProposed(
    List<int> value0,
    _i3.AccountId32 value1,
    BigInt value2,
  ) {
    return MintTransactionProposed(
      value0,
      value1,
      value2,
    );
  }

  MintTransactionVoted mintTransactionVoted(List<int> value0) {
    return MintTransactionVoted(value0);
  }

  MintCompleted mintCompleted(_i4.MintTransaction value0) {
    return MintCompleted(value0);
  }

  MintTransactionExpired mintTransactionExpired(
    List<int> value0,
    BigInt value1,
    _i3.AccountId32 value2,
  ) {
    return MintTransactionExpired(
      value0,
      value1,
      value2,
    );
  }

  BurnTransactionCreated burnTransactionCreated(
    BigInt value0,
    _i3.AccountId32 value1,
    List<int> value2,
    BigInt value3,
  ) {
    return BurnTransactionCreated(
      value0,
      value1,
      value2,
      value3,
    );
  }

  BurnTransactionProposed burnTransactionProposed(
    BigInt value0,
    List<int> value1,
    BigInt value2,
  ) {
    return BurnTransactionProposed(
      value0,
      value1,
      value2,
    );
  }

  BurnTransactionSignatureAdded burnTransactionSignatureAdded(
    BigInt value0,
    _i5.StellarSignature value1,
  ) {
    return BurnTransactionSignatureAdded(
      value0,
      value1,
    );
  }

  BurnTransactionReady burnTransactionReady(BigInt value0) {
    return BurnTransactionReady(value0);
  }

  BurnTransactionProcessed burnTransactionProcessed(
      _i6.BurnTransaction value0) {
    return BurnTransactionProcessed(value0);
  }

  BurnTransactionExpired burnTransactionExpired(
    BigInt value0,
    List<int> value1,
    BigInt value2,
  ) {
    return BurnTransactionExpired(
      value0,
      value1,
      value2,
    );
  }

  RefundTransactionCreated refundTransactionCreated(
    List<int> value0,
    List<int> value1,
    BigInt value2,
  ) {
    return RefundTransactionCreated(
      value0,
      value1,
      value2,
    );
  }

  RefundTransactionsignatureAdded refundTransactionsignatureAdded(
    List<int> value0,
    _i5.StellarSignature value1,
  ) {
    return RefundTransactionsignatureAdded(
      value0,
      value1,
    );
  }

  RefundTransactionReady refundTransactionReady(List<int> value0) {
    return RefundTransactionReady(value0);
  }

  RefundTransactionProcessed refundTransactionProcessed(
      _i7.RefundTransaction value0) {
    return RefundTransactionProcessed(value0);
  }

  RefundTransactionExpired refundTransactionExpired(
    List<int> value0,
    List<int> value1,
    BigInt value2,
  ) {
    return RefundTransactionExpired(
      value0,
      value1,
      value2,
    );
  }
}

class $EventCodec with _i1.Codec<Event> {
  const $EventCodec();

  @override
  Event decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return MintTransactionProposed._decode(input);
      case 1:
        return MintTransactionVoted._decode(input);
      case 2:
        return MintCompleted._decode(input);
      case 3:
        return MintTransactionExpired._decode(input);
      case 4:
        return BurnTransactionCreated._decode(input);
      case 5:
        return BurnTransactionProposed._decode(input);
      case 6:
        return BurnTransactionSignatureAdded._decode(input);
      case 7:
        return BurnTransactionReady._decode(input);
      case 8:
        return BurnTransactionProcessed._decode(input);
      case 9:
        return BurnTransactionExpired._decode(input);
      case 10:
        return RefundTransactionCreated._decode(input);
      case 11:
        return RefundTransactionsignatureAdded._decode(input);
      case 12:
        return RefundTransactionReady._decode(input);
      case 13:
        return RefundTransactionProcessed._decode(input);
      case 14:
        return RefundTransactionExpired._decode(input);
      default:
        throw Exception('Event: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Event value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case MintTransactionProposed:
        (value as MintTransactionProposed).encodeTo(output);
        break;
      case MintTransactionVoted:
        (value as MintTransactionVoted).encodeTo(output);
        break;
      case MintCompleted:
        (value as MintCompleted).encodeTo(output);
        break;
      case MintTransactionExpired:
        (value as MintTransactionExpired).encodeTo(output);
        break;
      case BurnTransactionCreated:
        (value as BurnTransactionCreated).encodeTo(output);
        break;
      case BurnTransactionProposed:
        (value as BurnTransactionProposed).encodeTo(output);
        break;
      case BurnTransactionSignatureAdded:
        (value as BurnTransactionSignatureAdded).encodeTo(output);
        break;
      case BurnTransactionReady:
        (value as BurnTransactionReady).encodeTo(output);
        break;
      case BurnTransactionProcessed:
        (value as BurnTransactionProcessed).encodeTo(output);
        break;
      case BurnTransactionExpired:
        (value as BurnTransactionExpired).encodeTo(output);
        break;
      case RefundTransactionCreated:
        (value as RefundTransactionCreated).encodeTo(output);
        break;
      case RefundTransactionsignatureAdded:
        (value as RefundTransactionsignatureAdded).encodeTo(output);
        break;
      case RefundTransactionReady:
        (value as RefundTransactionReady).encodeTo(output);
        break;
      case RefundTransactionProcessed:
        (value as RefundTransactionProcessed).encodeTo(output);
        break;
      case RefundTransactionExpired:
        (value as RefundTransactionExpired).encodeTo(output);
        break;
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Event value) {
    switch (value.runtimeType) {
      case MintTransactionProposed:
        return (value as MintTransactionProposed)._sizeHint();
      case MintTransactionVoted:
        return (value as MintTransactionVoted)._sizeHint();
      case MintCompleted:
        return (value as MintCompleted)._sizeHint();
      case MintTransactionExpired:
        return (value as MintTransactionExpired)._sizeHint();
      case BurnTransactionCreated:
        return (value as BurnTransactionCreated)._sizeHint();
      case BurnTransactionProposed:
        return (value as BurnTransactionProposed)._sizeHint();
      case BurnTransactionSignatureAdded:
        return (value as BurnTransactionSignatureAdded)._sizeHint();
      case BurnTransactionReady:
        return (value as BurnTransactionReady)._sizeHint();
      case BurnTransactionProcessed:
        return (value as BurnTransactionProcessed)._sizeHint();
      case BurnTransactionExpired:
        return (value as BurnTransactionExpired)._sizeHint();
      case RefundTransactionCreated:
        return (value as RefundTransactionCreated)._sizeHint();
      case RefundTransactionsignatureAdded:
        return (value as RefundTransactionsignatureAdded)._sizeHint();
      case RefundTransactionReady:
        return (value as RefundTransactionReady)._sizeHint();
      case RefundTransactionProcessed:
        return (value as RefundTransactionProcessed)._sizeHint();
      case RefundTransactionExpired:
        return (value as RefundTransactionExpired)._sizeHint();
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class MintTransactionProposed extends Event {
  const MintTransactionProposed(
    this.value0,
    this.value1,
    this.value2,
  );

  factory MintTransactionProposed._decode(_i1.Input input) {
    return MintTransactionProposed(
      _i1.U8SequenceCodec.codec.decode(input),
      const _i1.U8ArrayCodec(32).decode(input),
      _i1.U64Codec.codec.decode(input),
    );
  }

  /// Vec<u8>
  final List<int> value0;

  /// T::AccountId
  final _i3.AccountId32 value1;

  /// u64
  final BigInt value2;

  @override
  Map<String, List<dynamic>> toJson() => {
        'MintTransactionProposed': [
          value0,
          value1.toList(),
          value2,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value0);
    size = size + const _i3.AccountId32Codec().sizeHint(value1);
    size = size + _i1.U64Codec.codec.sizeHint(value2);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value0,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      value1,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value2,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is MintTransactionProposed &&
          _i8.listsEqual(
            other.value0,
            value0,
          ) &&
          _i8.listsEqual(
            other.value1,
            value1,
          ) &&
          other.value2 == value2;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
        value2,
      );
}

class MintTransactionVoted extends Event {
  const MintTransactionVoted(this.value0);

  factory MintTransactionVoted._decode(_i1.Input input) {
    return MintTransactionVoted(_i1.U8SequenceCodec.codec.decode(input));
  }

  /// Vec<u8>
  final List<int> value0;

  @override
  Map<String, List<int>> toJson() => {'MintTransactionVoted': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is MintTransactionVoted &&
          _i8.listsEqual(
            other.value0,
            value0,
          );

  @override
  int get hashCode => value0.hashCode;
}

class MintCompleted extends Event {
  const MintCompleted(this.value0);

  factory MintCompleted._decode(_i1.Input input) {
    return MintCompleted(_i4.MintTransaction.codec.decode(input));
  }

  /// MintTransaction<T::AccountId, T::BlockNumber>
  final _i4.MintTransaction value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'MintCompleted': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i4.MintTransaction.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    _i4.MintTransaction.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is MintCompleted && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class MintTransactionExpired extends Event {
  const MintTransactionExpired(
    this.value0,
    this.value1,
    this.value2,
  );

  factory MintTransactionExpired._decode(_i1.Input input) {
    return MintTransactionExpired(
      _i1.U8SequenceCodec.codec.decode(input),
      _i1.U64Codec.codec.decode(input),
      const _i1.U8ArrayCodec(32).decode(input),
    );
  }

  /// Vec<u8>
  final List<int> value0;

  /// u64
  final BigInt value1;

  /// T::AccountId
  final _i3.AccountId32 value2;

  @override
  Map<String, List<dynamic>> toJson() => {
        'MintTransactionExpired': [
          value0,
          value1,
          value2.toList(),
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value0);
    size = size + _i1.U64Codec.codec.sizeHint(value1);
    size = size + const _i3.AccountId32Codec().sizeHint(value2);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value0,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value1,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      value2,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is MintTransactionExpired &&
          _i8.listsEqual(
            other.value0,
            value0,
          ) &&
          other.value1 == value1 &&
          _i8.listsEqual(
            other.value2,
            value2,
          );

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
        value2,
      );
}

class BurnTransactionCreated extends Event {
  const BurnTransactionCreated(
    this.value0,
    this.value1,
    this.value2,
    this.value3,
  );

  factory BurnTransactionCreated._decode(_i1.Input input) {
    return BurnTransactionCreated(
      _i1.U64Codec.codec.decode(input),
      const _i1.U8ArrayCodec(32).decode(input),
      _i1.U8SequenceCodec.codec.decode(input),
      _i1.U64Codec.codec.decode(input),
    );
  }

  /// u64
  final BigInt value0;

  /// T::AccountId
  final _i3.AccountId32 value1;

  /// Vec<u8>
  final List<int> value2;

  /// u64
  final BigInt value3;

  @override
  Map<String, List<dynamic>> toJson() => {
        'BurnTransactionCreated': [
          value0,
          value1.toList(),
          value2,
          value3,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(value0);
    size = size + const _i3.AccountId32Codec().sizeHint(value1);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value2);
    size = size + _i1.U64Codec.codec.sizeHint(value3);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value0,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      value1,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value2,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value3,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is BurnTransactionCreated &&
          other.value0 == value0 &&
          _i8.listsEqual(
            other.value1,
            value1,
          ) &&
          _i8.listsEqual(
            other.value2,
            value2,
          ) &&
          other.value3 == value3;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
        value2,
        value3,
      );
}

class BurnTransactionProposed extends Event {
  const BurnTransactionProposed(
    this.value0,
    this.value1,
    this.value2,
  );

  factory BurnTransactionProposed._decode(_i1.Input input) {
    return BurnTransactionProposed(
      _i1.U64Codec.codec.decode(input),
      _i1.U8SequenceCodec.codec.decode(input),
      _i1.U64Codec.codec.decode(input),
    );
  }

  /// u64
  final BigInt value0;

  /// Vec<u8>
  final List<int> value1;

  /// u64
  final BigInt value2;

  @override
  Map<String, List<dynamic>> toJson() => {
        'BurnTransactionProposed': [
          value0,
          value1,
          value2,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(value0);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value1);
    size = size + _i1.U64Codec.codec.sizeHint(value2);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      5,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value0,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value1,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value2,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is BurnTransactionProposed &&
          other.value0 == value0 &&
          _i8.listsEqual(
            other.value1,
            value1,
          ) &&
          other.value2 == value2;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
        value2,
      );
}

class BurnTransactionSignatureAdded extends Event {
  const BurnTransactionSignatureAdded(
    this.value0,
    this.value1,
  );

  factory BurnTransactionSignatureAdded._decode(_i1.Input input) {
    return BurnTransactionSignatureAdded(
      _i1.U64Codec.codec.decode(input),
      _i5.StellarSignature.codec.decode(input),
    );
  }

  /// u64
  final BigInt value0;

  /// StellarSignature
  final _i5.StellarSignature value1;

  @override
  Map<String, List<dynamic>> toJson() => {
        'BurnTransactionSignatureAdded': [
          value0,
          value1.toJson(),
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(value0);
    size = size + _i5.StellarSignature.codec.sizeHint(value1);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      6,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value0,
      output,
    );
    _i5.StellarSignature.codec.encodeTo(
      value1,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is BurnTransactionSignatureAdded &&
          other.value0 == value0 &&
          other.value1 == value1;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
      );
}

class BurnTransactionReady extends Event {
  const BurnTransactionReady(this.value0);

  factory BurnTransactionReady._decode(_i1.Input input) {
    return BurnTransactionReady(_i1.U64Codec.codec.decode(input));
  }

  /// u64
  final BigInt value0;

  @override
  Map<String, BigInt> toJson() => {'BurnTransactionReady': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      7,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is BurnTransactionReady && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class BurnTransactionProcessed extends Event {
  const BurnTransactionProcessed(this.value0);

  factory BurnTransactionProcessed._decode(_i1.Input input) {
    return BurnTransactionProcessed(_i6.BurnTransaction.codec.decode(input));
  }

  /// BurnTransaction<T::BlockNumber>
  final _i6.BurnTransaction value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'BurnTransactionProcessed': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i6.BurnTransaction.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      8,
      output,
    );
    _i6.BurnTransaction.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is BurnTransactionProcessed && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class BurnTransactionExpired extends Event {
  const BurnTransactionExpired(
    this.value0,
    this.value1,
    this.value2,
  );

  factory BurnTransactionExpired._decode(_i1.Input input) {
    return BurnTransactionExpired(
      _i1.U64Codec.codec.decode(input),
      _i1.U8SequenceCodec.codec.decode(input),
      _i1.U64Codec.codec.decode(input),
    );
  }

  /// u64
  final BigInt value0;

  /// Vec<u8>
  final List<int> value1;

  /// u64
  final BigInt value2;

  @override
  Map<String, List<dynamic>> toJson() => {
        'BurnTransactionExpired': [
          value0,
          value1,
          value2,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(value0);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value1);
    size = size + _i1.U64Codec.codec.sizeHint(value2);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      9,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value0,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value1,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value2,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is BurnTransactionExpired &&
          other.value0 == value0 &&
          _i8.listsEqual(
            other.value1,
            value1,
          ) &&
          other.value2 == value2;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
        value2,
      );
}

class RefundTransactionCreated extends Event {
  const RefundTransactionCreated(
    this.value0,
    this.value1,
    this.value2,
  );

  factory RefundTransactionCreated._decode(_i1.Input input) {
    return RefundTransactionCreated(
      _i1.U8SequenceCodec.codec.decode(input),
      _i1.U8SequenceCodec.codec.decode(input),
      _i1.U64Codec.codec.decode(input),
    );
  }

  /// Vec<u8>
  final List<int> value0;

  /// Vec<u8>
  final List<int> value1;

  /// u64
  final BigInt value2;

  @override
  Map<String, List<dynamic>> toJson() => {
        'RefundTransactionCreated': [
          value0,
          value1,
          value2,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value0);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value1);
    size = size + _i1.U64Codec.codec.sizeHint(value2);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      10,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value0,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value1,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value2,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RefundTransactionCreated &&
          _i8.listsEqual(
            other.value0,
            value0,
          ) &&
          _i8.listsEqual(
            other.value1,
            value1,
          ) &&
          other.value2 == value2;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
        value2,
      );
}

class RefundTransactionsignatureAdded extends Event {
  const RefundTransactionsignatureAdded(
    this.value0,
    this.value1,
  );

  factory RefundTransactionsignatureAdded._decode(_i1.Input input) {
    return RefundTransactionsignatureAdded(
      _i1.U8SequenceCodec.codec.decode(input),
      _i5.StellarSignature.codec.decode(input),
    );
  }

  /// Vec<u8>
  final List<int> value0;

  /// StellarSignature
  final _i5.StellarSignature value1;

  @override
  Map<String, List<dynamic>> toJson() => {
        'RefundTransactionsignatureAdded': [
          value0,
          value1.toJson(),
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value0);
    size = size + _i5.StellarSignature.codec.sizeHint(value1);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      11,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value0,
      output,
    );
    _i5.StellarSignature.codec.encodeTo(
      value1,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RefundTransactionsignatureAdded &&
          _i8.listsEqual(
            other.value0,
            value0,
          ) &&
          other.value1 == value1;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
      );
}

class RefundTransactionReady extends Event {
  const RefundTransactionReady(this.value0);

  factory RefundTransactionReady._decode(_i1.Input input) {
    return RefundTransactionReady(_i1.U8SequenceCodec.codec.decode(input));
  }

  /// Vec<u8>
  final List<int> value0;

  @override
  Map<String, List<int>> toJson() => {'RefundTransactionReady': value0};

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      12,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RefundTransactionReady &&
          _i8.listsEqual(
            other.value0,
            value0,
          );

  @override
  int get hashCode => value0.hashCode;
}

class RefundTransactionProcessed extends Event {
  const RefundTransactionProcessed(this.value0);

  factory RefundTransactionProcessed._decode(_i1.Input input) {
    return RefundTransactionProcessed(
        _i7.RefundTransaction.codec.decode(input));
  }

  /// RefundTransaction<T::BlockNumber>
  final _i7.RefundTransaction value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'RefundTransactionProcessed': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i7.RefundTransaction.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      13,
      output,
    );
    _i7.RefundTransaction.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RefundTransactionProcessed && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class RefundTransactionExpired extends Event {
  const RefundTransactionExpired(
    this.value0,
    this.value1,
    this.value2,
  );

  factory RefundTransactionExpired._decode(_i1.Input input) {
    return RefundTransactionExpired(
      _i1.U8SequenceCodec.codec.decode(input),
      _i1.U8SequenceCodec.codec.decode(input),
      _i1.U64Codec.codec.decode(input),
    );
  }

  /// Vec<u8>
  final List<int> value0;

  /// Vec<u8>
  final List<int> value1;

  /// u64
  final BigInt value2;

  @override
  Map<String, List<dynamic>> toJson() => {
        'RefundTransactionExpired': [
          value0,
          value1,
          value2,
        ]
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value0);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(value1);
    size = size + _i1.U64Codec.codec.sizeHint(value2);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      14,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value0,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      value1,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      value2,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RefundTransactionExpired &&
          _i8.listsEqual(
            other.value0,
            value0,
          ) &&
          _i8.listsEqual(
            other.value1,
            value1,
          ) &&
          other.value2 == value2;

  @override
  int get hashCode => Object.hash(
        value0,
        value1,
        value2,
      );
}
