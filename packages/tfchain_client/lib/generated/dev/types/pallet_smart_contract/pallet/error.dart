// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

///
///			Custom [dispatch errors](https://docs.substrate.io/main-docs/build/events-errors/)
///			of this pallet.
///
enum Error {
  twinNotExists('TwinNotExists', 0),
  nodeNotExists('NodeNotExists', 1),
  farmNotExists('FarmNotExists', 2),
  farmHasNotEnoughPublicIPs('FarmHasNotEnoughPublicIPs', 3),
  farmHasNotEnoughPublicIPsFree('FarmHasNotEnoughPublicIPsFree', 4),
  failedToReserveIP('FailedToReserveIP', 5),
  failedToFreeIPs('FailedToFreeIPs', 6),
  contractNotExists('ContractNotExists', 7),
  twinNotAuthorizedToUpdateContract('TwinNotAuthorizedToUpdateContract', 8),
  twinNotAuthorizedToCancelContract('TwinNotAuthorizedToCancelContract', 9),
  nodeNotAuthorizedToDeployContract('NodeNotAuthorizedToDeployContract', 10),
  nodeNotAuthorizedToComputeReport('NodeNotAuthorizedToComputeReport', 11),
  pricingPolicyNotExists('PricingPolicyNotExists', 12),
  contractIsNotUnique('ContractIsNotUnique', 13),
  contractWrongBillingLoopIndex('ContractWrongBillingLoopIndex', 14),
  nameExists('NameExists', 15),
  nameNotValid('NameNotValid', 16),
  invalidContractType('InvalidContractType', 17),
  tFTPriceValueError('TFTPriceValueError', 18),
  notEnoughResourcesOnNode('NotEnoughResourcesOnNode', 19),
  nodeNotAuthorizedToReportResources('NodeNotAuthorizedToReportResources', 20),
  methodIsDeprecated('MethodIsDeprecated', 21),
  nodeHasActiveContracts('NodeHasActiveContracts', 22),
  nodeHasRentContract('NodeHasRentContract', 23),
  farmIsNotDedicated('FarmIsNotDedicated', 24),
  nodeNotAvailableToDeploy('NodeNotAvailableToDeploy', 25),
  cannotUpdateContractInGraceState('CannotUpdateContractInGraceState', 26),
  numOverflow('NumOverflow', 27),
  offchainSignedTxCannotSign('OffchainSignedTxCannotSign', 28),
  offchainSignedTxAlreadySent('OffchainSignedTxAlreadySent', 29),
  offchainSignedTxNoLocalAccountAvailable(
      'OffchainSignedTxNoLocalAccountAvailable', 30),
  nameContractNameTooShort('NameContractNameTooShort', 31),
  nameContractNameTooLong('NameContractNameTooLong', 32),
  invalidProviderConfiguration('InvalidProviderConfiguration', 33),
  noSuchSolutionProvider('NoSuchSolutionProvider', 34),
  solutionProviderNotApproved('SolutionProviderNotApproved', 35),
  twinNotAuthorized('TwinNotAuthorized', 36),
  serviceContractNotExists('ServiceContractNotExists', 37),
  serviceContractCreationNotAllowed('ServiceContractCreationNotAllowed', 38),
  serviceContractModificationNotAllowed(
      'ServiceContractModificationNotAllowed', 39),
  serviceContractApprovalNotAllowed('ServiceContractApprovalNotAllowed', 40),
  serviceContractRejectionNotAllowed('ServiceContractRejectionNotAllowed', 41),
  serviceContractBillingNotApprovedByBoth(
      'ServiceContractBillingNotApprovedByBoth', 42),
  serviceContractBillingVariableAmountTooHigh(
      'ServiceContractBillingVariableAmountTooHigh', 43),
  serviceContractBillMetadataTooLong('ServiceContractBillMetadataTooLong', 44),
  serviceContractMetadataTooLong('ServiceContractMetadataTooLong', 45),
  serviceContractNotEnoughFundsToPayBill(
      'ServiceContractNotEnoughFundsToPayBill', 46),
  canOnlyIncreaseFrequency('CanOnlyIncreaseFrequency', 47),
  isNotAnAuthority('IsNotAnAuthority', 48),
  wrongAuthority('WrongAuthority', 49),
  unauthorizedToChangeSolutionProviderId(
      'UnauthorizedToChangeSolutionProviderId', 50),
  unauthorizedToSetExtraFee('UnauthorizedToSetExtraFee', 51);

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
        return Error.twinNotExists;
      case 1:
        return Error.nodeNotExists;
      case 2:
        return Error.farmNotExists;
      case 3:
        return Error.farmHasNotEnoughPublicIPs;
      case 4:
        return Error.farmHasNotEnoughPublicIPsFree;
      case 5:
        return Error.failedToReserveIP;
      case 6:
        return Error.failedToFreeIPs;
      case 7:
        return Error.contractNotExists;
      case 8:
        return Error.twinNotAuthorizedToUpdateContract;
      case 9:
        return Error.twinNotAuthorizedToCancelContract;
      case 10:
        return Error.nodeNotAuthorizedToDeployContract;
      case 11:
        return Error.nodeNotAuthorizedToComputeReport;
      case 12:
        return Error.pricingPolicyNotExists;
      case 13:
        return Error.contractIsNotUnique;
      case 14:
        return Error.contractWrongBillingLoopIndex;
      case 15:
        return Error.nameExists;
      case 16:
        return Error.nameNotValid;
      case 17:
        return Error.invalidContractType;
      case 18:
        return Error.tFTPriceValueError;
      case 19:
        return Error.notEnoughResourcesOnNode;
      case 20:
        return Error.nodeNotAuthorizedToReportResources;
      case 21:
        return Error.methodIsDeprecated;
      case 22:
        return Error.nodeHasActiveContracts;
      case 23:
        return Error.nodeHasRentContract;
      case 24:
        return Error.farmIsNotDedicated;
      case 25:
        return Error.nodeNotAvailableToDeploy;
      case 26:
        return Error.cannotUpdateContractInGraceState;
      case 27:
        return Error.numOverflow;
      case 28:
        return Error.offchainSignedTxCannotSign;
      case 29:
        return Error.offchainSignedTxAlreadySent;
      case 30:
        return Error.offchainSignedTxNoLocalAccountAvailable;
      case 31:
        return Error.nameContractNameTooShort;
      case 32:
        return Error.nameContractNameTooLong;
      case 33:
        return Error.invalidProviderConfiguration;
      case 34:
        return Error.noSuchSolutionProvider;
      case 35:
        return Error.solutionProviderNotApproved;
      case 36:
        return Error.twinNotAuthorized;
      case 37:
        return Error.serviceContractNotExists;
      case 38:
        return Error.serviceContractCreationNotAllowed;
      case 39:
        return Error.serviceContractModificationNotAllowed;
      case 40:
        return Error.serviceContractApprovalNotAllowed;
      case 41:
        return Error.serviceContractRejectionNotAllowed;
      case 42:
        return Error.serviceContractBillingNotApprovedByBoth;
      case 43:
        return Error.serviceContractBillingVariableAmountTooHigh;
      case 44:
        return Error.serviceContractBillMetadataTooLong;
      case 45:
        return Error.serviceContractMetadataTooLong;
      case 46:
        return Error.serviceContractNotEnoughFundsToPayBill;
      case 47:
        return Error.canOnlyIncreaseFrequency;
      case 48:
        return Error.isNotAnAuthority;
      case 49:
        return Error.wrongAuthority;
      case 50:
        return Error.unauthorizedToChangeSolutionProviderId;
      case 51:
        return Error.unauthorizedToSetExtraFee;
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
