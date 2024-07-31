import 'package:graphql_client/graphql_client.dart';
import '../models.dart';

class TFFarms {
  final GraphQLClient gqlClient;

  TFFarms(this.gqlClient);

  Future<List<FarmInfo>> listFarms(FarmsQueryOptions? queryOptions,
      FarmsReturnOptions? returnOptions) async {
    final queryString = queryOptions?.toString() ?? "";
    final returnString = returnOptions?.toString() ?? "id \n";

    final body = '''
            query Farms{
              farms $queryString {
                $returnString
              }
            }''';

    final response = await gqlClient.query(body);
    if (response['data'] == null || response['data']['farms'] == null) {
      throw Exception('Invalid response structure: $response');
    }
    final farmsDataList = response['data']['farms'] as List<dynamic>;
    if (farmsDataList.any((item) => item is! Map<String, dynamic>)) {
      throw Exception(
          'Invalid data format: Expected a list of maps: $response');
    }
    List<FarmInfo> farms =
        (response['data']['farms'] as List<dynamic>).map((farmsData) {
      return FarmInfo(
        id: farmsData['id'],
        farmID: farmsData['farmID'] ?? 0,
        certification: farmsData['certification'] ?? '',
        dedicatedFarm: farmsData['dedicatedFarm'] ?? false,
        name: farmsData['name'] ?? '',
        pricingPolicyID: farmsData['pricingPolicyID'] ?? 0,
        stellarAddress: farmsData['stellarAddress'] ?? '',
        twinID: farmsData['twinID'] ?? 0,
        publicIps: farmsData['publicIps'] != null
            ? PublicIpsInfo.fromJson(farmsData['publicIps'])
            : null,
      );
    }).toList();
    return farms;
  }
}
