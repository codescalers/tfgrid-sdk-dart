// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i24;

import 'package:polkadart/polkadart.dart' as _i1;

import 'pallets/aura.dart' as _i7;
import 'pallets/authorship.dart' as _i9;
import 'pallets/balances.dart' as _i10;
import 'pallets/burning_module.dart' as _i16;
import 'pallets/council.dart' as _i18;
import 'pallets/council_membership.dart' as _i19;
import 'pallets/dao.dart' as _i20;
import 'pallets/grandpa.dart' as _i8;
import 'pallets/runtime_upgrade.dart' as _i23;
import 'pallets/scheduler.dart' as _i4;
import 'pallets/session.dart' as _i6;
import 'pallets/smart_contract_module.dart' as _i13;
import 'pallets/system.dart' as _i2;
import 'pallets/t_f_k_v_store.dart' as _i17;
import 'pallets/t_f_t_bridge_module.dart' as _i14;
import 'pallets/t_f_t_price_module.dart' as _i15;
import 'pallets/tfgrid_module.dart' as _i12;
import 'pallets/timestamp.dart' as _i3;
import 'pallets/transaction_payment.dart' as _i11;
import 'pallets/utility.dart' as _i22;
import 'pallets/validator.dart' as _i21;
import 'pallets/validator_set.dart' as _i5;

class Queries {
  Queries(_i1.StateApi api)
      : system = _i2.Queries(api),
        timestamp = _i3.Queries(api),
        scheduler = _i4.Queries(api),
        validatorSet = _i5.Queries(api),
        session = _i6.Queries(api),
        aura = _i7.Queries(api),
        grandpa = _i8.Queries(api),
        authorship = _i9.Queries(api),
        balances = _i10.Queries(api),
        transactionPayment = _i11.Queries(api),
        tfgridModule = _i12.Queries(api),
        smartContractModule = _i13.Queries(api),
        tFTBridgeModule = _i14.Queries(api),
        tFTPriceModule = _i15.Queries(api),
        burningModule = _i16.Queries(api),
        tFKVStore = _i17.Queries(api),
        council = _i18.Queries(api),
        councilMembership = _i19.Queries(api),
        dao = _i20.Queries(api),
        validator = _i21.Queries(api);

  final _i2.Queries system;

  final _i3.Queries timestamp;

  final _i4.Queries scheduler;

  final _i5.Queries validatorSet;

  final _i6.Queries session;

  final _i7.Queries aura;

  final _i8.Queries grandpa;

  final _i9.Queries authorship;

  final _i10.Queries balances;

  final _i11.Queries transactionPayment;

  final _i12.Queries tfgridModule;

  final _i13.Queries smartContractModule;

  final _i14.Queries tFTBridgeModule;

  final _i15.Queries tFTPriceModule;

  final _i16.Queries burningModule;

  final _i17.Queries tFKVStore;

  final _i18.Queries council;

  final _i19.Queries councilMembership;

  final _i20.Queries dao;

  final _i21.Queries validator;
}

class Extrinsics {
  Extrinsics();

  final _i2.Txs system = _i2.Txs();

  final _i3.Txs timestamp = _i3.Txs();

  final _i22.Txs utility = _i22.Txs();

  final _i4.Txs scheduler = _i4.Txs();

  final _i5.Txs validatorSet = _i5.Txs();

  final _i6.Txs session = _i6.Txs();

  final _i8.Txs grandpa = _i8.Txs();

  final _i10.Txs balances = _i10.Txs();

  final _i12.Txs tfgridModule = _i12.Txs();

  final _i13.Txs smartContractModule = _i13.Txs();

  final _i14.Txs tFTBridgeModule = _i14.Txs();

  final _i15.Txs tFTPriceModule = _i15.Txs();

  final _i16.Txs burningModule = _i16.Txs();

  final _i17.Txs tFKVStore = _i17.Txs();

  final _i23.Txs runtimeUpgrade = _i23.Txs();

  final _i18.Txs council = _i18.Txs();

  final _i19.Txs councilMembership = _i19.Txs();

  final _i20.Txs dao = _i20.Txs();

  final _i21.Txs validator = _i21.Txs();
}

class Constants {
  Constants();

  final _i2.Constants system = _i2.Constants();

  final _i3.Constants timestamp = _i3.Constants();

  final _i22.Constants utility = _i22.Constants();

  final _i4.Constants scheduler = _i4.Constants();

  final _i8.Constants grandpa = _i8.Constants();

  final _i10.Constants balances = _i10.Constants();

  final _i11.Constants transactionPayment = _i11.Constants();

  final _i12.Constants tfgridModule = _i12.Constants();

  final _i13.Constants smartContractModule = _i13.Constants();

  final _i18.Constants council = _i18.Constants();
}

class Rpc {
  const Rpc({
    required this.state,
    required this.system,
  });

  final _i1.StateApi state;

  final _i1.SystemApi system;
}

class Registry {
  Registry();

  final int extrinsicVersion = 4;

  List getSignedExtensionTypes() {
    return ['CheckMortality', 'CheckNonce', 'ChargeTransactionPayment'];
  }

  List getSignedExtensionExtra() {
    return [
      'CheckSpecVersion',
      'CheckTxVersion',
      'CheckGenesis',
      'CheckMortality'
    ];
  }
}

class Dev {
  Dev._(
    this._provider,
    this.rpc,
  )   : query = Queries(rpc.state),
        constant = Constants(),
        tx = Extrinsics(),
        registry = Registry();

  factory Dev(_i1.Provider provider) {
    final rpc = Rpc(
      state: _i1.StateApi(provider),
      system: _i1.SystemApi(provider),
    );
    return Dev._(
      provider,
      rpc,
    );
  }

  factory Dev.url(Uri url) {
    final provider = _i1.Provider.fromUri(url);
    return Dev(provider);
  }

  final _i1.Provider _provider;

  final Queries query;

  final Constants constant;

  final Rpc rpc;

  final Extrinsics tx;

  final Registry registry;

  _i24.Future connect() async {
    return await _provider.connect();
  }

  _i24.Future disconnect() async {
    return await _provider.disconnect();
  }
}
