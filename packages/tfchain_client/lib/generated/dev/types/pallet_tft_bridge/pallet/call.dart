// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import '../../sp_core/crypto/account_id32.dart' as _i3;

/// Contains one variant per dispatchable that can be called by an extrinsic.
abstract class Call {
  const Call();

  factory Call.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $CallCodec codec = $CallCodec();

  static const $Call values = $Call();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, Map<String, dynamic>> toJson();
}

class $Call {
  const $Call();

  AddBridgeValidator addBridgeValidator({required _i3.AccountId32 target}) {
    return AddBridgeValidator(target: target);
  }

  RemoveBridgeValidator removeBridgeValidator(
      {required _i3.AccountId32 target}) {
    return RemoveBridgeValidator(target: target);
  }

  SetFeeAccount setFeeAccount({required _i3.AccountId32 target}) {
    return SetFeeAccount(target: target);
  }

  SetWithdrawFee setWithdrawFee({required BigInt amount}) {
    return SetWithdrawFee(amount: amount);
  }

  SetDepositFee setDepositFee({required BigInt amount}) {
    return SetDepositFee(amount: amount);
  }

  SwapToStellar swapToStellar({
    required List<int> targetStellarAddress,
    required BigInt amount,
  }) {
    return SwapToStellar(
      targetStellarAddress: targetStellarAddress,
      amount: amount,
    );
  }

  ProposeOrVoteMintTransaction proposeOrVoteMintTransaction({
    required List<int> transaction,
    required _i3.AccountId32 target,
    required BigInt amount,
  }) {
    return ProposeOrVoteMintTransaction(
      transaction: transaction,
      target: target,
      amount: amount,
    );
  }

  ProposeBurnTransactionOrAddSig proposeBurnTransactionOrAddSig({
    required BigInt transactionId,
    required List<int> target,
    required BigInt amount,
    required List<int> signature,
    required List<int> stellarPubKey,
    required BigInt sequenceNumber,
  }) {
    return ProposeBurnTransactionOrAddSig(
      transactionId: transactionId,
      target: target,
      amount: amount,
      signature: signature,
      stellarPubKey: stellarPubKey,
      sequenceNumber: sequenceNumber,
    );
  }

  SetBurnTransactionExecuted setBurnTransactionExecuted(
      {required BigInt transactionId}) {
    return SetBurnTransactionExecuted(transactionId: transactionId);
  }

  CreateRefundTransactionOrAddSig createRefundTransactionOrAddSig({
    required List<int> txHash,
    required List<int> target,
    required BigInt amount,
    required List<int> signature,
    required List<int> stellarPubKey,
    required BigInt sequenceNumber,
  }) {
    return CreateRefundTransactionOrAddSig(
      txHash: txHash,
      target: target,
      amount: amount,
      signature: signature,
      stellarPubKey: stellarPubKey,
      sequenceNumber: sequenceNumber,
    );
  }

  SetRefundTransactionExecuted setRefundTransactionExecuted(
      {required List<int> txHash}) {
    return SetRefundTransactionExecuted(txHash: txHash);
  }
}

class $CallCodec with _i1.Codec<Call> {
  const $CallCodec();

