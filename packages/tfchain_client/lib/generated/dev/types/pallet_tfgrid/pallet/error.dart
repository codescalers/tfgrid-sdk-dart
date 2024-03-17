// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

///
///			Custom [dispatch errors](https://docs.substrate.io/main-docs/build/events-errors/)
///			of this pallet.
///
enum Error {
  noneValue('NoneValue', 0),
  storageOverflow('StorageOverflow', 1),
  cannotCreateNode('CannotCreateNode', 2),
  nodeNotExists('NodeNotExists', 3),
  nodeWithTwinIdExists('NodeWithTwinIdExists', 4),
  cannotDeleteNode('CannotDeleteNode', 5),
  nodeDeleteNotAuthorized('NodeDeleteNotAuthorized', 6),
  nodeUpdateNotAuthorized('NodeUpdateNotAuthorized', 7),
  farmExists('FarmExists', 8),
  farmNotExists('FarmNotExists', 9),
  cannotCreateFarmWrongTwin('CannotCreateFarmWrongTwin', 10),
  cannotUpdateFarmWrongTwin('CannotUpdateFarmWrongTwin', 11),
  cannotDeleteFarm('CannotDeleteFarm', 12),
  cannotDeleteFarmWithPublicIPs('CannotDeleteFarmWithPublicIPs', 13),
  cannotDeleteFarmWithNodesAssigned('CannotDeleteFarmWithNodesAssigned', 14),
  cannotDeleteFarmWrongTwin('CannotDeleteFarmWrongTwin', 15),
  ipExists('IpExists', 16),
  ipNotExists('IpNotExists', 17),
  entityWithNameExists('EntityWithNameExists', 18),
  entityWithPubkeyExists('EntityWithPubkeyExists', 19),
  entityNotExists('EntityNotExists', 20),
  entitySignatureDoesNotMatch('EntitySignatureDoesNotMatch', 21),
  entityWithSignatureAlreadyExists('EntityWithSignatureAlreadyExists', 22),
  cannotUpdateEntity('CannotUpdateEntity', 23),
  cannotDeleteEntity('CannotDeleteEntity', 24),
  signatureLengthIsIncorrect('SignatureLengthIsIncorrect', 25),
  twinExists('TwinExists', 26),
  twinNotExists('TwinNotExists', 27),
  twinWithPubkeyExists('TwinWithPubkeyExists', 28),
  cannotCreateTwin('CannotCreateTwin', 29),
  unauthorizedToUpdateTwin('UnauthorizedToUpdateTwin', 30),
  twinCannotBoundToItself('TwinCannotBoundToItself', 31),
  pricingPolicyExists('PricingPolicyExists', 32),
  pricingPolicyNotExists('PricingPolicyNotExists', 33),
  pricingPolicyWithDifferentIdExists('PricingPolicyWithDifferentIdExists', 34),
  certificationCodeExists('CertificationCodeExists', 35),
  farmingPolicyAlreadyExists('FarmingPolicyAlreadyExists', 36),
  farmPayoutAdressAlreadyRegistered('FarmPayoutAdressAlreadyRegistered', 37),
  farmerDoesNotHaveEnoughFunds('FarmerDoesNotHaveEnoughFunds', 38),
  userDidNotSignTermsAndConditions('UserDidNotSignTermsAndConditions', 39),
  farmerDidNotSignTermsAndConditions('FarmerDidNotSignTermsAndConditions', 40),
  farmerNotAuthorized('FarmerNotAuthorized', 41),
  invalidFarmName('InvalidFarmName', 42),
  alreadyCertifier('AlreadyCertifier', 43),
  notCertifier('NotCertifier', 44),
  notAllowedToCertifyNode('NotAllowedToCertifyNode', 45),
  farmingPolicyNotExists('FarmingPolicyNotExists', 46),
  relayTooShort('RelayTooShort', 47),
  relayTooLong('RelayTooLong', 48),
  invalidRelay('InvalidRelay', 49),
  farmNameTooShort('FarmNameTooShort', 50),
  farmNameTooLong('FarmNameTooLong', 51),
  invalidPublicIP('InvalidPublicIP', 52),
  publicIPTooShort('PublicIPTooShort', 53),
  publicIPTooLong('PublicIPTooLong', 54),
  gatewayIPTooShort('GatewayIPTooShort', 55),
  gatewayIPTooLong('GatewayIPTooLong', 56),
  iP4TooShort('IP4TooShort', 57),
  iP4TooLong('IP4TooLong', 58),
  invalidIP4('InvalidIP4', 59),
  gW4TooShort('GW4TooShort', 60),
  gW4TooLong('GW4TooLong', 61),
  invalidGW4('InvalidGW4', 62),
  iP6TooShort('IP6TooShort', 63),
  iP6TooLong('IP6TooLong', 64),
  invalidIP6('InvalidIP6', 65),
  gW6TooShort('GW6TooShort', 66),
  gW6TooLong('GW6TooLong', 67),
  invalidGW6('InvalidGW6', 68),
  domainTooShort('DomainTooShort', 69),
  domainTooLong('DomainTooLong', 70),
  invalidDomain('InvalidDomain', 71),
  methodIsDeprecated('MethodIsDeprecated', 72),
  interfaceNameTooShort('InterfaceNameTooShort', 73),
  interfaceNameTooLong('InterfaceNameTooLong', 74),
  invalidInterfaceName('InvalidInterfaceName', 75),
  interfaceMacTooShort('InterfaceMacTooShort', 76),
  interfaceMacTooLong('InterfaceMacTooLong', 77),
  invalidMacAddress('InvalidMacAddress', 78),
  interfaceIpTooShort('InterfaceIpTooShort', 79),
  interfaceIpTooLong('InterfaceIpTooLong', 80),
  invalidInterfaceIP('InvalidInterfaceIP', 81),
  invalidZosVersion('InvalidZosVersion', 82),
  farmingPolicyExpired('FarmingPolicyExpired', 83),
  invalidHRUInput('InvalidHRUInput', 84),
  invalidSRUInput('InvalidSRUInput', 85),
  invalidCRUInput('InvalidCRUInput', 86),
  invalidMRUInput('InvalidMRUInput', 87),
  latitudeInputTooShort('LatitudeInputTooShort', 88),
  latitudeInputTooLong('LatitudeInputTooLong', 89),
  invalidLatitudeInput('InvalidLatitudeInput', 90),
  longitudeInputTooShort('LongitudeInputTooShort', 91),
  longitudeInputTooLong('LongitudeInputTooLong', 92),
  invalidLongitudeInput('InvalidLongitudeInput', 93),
  countryNameTooShort('CountryNameTooShort', 94),
  countryNameTooLong('CountryNameTooLong', 95),
  invalidCountryName('InvalidCountryName', 96),
  cityNameTooShort('CityNameTooShort', 97),
  cityNameTooLong('CityNameTooLong', 98),
  invalidCityName('InvalidCityName', 99),
  invalidCountryCityPair('InvalidCountryCityPair', 100),
  serialNumberTooShort('SerialNumberTooShort', 101),
  serialNumberTooLong('SerialNumberTooLong', 102),
  invalidSerialNumber('InvalidSerialNumber', 103),
  documentLinkInputTooShort('DocumentLinkInputTooShort', 104),
  documentLinkInputTooLong('DocumentLinkInputTooLong', 105),
  invalidDocumentLinkInput('InvalidDocumentLinkInput', 106),
  documentHashInputTooShort('DocumentHashInputTooShort', 107),
  documentHashInputTooLong('DocumentHashInputTooLong', 108),
  invalidDocumentHashInput('InvalidDocumentHashInput', 109),
  invalidPublicConfig('InvalidPublicConfig', 110),
  unauthorizedToChangePowerTarget('UnauthorizedToChangePowerTarget', 111),
  invalidRelayAddress('InvalidRelayAddress', 112),
  invalidTimestampHint('InvalidTimestampHint', 113);

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
        return Error.noneValue;
      case 1:
        return Error.storageOverflow;
      case 2:
        return Error.cannotCreateNode;
      case 3:
        return Error.nodeNotExists;
      case 4:
        return Error.nodeWithTwinIdExists;
      case 5:
        return Error.cannotDeleteNode;
      case 6:
        return Error.nodeDeleteNotAuthorized;
      case 7:
        return Error.nodeUpdateNotAuthorized;
      case 8:
        return Error.farmExists;
      case 9:
        return Error.farmNotExists;
      case 10:
        return Error.cannotCreateFarmWrongTwin;
      case 11:
        return Error.cannotUpdateFarmWrongTwin;
      case 12:
        return Error.cannotDeleteFarm;
      case 13:
        return Error.cannotDeleteFarmWithPublicIPs;
      case 14:
        return Error.cannotDeleteFarmWithNodesAssigned;
      case 15:
        return Error.cannotDeleteFarmWrongTwin;
      case 16:
        return Error.ipExists;
      case 17:
        return Error.ipNotExists;
      case 18:
        return Error.entityWithNameExists;
      case 19:
        return Error.entityWithPubkeyExists;
      case 20:
        return Error.entityNotExists;
      case 21:
        return Error.entitySignatureDoesNotMatch;
      case 22:
        return Error.entityWithSignatureAlreadyExists;
      case 23:
        return Error.cannotUpdateEntity;
      case 24:
        return Error.cannotDeleteEntity;
      case 25:
        return Error.signatureLengthIsIncorrect;
      case 26:
        return Error.twinExists;
      case 27:
        return Error.twinNotExists;
      case 28:
        return Error.twinWithPubkeyExists;
      case 29:
        return Error.cannotCreateTwin;
      case 30:
        return Error.unauthorizedToUpdateTwin;
      case 31:
        return Error.twinCannotBoundToItself;
      case 32:
        return Error.pricingPolicyExists;
      case 33:
        return Error.pricingPolicyNotExists;
      case 34:
        return Error.pricingPolicyWithDifferentIdExists;
      case 35:
        return Error.certificationCodeExists;
      case 36:
        return Error.farmingPolicyAlreadyExists;
      case 37:
        return Error.farmPayoutAdressAlreadyRegistered;
      case 38:
        return Error.farmerDoesNotHaveEnoughFunds;
      case 39:
        return Error.userDidNotSignTermsAndConditions;
      case 40:
        return Error.farmerDidNotSignTermsAndConditions;
      case 41:
        return Error.farmerNotAuthorized;
      case 42:
        return Error.invalidFarmName;
      case 43:
        return Error.alreadyCertifier;
      case 44:
        return Error.notCertifier;
      case 45:
        return Error.notAllowedToCertifyNode;
      case 46:
        return Error.farmingPolicyNotExists;
      case 47:
        return Error.relayTooShort;
      case 48:
        return Error.relayTooLong;
      case 49:
        return Error.invalidRelay;
      case 50:
        return Error.farmNameTooShort;
      case 51:
        return Error.farmNameTooLong;
      case 52:
        return Error.invalidPublicIP;
      case 53:
        return Error.publicIPTooShort;
      case 54:
        return Error.publicIPTooLong;
      case 55:
        return Error.gatewayIPTooShort;
      case 56:
        return Error.gatewayIPTooLong;
      case 57:
        return Error.iP4TooShort;
      case 58:
        return Error.iP4TooLong;
      case 59:
        return Error.invalidIP4;
      case 60:
        return Error.gW4TooShort;
      case 61:
        return Error.gW4TooLong;
      case 62:
        return Error.invalidGW4;
      case 63:
        return Error.iP6TooShort;
      case 64:
        return Error.iP6TooLong;
      case 65:
        return Error.invalidIP6;
      case 66:
        return Error.gW6TooShort;
      case 67:
        return Error.gW6TooLong;
      case 68:
        return Error.invalidGW6;
      case 69:
        return Error.domainTooShort;
      case 70:
        return Error.domainTooLong;
      case 71:
        return Error.invalidDomain;
      case 72:
        return Error.methodIsDeprecated;
      case 73:
        return Error.interfaceNameTooShort;
      case 74:
        return Error.interfaceNameTooLong;
      case 75:
        return Error.invalidInterfaceName;
      case 76:
        return Error.interfaceMacTooShort;
      case 77:
        return Error.interfaceMacTooLong;
      case 78:
        return Error.invalidMacAddress;
      case 79:
        return Error.interfaceIpTooShort;
      case 80:
        return Error.interfaceIpTooLong;
      case 81:
        return Error.invalidInterfaceIP;
      case 82:
        return Error.invalidZosVersion;
      case 83:
        return Error.farmingPolicyExpired;
      case 84:
        return Error.invalidHRUInput;
      case 85:
        return Error.invalidSRUInput;
      case 86:
        return Error.invalidCRUInput;
      case 87:
        return Error.invalidMRUInput;
      case 88:
        return Error.latitudeInputTooShort;
      case 89:
        return Error.latitudeInputTooLong;
      case 90:
        return Error.invalidLatitudeInput;
      case 91:
        return Error.longitudeInputTooShort;
      case 92:
        return Error.longitudeInputTooLong;
      case 93:
        return Error.invalidLongitudeInput;
      case 94:
        return Error.countryNameTooShort;
      case 95:
        return Error.countryNameTooLong;
      case 96:
        return Error.invalidCountryName;
      case 97:
        return Error.cityNameTooShort;
      case 98:
        return Error.cityNameTooLong;
      case 99:
        return Error.invalidCityName;
      case 100:
        return Error.invalidCountryCityPair;
      case 101:
        return Error.serialNumberTooShort;
      case 102:
        return Error.serialNumberTooLong;
      case 103:
        return Error.invalidSerialNumber;
      case 104:
        return Error.documentLinkInputTooShort;
      case 105:
        return Error.documentLinkInputTooLong;
      case 106:
        return Error.invalidDocumentLinkInput;
      case 107:
        return Error.documentHashInputTooShort;
      case 108:
        return Error.documentHashInputTooLong;
      case 109:
        return Error.invalidDocumentHashInput;
      case 110:
        return Error.invalidPublicConfig;
      case 111:
        return Error.unauthorizedToChangePowerTarget;
      case 112:
        return Error.invalidRelayAddress;
      case 113:
        return Error.invalidTimestampHint;
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
