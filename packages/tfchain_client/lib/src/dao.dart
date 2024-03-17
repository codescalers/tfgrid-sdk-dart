import 'package:moment_dart/moment_dart.dart';
import 'package:tfchain_client/generated/dev/types/pallet_dao/proposal/dao_proposal.dart';
import 'package:tfchain_client/generated/dev/types/pallet_dao/proposal/dao_votes.dart';
import 'package:tfchain_client/generated/dev/types/pallet_dao/proposal/vote_weight.dart';
import 'package:tfchain_client/generated/dev/types/tfchain_runtime/runtime_call.dart';
import 'package:tfchain_client/models/dao.dart';
import 'package:tfchain_client/tfchain_client.dart';

class QueryDao {
  final QueryClient client;
  QueryDao(this.client);

  Future<Map<String, List<Proposal>>> get() async {
    final hashesJson = await client.api.query.dao.proposalList();
    List<String> hashes =
        hashesJson.map((hashList) => String.fromCharCodes(hashList)).toList();

    List<Proposal> activeProposals = [];
    List<Proposal> inactiveProposals = [];

    for (int i = 0; i < hashes.length; i++) {
      final daoProposal = await getDaoProposal(hashes[i]);
      final proposal = await getProposal(hashes[i]);
      final proposalVotes = await getProposalVotes(hashes[i]);
      final nowBlock = await client.api.query.system.number();
      final timeUntilEnd = (proposalVotes.end - nowBlock) * 6;
      if (proposal.remark != "Error fetching proposal") {
        if (proposalVotes.end < nowBlock) {
          inactiveProposals.add(Proposal(
              threshold: proposalVotes.threshold,
              ayes: proposalVotes.ayes,
              nayes: proposalVotes.nays,
              vetos: proposalVotes.vetos,
              end: Moment(DateTime.now()).add(Duration(seconds: timeUntilEnd)),
              hash: hashes[i],
              action: proposal.remark,
              description: String.fromCharCodes(daoProposal.description),
              link: String.fromCharCodes(daoProposal.link),
              ayesProgress:
                  getProgress(proposalVotes.ayes, proposalVotes.nays, true),
              nayesProgress:
                  getProgress(proposalVotes.ayes, proposalVotes.nays, false)));
        } else {
          activeProposals.add(Proposal(
              threshold: proposalVotes.threshold,
              ayes: proposalVotes.ayes,
              nayes: proposalVotes.nays,
              vetos: proposalVotes.vetos,
              end: Moment(DateTime.now()).add(Duration(seconds: timeUntilEnd)),
              hash: hashes[i],
              action: proposal.remark,
              description: String.fromCharCodes(daoProposal.description),
              link: String.fromCharCodes(daoProposal.link),
              ayesProgress:
                  getProgress(proposalVotes.ayes, proposalVotes.nays, true),
              nayesProgress:
                  getProgress(proposalVotes.ayes, proposalVotes.nays, false)));
        }
      }
    }

    return {
      'activeProposals': activeProposals,
      'inactiveProposals': inactiveProposals,
    };
  }

  Future<DaoProposal> getDaoProposal(String hash) async {
    try {
      final proposalJson =
          await this.client.api.query.dao.proposals(hash.codeUnits);
      DaoProposal proposal = DaoProposal(
          index: proposalJson!.index,
          description: proposalJson.description,
          link: proposalJson.link);
      return proposal;
    } catch (error) {
      throw Exception("Couldn't get a proposal");
    }
  }

  Future<ProposalRemark> getProposal(String hash) async {
    try {
      final proposalJson =
          await client.api.query.dao.proposalOf(hash.codeUnits);
      ProposalRemark proposalRemark =
          ProposalRemark(remark: proposalJson.toString());
      return proposalRemark;
    } catch (error) {
      print(error);
      return ProposalRemark(remark: 'Error fetching proposal');
    }
  }

  Future<DaoVotes> getProposalVotes(String hash) async {
    final votesJson = await client.api.query.dao.voting(hash.codeUnits);
    DaoVotes proposalVotes = DaoVotes(
        index: votesJson!.index,
        threshold: votesJson.threshold,
        ayes: votesJson.ayes,
        nays: votesJson.nays,
        end: votesJson.end,
        vetos: votesJson.vetos);
    return proposalVotes;
  }

  int getVotesWithWeight(List<VoteWeight> votes) {
    return votes.fold<int>(0, (int total, vote) => total + vote.weight.toInt());
  }

  int getProgress(List<VoteWeight> ayes, List<VoteWeight> nayes, bool typeAye) {
    final totalAyeWeight = ayes.isNotEmpty ? getVotesWithWeight(ayes) : 0;
    final totalNayeWeight = nayes.isNotEmpty ? getVotesWithWeight(nayes) : 0;
    final total = totalAyeWeight + totalNayeWeight;
    if (total > 0) {
      if (typeAye) {
        return ((totalAyeWeight / total) * 100).toInt();
      }

      return ((totalNayeWeight / total) * 100).toInt();
    }
    return 0;
  }
}

class Dao extends QueryDao {
  Dao(Client client) : super(client);

  RuntimeCall vote(DaoVoteOptions options) {
    final extrinsic = client.api.tx.dao.vote(
        farmId: options.farmId,
        proposalHash: options.hash.codeUnits,
        approve: options.approve);
    return extrinsic;
  }
}
