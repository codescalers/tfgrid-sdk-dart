import 'dart:io';

import 'package:test/test.dart';
import 'package:tfchain_client/tfchain_client.dart';

void main() {
  group("Query Price Test", () {
    late QueryClient queryClient;
        final String url =
        Platform.environment['URL'] ?? 'wss://tfchain.dev.grid.tf/ws';
    setUp(() async {
      queryClient = QueryClient("wss://tfchain.dev.grid.tf/ws");
      await queryClient.connect();
    });

    tearDownAll(() async {
      await queryClient.disconnect();
    });

    test('Test Get TFT price', () async {
      final price = await queryClient.price.get();
      expect(price, isNotNull);
    });
  });
}
