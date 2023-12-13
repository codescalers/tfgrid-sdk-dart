import 'package:tfchain_client/tfchain_client.dart';

class QueryTFTPrice {
  final QueryClient client;
  QueryTFTPrice(this.client);

  Future<int?> get({required String address}) async {
    final res = await client.api.query.tFTPriceModule.tftPrice();
    return res;
  }
}
