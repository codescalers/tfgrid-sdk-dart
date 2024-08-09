import 'package:graphql_client/graphql_client.dart';
import '../models.dart';

class TFFarms {
  final GraphQLClient gqlClient;

  TFFarms(this.gqlClient);

  Future<List<FarmInfo>> listFarms(FarmsQueryOptions? queryOptions,
      FarmsReturnOptions? returnOptions) async {
    final queryString = queryOptions?.toString() ?? "";
    final String returnString;
    if (returnOptions == null || areAllBooleansFalse(returnOptions)) {
      returnString = '''
    certification
    dedicatedFarm
    farmID
    gridVersion
    id
    name
    pricingPolicyID
    publicIPs {
      contractId
      gateway
      id
      ip
    }
    stellarAddress
    twinID
''';
    } else {
      returnString = returnOptions.toString();
    }

    final body = '''
            query Farms{
              farms $queryString {
                $returnString
              }
            }''';

    final response = await gqlClient.query(body);
    if (response['data'] == null) {
      throw Exception("Data returned is null");
    }
    if (response['data']['farms'] == null) {
      throw Exception("Farms returned is null");
    }
    final farmsDataList = response['data']['farms'] as List<dynamic>;
    if (farmsDataList.any((item) => item is! Map<String, dynamic>)) {
      throw Exception(
          'Invalid data format: Expected a list of maps: $response');
    }
    List<FarmInfo> farms =
        (response['data']['farms'] as List<dynamic>).map((farmsData) {
      return FarmInfo(
        id: farmsData['id'] ?? '',
        farmID: farmsData['farmID'] ?? 0,
        certification: farmsData['certification'] ?? '',
        dedicatedFarm: farmsData['dedicatedFarm'] ?? false,
        name: farmsData['name'] ?? '',
        pricingPolicyID: farmsData['pricingPolicyID'] ?? 0,
        stellarAddress: farmsData['stellarAddress'] ?? '',
        twinID: farmsData['twinID'] ?? 0,
        publicIPs: farmsData['publicIPs'] != null
            ? (farmsData['publicIPs'] as List<dynamic>)
                .map((item) => PublicIpsInfo.fromJson(item))
                .toList()
            : null,
      );
    }).toList();
    return farms;
  }

  //sorts by id_ASC by default
  //return total count by default
  Future<FarmsConnectionInfo> getFarmsConnection(
      FarmsConnectionQueryOptions? queryOptions,
      FarmsConnectionReturnOptions? returnOptions) async {
    final queryString = queryOptions?.toString() ?? "(orderBy: id_ASC)";
    final String returnString;
    if (returnOptions == null || areAllBooleansFalse(returnOptions)) {
      returnString = '''
totalCount
    edges {
      node {
        publicIPs {
          contractId
          gateway
          id
          ip
        }
        certification
        dedicatedFarm
        farmID
        gridVersion
        id
        name
        pricingPolicyID
        stellarAddress
        twinID
      }
      cursor
    }
    pageInfo {
      endCursor
      hasNextPage
      hasPreviousPage
      startCursor
    }
''';
    } else {
      returnString = returnOptions.toString();
    }

    final body = '''
            query FarmsConnection{
              farmsConnection $queryString {
                $returnString
              }
            }''';

    final response = await gqlClient.query(body);

    if (response['data'] == null) {
      throw Exception("Data returned is null");
    }
    if (response['data']['farmsConnection'] == null) {
      throw Exception("FarmsConnection returned is null");
    }

    final farmsConnectionData = response['data']['farmsConnection'];

    if (farmsConnectionData is! Map<String, dynamic>) {
      throw Exception('Invalid data format: Expected a map: $response');
    }

    final farmsConnection = FarmsConnectionInfo.fromJson(farmsConnectionData);
    return farmsConnection;
  }
}
