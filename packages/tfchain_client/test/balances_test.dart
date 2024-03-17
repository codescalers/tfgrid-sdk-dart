import 'package:test/test.dart';
import 'package:tfchain_client/tfchain_client.dart';

void main() {
  group("Query Balances Test", () {
    late QueryClient queryClient;
    setUp(() {
      queryClient = QueryClient("wss://tfchain.dev.grid.tf/ws");
    });

    test('Test Get Balance', () {
      
    });
  });
}
