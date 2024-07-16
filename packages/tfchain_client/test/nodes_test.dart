import 'dart:io';

import 'package:test/test.dart';
import 'package:tfchain_client/generated/dev/types/tfchain_support/types/node.dart';
import 'package:tfchain_client/tfchain_client.dart';

void main() {
  group("Test Query Nodes", () {
    late QueryClient queryClient;
    final String url =
        Platform.environment['URL'] ?? 'wss://tfchain.dev.grid.tf/ws';
    setUp(() async {
      queryClient = QueryClient(url);
      await queryClient.connect();
    });

    tearDownAll(() async {
      await queryClient.disconnect();
    });

    test('Test get Node by Id', () async {
      Node? node = await queryClient.nodes.get(id: 11);
      expect(node, isNotNull);
    });

    test('Test get Node by wrong Id', () async {
      try {
        Node? node = await queryClient.nodes.get(id: 11);
        expect(node, isNotNull);
      } catch (error) {
        expect(error, isNotNull);
      }
    });
  });

  group("Test Nodes", () {
    late Client client;
    final mnemonic = Platform.environment['MNEMONIC']!;
    final String url =
        Platform.environment['URL'] ?? 'wss://tfchain.dev.grid.tf/ws';
    final String type = Platform.environment['KEYPAIR_TYPE'] ?? 'sr25519';
    setUp(() async {
      client = Client(url, mnemonic, type);
      await client.connect();
    });

    tearDownAll(() async {
      await client.disconnect();
    });

    test('Test Set Power to node not owned by me', () async {
      try {
        await client.nodes.setPower(nodeId: 72, power: true);
      } catch (error) {
        expect(
          error,
          isNotNull,
        );
      }
    });

    test('Test Add public config to node not owned by me', () async {
      try {
        await client.nodes.addNodePublicConfig(
            farmId: 1528,
            nodeId: 72,
            ip4Ip: "198.165.15.25/16",
            ip4Gw: "198.165.15.26",
            domain: "");
      } catch (error) {
        expect(
          error,
          isNotNull,
        );
      }
    });
  });
}
