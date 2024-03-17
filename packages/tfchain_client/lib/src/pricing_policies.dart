import 'package:tfchain_client/generated/dev/types/pallet_tfgrid/types/pricing_policy.dart';
import 'package:tfchain_client/tfchain_client.dart';

class QueryPricingPolicies {
  final QueryClient client;
  QueryPricingPolicies(this.client);

  Future<PricingPolicy?> get({required int id}) async {
    final res = await client.api.query.tfgridModule.pricingPolicies(id);
    return res as PricingPolicy;
  }
}
