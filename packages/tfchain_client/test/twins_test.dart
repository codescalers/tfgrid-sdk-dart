import 'package:test/test.dart';
import 'package:tfchain_client/generated/dev/types/tfchain_runtime/runtime_call.dart';
import 'package:tfchain_client/tfchain_client.dart';

void main() {
  group("Query Twins Test", () {
    late QueryClient queryClient;
    setUp(() {
      queryClient = QueryClient("wss://tfchain.dev.grid.tf/ws");
    });

    test('Test Get Twin with id', () async {
      int id = 214;
      final twin = await queryClient.twins.get(id: id);
      expect(twin, isNotNull);
    });

    test('Test Get Twin with zero id', () async {
      int id = 0;
      final twin = await queryClient.twins.get(id: id);
      expect(twin, null);
    });

    test('Test Get Twin Id with account Id', () async {
      String address = "5CJrCjZvsudNoJApTGG5PKcZfhAzAyGqgSK8bysoCV2oRBMC";
      final twin =
          await queryClient.twins.getTwinIdByAccountId(address: address);
      expect(twin, 7845);
    });
  });

  // TODO:
  group("Twins Test", () {
    late Client client;
    setUp(() {
      client = Client(
          "wss://tfchain.dev.grid.tf/ws",
          "secret add bag cluster deposit beach illness letter crouch position rain arctic",
          "sr25519");
    });

    test('Test Create Twin', () async {
      RuntimeCall call = await client.clientTwins.create(relay: [], pk: []);
      expect(call, isNotNull);
    });
  });
}