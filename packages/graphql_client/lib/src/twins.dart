import '../graphql_client.dart';
import '../models.dart';

class TFTwins {
  final GraphQLClient gqlClient;

  TFTwins(this.gqlClient);

  Future<List<TwinInfo>> twins(
      TwinReturnOptions? returnOptions, TwinQueryOptions? queryOptions) async {
    final queryString = queryOptions?.toString() ?? "";
    final returnString = returnOptions?.toString() ?? "id \n";
    final body = '''
query Twins {
  twins $queryString {
    $returnString
  }
}''';
    final response = await gqlClient.query(body);

    if (response['data'] == null) throw Exception('Missing "data" field');
    if (response['data']['twins'] == null) {
      throw Exception('Missing "twins" field');
    }
    if (response['data']['twins'] is! List<dynamic>) {
      throw Exception('Invalid data format: Expected a list: $response');
    }
    List<TwinInfo> twins =
        (response['data']['twins'] as List<dynamic>).map((twinsData) {
      return TwinInfo.fromJson(twinsData as Map<String, dynamic>);
    }).toList();
    return twins;
  }

  Future<TwinConnectionsInfo> twinsConnections(
      TwinConnectionsReturnOptions? returnOptions,
      TwinConnectionsQueryOptions? queryOptions) async {
    final queryString = queryOptions?.toString() ?? "";
    final returnString = returnOptions?.toString();
    final body = '''
query Twins {
  twinsConnection $queryString {
    $returnString
  }
}''';
    final response = await gqlClient.query(body);
    if (response['data'] == null) throw Exception('Missing "data" field');
    if (response['data']['twinsConnection'] == null) {
      throw Exception('Missing "twinsConnection" field');
    }
    if (response['data']['twinsConnection'] is! Map<String, dynamic>) {
      throw Exception(
          'Invalid data format: Expected a list of maps: $response');
    }
    TwinConnectionsInfo twinsConnection = TwinConnectionsInfo.fromJson(
        response['data']['twinsConnection'] as Map<String, dynamic>);
    return twinsConnection;
  }
}