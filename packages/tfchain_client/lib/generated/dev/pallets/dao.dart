// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:polkadart/polkadart.dart' as _i1;
import 'package:polkadart/scale_codec.dart' as _i3;

import '../types/pallet_dao/pallet/call.dart' as _i8;
import '../types/pallet_dao/proposal/dao_proposal.dart' as _i4;
import '../types/pallet_dao/proposal/dao_votes.dart' as _i6;
import '../types/primitive_types/h256.dart' as _i2;
import '../types/tfchain_runtime/runtime_call.dart' as _i5;

class Queries {
  const Queries(this.__api);

  final _i1.StateApi __api;

  final _i1.StorageValue<List<_i2.H256>> _proposalList =
      const _i1.StorageValue<List<_i2.H256>>(
    prefix: 'Dao',
    storage: 'ProposalList',
    valueCodec: _i3.SequenceCodec<_i2.H256>(_i2.H256Codec()),
  );

  final _i1.StorageMap<_i2.H256, _i4.DaoProposal> _proposals =
      const _i1.StorageMap<_i2.H256, _i4.DaoProposal>(
    prefix: 'Dao',
    storage: 'Proposals',
    valueCodec: _i4.DaoProposal.codec,
    hasher: _i1.StorageHasher.identity(_i2.H256Codec()),
  );

  final _i1.StorageMap<_i2.H256, _i5.RuntimeCall> _proposalOf =
      const _i1.StorageMap<_i2.H256, _i5.RuntimeCall>(
    prefix: 'Dao',
    storage: 'ProposalOf',
    valueCodec: _i5.RuntimeCall.codec,
    hasher: _i1.StorageHasher.identity(_i2.H256Codec()),
  );

  final _i1.StorageMap<_i2.H256, _i6.DaoVotes> _voting =
      const _i1.StorageMap<_i2.H256, _i6.DaoVotes>(
    prefix: 'Dao',
    storage: 'Voting',
    valueCodec: _i6.DaoVotes.codec,
    hasher: _i1.StorageHasher.identity(_i2.H256Codec()),
  );

  final _i1.StorageValue<int> _proposalCount = const _i1.StorageValue<int>(
    prefix: 'Dao',
    storage: 'ProposalCount',
    valueCodec: _i3.U32Codec.codec,
  );

  final _i1.StorageMap<int, BigInt> _farmWeight =
      const _i1.StorageMap<int, BigInt>(
    prefix: 'Dao',
    storage: 'FarmWeight',
    valueCodec: _i3.U64Codec.codec,
    hasher: _i1.StorageHasher.identity(_i3.U32Codec.codec),
  );

  /// The hashes of the active proposals.
  _i7.Future<List<_i2.H256>> proposalList({_i1.BlockHash? at}) async {
    final hashedKey = _proposalList.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _proposalList.decodeValue(bytes);
    }
    return []; /* Default */
  }

  /// A map that indexes a hash to an active proposal object.
  _i7.Future<_i4.DaoProposal?> proposals(
    _i2.H256 key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _proposals.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _proposals.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  _i7.Future<_i5.RuntimeCall?> proposalOf(
    _i2.H256 key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _proposalOf.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _proposalOf.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  /// Votes on a given proposal, if it is ongoing.
  _i7.Future<_i6.DaoVotes?> voting(
    _i2.H256 key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _voting.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _voting.decodeValue(bytes);
    }
    return null; /* Nullable */
  }

  /// Proposals so far.
  _i7.Future<int> proposalCount({_i1.BlockHash? at}) async {
    final hashedKey = _proposalCount.hashedKey();
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _proposalCount.decodeValue(bytes);
    }
    return 0; /* Default */
  }

  _i7.Future<BigInt> farmWeight(
    int key1, {
    _i1.BlockHash? at,
  }) async {
    final hashedKey = _farmWeight.hashedKeyFor(key1);
    final bytes = await __api.getStorage(
      hashedKey,
      at: at,
    );
    if (bytes != null) {
      return _farmWeight.decodeValue(bytes);
    }
    return BigInt.zero; /* Default */
  }
}

class Txs {
  const Txs();

  _i5.RuntimeCall propose({
    required threshold,
    required action,
    required description,
    required link,
    duration,
  }) {
    final _call = _i8.Call.values.propose(
      threshold: threshold,
      action: action,
      description: description,
      link: link,
      duration: duration,
    );
    return _i5.RuntimeCall.values.dao(_call);
  }

  _i5.RuntimeCall vote({
    required farmId,
    required proposalHash,
    required approve,
  }) {
    final _call = _i8.Call.values.vote(
      farmId: farmId,
      proposalHash: proposalHash,
      approve: approve,
    );
    return _i5.RuntimeCall.values.dao(_call);
  }

  _i5.RuntimeCall veto({required proposalHash}) {
    final _call = _i8.Call.values.veto(proposalHash: proposalHash);
    return _i5.RuntimeCall.values.dao(_call);
  }

  _i5.RuntimeCall close({
    required proposalHash,
    required proposalIndex,
  }) {
    final _call = _i8.Call.values.close(
      proposalHash: proposalHash,
      proposalIndex: proposalIndex,
    );
    return _i5.RuntimeCall.values.dao(_call);
  }
}
