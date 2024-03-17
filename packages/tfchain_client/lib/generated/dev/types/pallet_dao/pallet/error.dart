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
  farmNotExists('FarmNotExists', 2),
  notCouncilMember('NotCouncilMember', 3),
  wrongProposalLength('WrongProposalLength', 4),
  duplicateProposal('DuplicateProposal', 5),
  notAuthorizedToVote('NotAuthorizedToVote', 6),
  proposalMissing('ProposalMissing', 7),
  wrongIndex('WrongIndex', 8),
  duplicateVote('DuplicateVote', 9),
  duplicateVeto('DuplicateVeto', 10),
  wrongProposalWeight('WrongProposalWeight', 11),
  tooEarly('TooEarly', 12),
  timeLimitReached('TimeLimitReached', 13),
  ongoingVoteAndTresholdStillNotMet('OngoingVoteAndTresholdStillNotMet', 14),
  farmHasNoNodes('FarmHasNoNodes', 15),
  invalidProposalDuration('InvalidProposalDuration', 16);

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
        return Error.farmNotExists;
      case 3:
        return Error.notCouncilMember;
      case 4:
        return Error.wrongProposalLength;
      case 5:
        return Error.duplicateProposal;
      case 6:
        return Error.notAuthorizedToVote;
      case 7:
        return Error.proposalMissing;
      case 8:
        return Error.wrongIndex;
      case 9:
        return Error.duplicateVote;
      case 10:
        return Error.duplicateVeto;
      case 11:
        return Error.wrongProposalWeight;
      case 12:
        return Error.tooEarly;
      case 13:
        return Error.timeLimitReached;
      case 14:
        return Error.ongoingVoteAndTresholdStillNotMet;
      case 15:
        return Error.farmHasNoNodes;
      case 16:
        return Error.invalidProposalDuration;
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
