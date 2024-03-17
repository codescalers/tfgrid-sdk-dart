// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i4;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i5;

import '../../sp_core/crypto/account_id32.dart' as _i2;
import 'validator_request_state.dart' as _i3;

class Validator {
  const Validator({
    required this.validatorNodeAccount,
    required this.stashAccount,
    required this.description,
    required this.tfConnectId,
    required this.info,
    required this.state,
  });

  factory Validator.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// AccountId
  final _i2.AccountId32 validatorNodeAccount;

  /// AccountId
  final _i2.AccountId32 stashAccount;

  /// Vec<u8>
  final List<int> description;

  /// Vec<u8>
  final List<int> tfConnectId;

  /// Vec<u8>
  final List<int> info;

  /// ValidatorRequestState
  final _i3.ValidatorRequestState state;

  static const $ValidatorCodec codec = $ValidatorCodec();

  _i4.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'validatorNodeAccount': validatorNodeAccount.toList(),
        'stashAccount': stashAccount.toList(),
        'description': description,
        'tfConnectId': tfConnectId,
        'info': info,
        'state': state.toJson(),
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Validator &&
          _i5.listsEqual(
            other.validatorNodeAccount,
            validatorNodeAccount,
          ) &&
          _i5.listsEqual(
            other.stashAccount,
            stashAccount,
          ) &&
          _i5.listsEqual(
            other.description,
            description,
          ) &&
          _i5.listsEqual(
            other.tfConnectId,
            tfConnectId,
          ) &&
          _i5.listsEqual(
            other.info,
            info,
          ) &&
          other.state == state;

  @override
  int get hashCode => Object.hash(
        validatorNodeAccount,
        stashAccount,
        description,
        tfConnectId,
        info,
        state,
      );
}

class $ValidatorCodec with _i1.Codec<Validator> {
  const $ValidatorCodec();

  @override
  void encodeTo(
    Validator obj,
    _i1.Output output,
  ) {
    const _i1.U8ArrayCodec(32).encodeTo(
      obj.validatorNodeAccount,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      obj.stashAccount,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.description,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.tfConnectId,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.info,
      output,
    );
    _i3.ValidatorRequestState.codec.encodeTo(
      obj.state,
      output,
    );
  }

  @override
  Validator decode(_i1.Input input) {
    return Validator(
      validatorNodeAccount: const _i1.U8ArrayCodec(32).decode(input),
      stashAccount: const _i1.U8ArrayCodec(32).decode(input),
      description: _i1.U8SequenceCodec.codec.decode(input),
      tfConnectId: _i1.U8SequenceCodec.codec.decode(input),
      info: _i1.U8SequenceCodec.codec.decode(input),
      state: _i3.ValidatorRequestState.codec.decode(input),
    );
  }

  @override
  int sizeHint(Validator obj) {
    int size = 0;
    size =
        size + const _i2.AccountId32Codec().sizeHint(obj.validatorNodeAccount);
    size = size + const _i2.AccountId32Codec().sizeHint(obj.stashAccount);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.description);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.tfConnectId);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.info);
    size = size + _i3.ValidatorRequestState.codec.sizeHint(obj.state);
    return size;
  }
}
