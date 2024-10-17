import 'package:polkadart/polkadart.dart';
import 'package:test/test.dart';
import 'package:tfchain_client/src/balances.dart';
import 'package:tfchain_client/src/contracts.dart';
import 'package:tfchain_client/src/dao.dart';
import 'package:tfchain_client/src/farms.dart';
import 'package:tfchain_client/src/kvstore.dart';
import 'package:tfchain_client/src/nodes.dart';
import 'package:tfchain_client/src/pricing_policies.dart';
import 'package:tfchain_client/src/terms_and_conditions.dart';
import 'package:tfchain_client/src/tft_bridge.dart';
import 'package:tfchain_client/src/tft_price.dart';
import 'package:tfchain_client/src/twins.dart';

import 'setup_manager.dart';

void main() {
  group('Client Tests', () {
    final setupManager = SetupManager();
    setUpAll(() async {
      setupManager.setInitializationFlags(queryClient: true, client: true);
      await setupManager.setup();
    });

    test('Initialization', () {
      expect(setupManager.queryClient.url, equals(setupManager.url));
      expect(setupManager.queryClient.contracts, isA<QueryContracts>());
      expect(setupManager.queryClient.balances, isA<QueryBalances>());
      expect(setupManager.queryClient.farms, isA<QueryFarms>());
      expect(setupManager.queryClient.nodes, isA<QueryNodes>());
      expect(setupManager.queryClient.policies, isA<QueryPricingPolicies>());
      expect(setupManager.queryClient.twins, isA<QueryTwins>());
      expect(setupManager.queryClient.bridge, isA<QueryBridge>());
      expect(setupManager.queryClient.price, isA<QueryTFTPrice>());

      expect(setupManager.client.url, equals(setupManager.url));
      expect(setupManager.client.contracts, isA<Contracts>());
      expect(setupManager.client.farms, isA<Farms>());
      expect(setupManager.client.balances, isA<Balances>());
      expect(setupManager.client.bridge, isA<Bridge>());
      expect(setupManager.client.dao, isA<Dao>());
      expect(setupManager.client.kvStore, isA<KVStore>());
      expect(setupManager.client.nodes, isA<Nodes>());
      expect(setupManager.client.termsAndConditions, isA<TermsAndConditions>());
    });

    test('Connect', () async {
      if (setupManager.queryClient.provider!.isConnected()) {
        expect(setupManager.queryClient.provider, isA<WsProvider>());
        expect(setupManager.queryClient.api, isNotNull);
      }

      if (setupManager.client.provider!.isConnected()) {
        expect(setupManager.client.keypair, isNotNull);
        expect(setupManager.client.address, isNotEmpty);
        expect(setupManager.client.provider, isA<WsProvider>());
        expect(setupManager.client.api, isNotNull);
      }
    });

    test('Disconnect', () async {
      await setupManager.queryClient.disconnect();
      expect(false, setupManager.queryClient.provider!.isConnected());

      await setupManager.client.disconnect();
      expect(false, setupManager.client.provider!.isConnected());
    });
  });
}