  @override
  Call decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return AddBridgeValidator._decode(input);
      case 1:
        return RemoveBridgeValidator._decode(input);
      case 2:
        return SetFeeAccount._decode(input);
      case 3:
        return SetWithdrawFee._decode(input);
      case 4:
        return SetDepositFee._decode(input);
      case 5:
        return SwapToStellar._decode(input);
      case 6:
        return ProposeOrVoteMintTransaction._decode(input);
      case 7:
        return ProposeBurnTransactionOrAddSig._decode(input);
      case 8:
        return SetBurnTransactionExecuted._decode(input);
      case 9:
        return CreateRefundTransactionOrAddSig._decode(input);
      case 10:
        return SetRefundTransactionExecuted._decode(input);
      default:
        throw Exception('Call: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Call value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case AddBridgeValidator:
        (value as AddBridgeValidator).encodeTo(output);
        break;
      case RemoveBridgeValidator:
        (value as RemoveBridgeValidator).encodeTo(output);
        break;
      case SetFeeAccount:
        (value as SetFeeAccount).encodeTo(output);
        break;
      case SetWithdrawFee:
        (value as SetWithdrawFee).encodeTo(output);
        break;
      case SetDepositFee:
        (value as SetDepositFee).encodeTo(output);
        break;
      case SwapToStellar:
        (value as SwapToStellar).encodeTo(output);
        break;
      case ProposeOrVoteMintTransaction:
        (value as ProposeOrVoteMintTransaction).encodeTo(output);
        break;
      case ProposeBurnTransactionOrAddSig:
        (value as ProposeBurnTransactionOrAddSig).encodeTo(output);
        break;
      case SetBurnTransactionExecuted:
        (value as SetBurnTransactionExecuted).encodeTo(output);
        break;
      case CreateRefundTransactionOrAddSig:
        (value as CreateRefundTransactionOrAddSig).encodeTo(output);
        break;
      case SetRefundTransactionExecuted:
        (value as SetRefundTransactionExecuted).encodeTo(output);
        break;
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Call value) {
    switch (value.runtimeType) {
      case AddBridgeValidator:
        return (value as AddBridgeValidator)._sizeHint();
      case RemoveBridgeValidator:
        return (value as RemoveBridgeValidator)._sizeHint();
      case SetFeeAccount:
        return (value as SetFeeAccount)._sizeHint();
      case SetWithdrawFee:
        return (value as SetWithdrawFee)._sizeHint();
      case SetDepositFee:
        return (value as SetDepositFee)._sizeHint();
      case SwapToStellar:
        return (value as SwapToStellar)._sizeHint();
      case ProposeOrVoteMintTransaction:
        return (value as ProposeOrVoteMintTransaction)._sizeHint();
      case ProposeBurnTransactionOrAddSig:
        return (value as ProposeBurnTransactionOrAddSig)._sizeHint();
      case SetBurnTransactionExecuted:
        return (value as SetBurnTransactionExecuted)._sizeHint();
      case CreateRefundTransactionOrAddSig:
        return (value as CreateRefundTransactionOrAddSig)._sizeHint();
      case SetRefundTransactionExecuted:
        return (value as SetRefundTransactionExecuted)._sizeHint();
      default:
        throw Exception(
            'Call: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class AddBridgeValidator extends Call {
  const AddBridgeValidator({required this.target});

  factory AddBridgeValidator._decode(_i1.Input input) {
    return AddBridgeValidator(target: const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i3.AccountId32 target;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'add_bridge_validator': {'target': target.toList()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(target);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      target,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is AddBridgeValidator &&
          _i4.listsEqual(
            other.target,
            target,
          );

  @override
  int get hashCode => target.hashCode;
}

class RemoveBridgeValidator extends Call {
  const RemoveBridgeValidator({required this.target});

  factory RemoveBridgeValidator._decode(_i1.Input input) {
    return RemoveBridgeValidator(
        target: const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i3.AccountId32 target;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'remove_bridge_validator': {'target': target.toList()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(target);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      target,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RemoveBridgeValidator &&
          _i4.listsEqual(
            other.target,
            target,
          );

  @override
  int get hashCode => target.hashCode;
}

class SetFeeAccount extends Call {
  const SetFeeAccount({required this.target});

  factory SetFeeAccount._decode(_i1.Input input) {
    return SetFeeAccount(target: const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i3.AccountId32 target;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'set_fee_account': {'target': target.toList()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(target);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      target,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetFeeAccount &&
          _i4.listsEqual(
            other.target,
            target,
          );

  @override
  int get hashCode => target.hashCode;
}

class SetWithdrawFee extends Call {
  const SetWithdrawFee({required this.amount});

  factory SetWithdrawFee._decode(_i1.Input input) {
    return SetWithdrawFee(amount: _i1.U64Codec.codec.decode(input));
  }

  /// u64
  final BigInt amount;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'set_withdraw_fee': {'amount': amount}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(amount);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      amount,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetWithdrawFee && other.amount == amount;

  @override
  int get hashCode => amount.hashCode;
}

class SetDepositFee extends Call {
  const SetDepositFee({required this.amount});

  factory SetDepositFee._decode(_i1.Input input) {
    return SetDepositFee(amount: _i1.U64Codec.codec.decode(input));
  }

  /// u64
  final BigInt amount;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'set_deposit_fee': {'amount': amount}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(amount);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      amount,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetDepositFee && other.amount == amount;

  @override
  int get hashCode => amount.hashCode;
}

class SwapToStellar extends Call {
  const SwapToStellar({
    required this.targetStellarAddress,
    required this.amount,
  });

  factory SwapToStellar._decode(_i1.Input input) {
    return SwapToStellar(
      targetStellarAddress: _i1.U8SequenceCodec.codec.decode(input),
      amount: _i1.U128Codec.codec.decode(input),
    );
  }

  /// Vec<u8>
  final List<int> targetStellarAddress;

  /// BalanceOf<T>
  final BigInt amount;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'swap_to_stellar': {
          'targetStellarAddress': targetStellarAddress,
          'amount': amount,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(targetStellarAddress);
    size = size + _i1.U128Codec.codec.sizeHint(amount);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      5,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      targetStellarAddress,
      output,
    );
    _i1.U128Codec.codec.encodeTo(
      amount,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SwapToStellar &&
          _i4.listsEqual(
            other.targetStellarAddress,
            targetStellarAddress,
          ) &&
          other.amount == amount;

  @override
  int get hashCode => Object.hash(
        targetStellarAddress,
        amount,
      );
}

class ProposeOrVoteMintTransaction extends Call {
  const ProposeOrVoteMintTransaction({
    required this.transaction,
    required this.target,
    required this.amount,
  });

  factory ProposeOrVoteMintTransaction._decode(_i1.Input input) {
    return ProposeOrVoteMintTransaction(
      transaction: _i1.U8SequenceCodec.codec.decode(input),
      target: const _i1.U8ArrayCodec(32).decode(input),
      amount: _i1.U64Codec.codec.decode(input),
    );
  }

  /// Vec<u8>
  final List<int> transaction;

  /// T::AccountId
  final _i3.AccountId32 target;

  /// u64
  final BigInt amount;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'propose_or_vote_mint_transaction': {
          'transaction': transaction,
          'target': target.toList(),
          'amount': amount,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(transaction);
    size = size + const _i3.AccountId32Codec().sizeHint(target);
    size = size + _i1.U64Codec.codec.sizeHint(amount);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      6,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      transaction,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      target,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      amount,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ProposeOrVoteMintTransaction &&
          _i4.listsEqual(
            other.transaction,
            transaction,
          ) &&
          _i4.listsEqual(
            other.target,
            target,
          ) &&
          other.amount == amount;

  @override
  int get hashCode => Object.hash(
        transaction,
        target,
        amount,
      );
}

class ProposeBurnTransactionOrAddSig extends Call {
  const ProposeBurnTransactionOrAddSig({
    required this.transactionId,
    required this.target,
    required this.amount,
    required this.signature,
    required this.stellarPubKey,
    required this.sequenceNumber,
  });

  factory ProposeBurnTransactionOrAddSig._decode(_i1.Input input) {
    return ProposeBurnTransactionOrAddSig(
      transactionId: _i1.U64Codec.codec.decode(input),
      target: _i1.U8SequenceCodec.codec.decode(input),
      amount: _i1.U64Codec.codec.decode(input),
      signature: _i1.U8SequenceCodec.codec.decode(input),
      stellarPubKey: _i1.U8SequenceCodec.codec.decode(input),
      sequenceNumber: _i1.U64Codec.codec.decode(input),
    );
  }

  /// u64
  final BigInt transactionId;

  /// Vec<u8>
  final List<int> target;

  /// u64
  final BigInt amount;

  /// Vec<u8>
  final List<int> signature;

  /// Vec<u8>
  final List<int> stellarPubKey;

  /// u64
  final BigInt sequenceNumber;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'propose_burn_transaction_or_add_sig': {
          'transactionId': transactionId,
          'target': target,
          'amount': amount,
          'signature': signature,
          'stellarPubKey': stellarPubKey,
          'sequenceNumber': sequenceNumber,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(transactionId);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(target);
    size = size + _i1.U64Codec.codec.sizeHint(amount);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(signature);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(stellarPubKey);
    size = size + _i1.U64Codec.codec.sizeHint(sequenceNumber);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      7,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      transactionId,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      target,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      amount,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      signature,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      stellarPubKey,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      sequenceNumber,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is ProposeBurnTransactionOrAddSig &&
          other.transactionId == transactionId &&
          _i4.listsEqual(
            other.target,
            target,
          ) &&
          other.amount == amount &&
          _i4.listsEqual(
            other.signature,
            signature,
          ) &&
          _i4.listsEqual(
            other.stellarPubKey,
            stellarPubKey,
          ) &&
          other.sequenceNumber == sequenceNumber;

  @override
  int get hashCode => Object.hash(
        transactionId,
        target,
        amount,
        signature,
        stellarPubKey,
        sequenceNumber,
      );
}

class SetBurnTransactionExecuted extends Call {
  const SetBurnTransactionExecuted({required this.transactionId});

  factory SetBurnTransactionExecuted._decode(_i1.Input input) {
    return SetBurnTransactionExecuted(
        transactionId: _i1.U64Codec.codec.decode(input));
  }

  /// u64
  final BigInt transactionId;

  @override
  Map<String, Map<String, BigInt>> toJson() => {
        'set_burn_transaction_executed': {'transactionId': transactionId}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U64Codec.codec.sizeHint(transactionId);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      8,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      transactionId,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetBurnTransactionExecuted &&
          other.transactionId == transactionId;

  @override
  int get hashCode => transactionId.hashCode;
}

class CreateRefundTransactionOrAddSig extends Call {
  const CreateRefundTransactionOrAddSig({
    required this.txHash,
    required this.target,
    required this.amount,
    required this.signature,
    required this.stellarPubKey,
    required this.sequenceNumber,
  });

  factory CreateRefundTransactionOrAddSig._decode(_i1.Input input) {
    return CreateRefundTransactionOrAddSig(
      txHash: _i1.U8SequenceCodec.codec.decode(input),
      target: _i1.U8SequenceCodec.codec.decode(input),
      amount: _i1.U64Codec.codec.decode(input),
      signature: _i1.U8SequenceCodec.codec.decode(input),
      stellarPubKey: _i1.U8SequenceCodec.codec.decode(input),
      sequenceNumber: _i1.U64Codec.codec.decode(input),
    );
  }

  /// Vec<u8>
  final List<int> txHash;

  /// Vec<u8>
  final List<int> target;

  /// u64
  final BigInt amount;

  /// Vec<u8>
  final List<int> signature;

  /// Vec<u8>
  final List<int> stellarPubKey;

  /// u64
  final BigInt sequenceNumber;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'create_refund_transaction_or_add_sig': {
          'txHash': txHash,
          'target': target,
          'amount': amount,
          'signature': signature,
          'stellarPubKey': stellarPubKey,
          'sequenceNumber': sequenceNumber,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(txHash);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(target);
    size = size + _i1.U64Codec.codec.sizeHint(amount);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(signature);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(stellarPubKey);
    size = size + _i1.U64Codec.codec.sizeHint(sequenceNumber);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      9,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      txHash,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      target,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      amount,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      signature,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      stellarPubKey,
      output,
    );
    _i1.U64Codec.codec.encodeTo(
      sequenceNumber,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is CreateRefundTransactionOrAddSig &&
          _i4.listsEqual(
            other.txHash,
            txHash,
          ) &&
          _i4.listsEqual(
            other.target,
            target,
          ) &&
          other.amount == amount &&
          _i4.listsEqual(
            other.signature,
            signature,
          ) &&
          _i4.listsEqual(
            other.stellarPubKey,
            stellarPubKey,
          ) &&
          other.sequenceNumber == sequenceNumber;

  @override
  int get hashCode => Object.hash(
        txHash,
        target,
        amount,
        signature,
        stellarPubKey,
        sequenceNumber,
      );
}

class SetRefundTransactionExecuted extends Call {
  const SetRefundTransactionExecuted({required this.txHash});

  factory SetRefundTransactionExecuted._decode(_i1.Input input) {
    return SetRefundTransactionExecuted(
        txHash: _i1.U8SequenceCodec.codec.decode(input));
  }

  /// Vec<u8>
  final List<int> txHash;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'set_refund_transaction_executed': {'txHash': txHash}
      };

  int _sizeHint() {
    int size = 1;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(txHash);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      10,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      txHash,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is SetRefundTransactionExecuted &&
          _i4.listsEqual(
            other.txHash,
            txHash,
          );

  @override
  int get hashCode => txHash.hashCode;
}
