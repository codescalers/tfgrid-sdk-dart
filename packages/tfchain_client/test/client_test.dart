import 'package:polkadart/polkadart.dart';
import 'package:test/test.dart';
import 'package:tfchain_client/generated/dev/dev.dart';
import 'package:tfchain_client/src/balances.dart';
import 'package:tfchain_client/src/contracts.dart';
import 'package:tfchain_client/src/farms.dart';
import 'package:tfchain_client/src/nodes.dart';
import 'package:tfchain_client/src/pricing_policies.dart';
import 'package:tfchain_client/src/tft_bridge.dart';
import 'package:tfchain_client/src/tft_price.dart';
import 'package:tfchain_client/src/twins.dart';
import 'package:tfchain_client/tfchain_client.dart';

void main() {
  group('Query Client Tests', () {
    late QueryClient queryClient;
    setUp(() {
      queryClient = QueryClient("wss://tfchain.dev.grid.tf/ws");
    });

    test('Initialization', () {
      expect(queryClient.url, equals("wss://tfchain.dev.grid.tf/ws"));
      expect(queryClient.provider, isA<WsProvider>());
      expect(queryClient.api, isA<Dev>());
      expect(queryClient.contracts, isA<QueryContracts>());
      expect(queryClient.balances, isA<QueryBalances>());
      expect(queryClient.farms, isA<QueryFarms>());
      expect(queryClient.nodes, isA<QueryNodes>());
      expect(queryClient.policies, isA<QueryPricingPolicies>());
      expect(queryClient.twins, isA<QueryTwins>());
      expect(queryClient.bridge, isA<QueryBridge>());
      expect(queryClient.price, isA<QueryTFTPrice>());
    });

    test('Check Input', () {
      queryClient.checkInputs();
      expect(true, true);
    });

    test('Connect', () {
      queryClient.connect();
      expect(true, true);
    });

    test('Disconnect', () {
      queryClient.disconnect();
      expect(true, true);
    });
  });

  group("Full Client Tests", () {
    test('checkInputs with Invalid mnemonic', () {
      final client = Client("wss://tfchain.dev.grid.tf/ws", "validMnemonic");
      expect(
          () => client.checkInputs(), throwsA(TypeMatcher<FormatException>()));
    });

    late Client client;
    setUp(() {
      client = Client("wss://tfchain.dev.grid.tf/ws",
          "picnic flip cigar rival risk scatter slide aware trust garlic solution token");
    });

    test('Initialization', () {
      expect(client.url, equals("wss://tfchain.dev.grid.tf/ws"));
      expect(client.clientContracts, isA<Contracts>());
      expect(client.clientFarms, isA<Farms>());
    });

    test('Check Input', () {
      client.checkInputs();
      expect(true, true);
    });

    test('Connect', () {
      client.connect();
      expect(true, true);
    });

    test('Disconnect', () {
      client.disconnect();
      expect(true, true);
    });
  });
}
