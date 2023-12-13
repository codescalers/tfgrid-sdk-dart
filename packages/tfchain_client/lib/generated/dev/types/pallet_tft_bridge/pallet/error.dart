// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

///
///			Custom [dispatch errors](https://docs.substrate.io/main-docs/build/events-errors/)
///			of this pallet.
///
enum Error {
  validatorExists('ValidatorExists', 0),
  validatorNotExists('ValidatorNotExists', 1),
  transactionValidatorExists('TransactionValidatorExists', 2),
  transactionValidatorNotExists('TransactionValidatorNotExists', 3),
  mintTransactionExists('MintTransactionExists', 4),
  mintTransactionAlreadyExecuted('MintTransactionAlreadyExecuted', 5),
  mintTransactionNotExists('MintTransactionNotExists', 6),
  burnTransactionExists('BurnTransactionExists', 7),
  burnTransactionNotExists('BurnTransactionNotExists', 8),
  burnSignatureExists('BurnSignatureExists', 9),
  enoughBurnSignaturesPresent('EnoughBurnSignaturesPresent', 10),
  refundSignatureExists('RefundSignatureExists', 11),
  burnTransactionAlreadyExecuted('BurnTransactionAlreadyExecuted', 12),
  refundTransactionNotExists('RefundTransactionNotExists', 13),
  refundTransactionAlreadyExecuted('RefundTransactionAlreadyExecuted', 14),
  enoughRefundSignaturesPresent('EnoughRefundSignaturesPresent', 15),
  notEnoughBalanceToSwap('NotEnoughBalanceToSwap', 16),
  amountIsLessThanWithdrawFee('AmountIsLessThanWithdrawFee', 17),
  amountIsLessThanDepositFee('AmountIsLessThanDepositFee', 18),
  wrongParametersProvided('WrongParametersProvided', 19),
  invalidStellarPublicKey('InvalidStellarPublicKey', 20);

  const Error(
    this.variantName,
    this.codecIndex,
  );

  factory Error.decode(_i1.Input input) {
    return codec.decode(input);
  }

  final String variantName;

  final int codecIndex;

  static const $ErrorCodec codec = $ErrorCodec();

  String toJson() => variantName;
  _i2.Uint8List encode() {
    return codec.encode(this);
  }
}

class $ErrorCodec with _i1.Codec<Error> {
  const $ErrorCodec();

  @override
  Error decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return Error.validatorExists;
      case 1:
        return Error.validatorNotExists;
      case 2:
        return Error.transactionValidatorExists;
      case 3:
        return Error.transactionValidatorNotExists;
      case 4:
        return Error.mintTransactionExists;
      case 5:
        return Error.mintTransactionAlreadyExecuted;
      case 6:
        return Error.mintTransactionNotExists;
      case 7:
        return Error.burnTransactionExists;
      case 8:
        return Error.burnTransactionNotExists;
      case 9:
        return Error.burnSignatureExists;
      case 10:
        return Error.enoughBurnSignaturesPresent;
      case 11:
        return Error.refundSignatureExists;
      case 12:
        return Error.burnTransactionAlreadyExecuted;
      case 13:
        return Error.refundTransactionNotExists;
      case 14:
        return Error.refundTransactionAlreadyExecuted;
      case 15:
        return Error.enoughRefundSignaturesPresent;
      case 16:
        return Error.notEnoughBalanceToSwap;
      case 17:
        return Error.amountIsLessThanWithdrawFee;
      case 18:
        return Error.amountIsLessThanDepositFee;
      case 19:
        return Error.wrongParametersProvided;
      case 20:
        return Error.invalidStellarPublicKey;
      default:
        throw Exception('Error: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Error value,
    _i1.Output output,
  ) {
    _i1.U8Codec.codec.encodeTo(
      value.codecIndex,
      output,
    );
  }
}
