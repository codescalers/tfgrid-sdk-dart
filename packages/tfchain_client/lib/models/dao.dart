import 'package:moment_dart/moment_dart.dart';
import 'package:tfchain_client/generated/dev/types/pallet_dao/proposal/vote_weight.dart';

class Proposal {
  int threshold;
  List<VoteWeight> ayes;
  List<VoteWeight> nayes;
  List<List<int>> vetos;
  Moment end;
  String hash;
  String action;
  String description;
  String link;
  int ayesProgress;
  int nayesProgress;

  Proposal({
    required this.threshold,
    required this.ayes,
    required this.nayes,
    required this.vetos,
    required this.end,
    required this.hash,
    required this.action,
    required this.description,
    required this.link,
    required this.ayesProgress,
    required this.nayesProgress,
  });
}

class ProposalRemark {
  String remark;

  ProposalRemark({required this.remark});
}

class DaoVoteOptions {
  String address;
  int farmId;
  String hash;
  bool approve;

  DaoVoteOptions(
      {required this.address,
      required this.farmId,
      required this.hash,
      required this.approve,
      s});
}
