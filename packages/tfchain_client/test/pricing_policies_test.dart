import 'package:test/test.dart';
import 'package:tfchain_client/generated/dev/types/pallet_tfgrid/types/pricing_policy.dart';
import 'package:tfchain_client/tfchain_client.dart';

import 'shared_setup.dart';

void main() {
  group("Query Pricing Policies", () {
    late QueryClient queryClient;
    sharedSetup();

    setUp(() async {
      queryClient = QueryClient(url);
      await queryClient.connect();
    });

    test('Test Get Pricing Policy', () async {
      PricingPolicy? res = await queryClient.policies.get(id: pricingPolicyId);
      expect(res, isNotNull);
    });

    test('Test Get Pricing Policy with wrong Id', () async {
      try {
        PricingPolicy? res =
            await queryClient.policies.get(id: invalidPricingPolicyId);
      } catch (error) {
        expect(error, isNotNull);
      }
    });

    tearDownAll(() async {
      await queryClient.disconnect();
    });
  });
}
