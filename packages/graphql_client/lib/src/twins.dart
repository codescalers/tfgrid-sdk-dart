import '../graphql_client.dart';
import '../models.dart';

class TFTwins {
  final GraphQLClient gqlClient;

  TFTwins(this.gqlClient);

  Future<List<TwinInfo>> twins(
      TwinReturnOptions? returnOptions, TwinQueryOptions? queryOptions) async {
    final queryString = queryOptions?.toString() ?? "";
    final String returnString;
    if (returnOptions == null || areAllBooleansFalse(returnOptions)) {
      returnString = '''
    accountID
    gridVersion
    id
    publicKey
    relay
    twinID
''';
    } else {
      returnString = returnOptions.toString();
    }
    final body = '''
query Twins {
  twins $queryString {
    $returnString
  }
}''';
    final response = await gqlClient.query(body);

    if (response['data'] == null) {
      throw Exception('Missing "data" field in response: $response');
    }
    if (response['data']['twins'] == null) {
      throw Exception(
          'Missing "twins" field in response data: ${response['data']}');
    }
    if (response['data']['twins'] is! List<dynamic>) {
      throw Exception(
          'Invalid data format: Expected a list in "twins" field, got ${response['data']['twins'].runtimeType}');
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
    final String returnString;
    if (returnOptions == null || areAllBooleansFalse(returnOptions)) {
      returnString = '''
    totalCount
    pageInfo {
      startCursor
      hasPreviousPage
      hasNextPage
      endCursor
    }
    edges {
      cursor
      node {
        accountID
        gridVersion
        id
        publicKey
        relay
        twinID
      }
    }
''';
    } else {
      returnString = returnOptions.toString();
    }
    final body = '''
query Twins {
  twinsConnection $queryString {
    $returnString
  }
}''';
    final response = await gqlClient.query(body);
    if (response['data'] == null) {
      throw Exception('Missing "data" field in response: $response');
    }
    if (response['data']['twinsConnection'] == null) {
      throw Exception(
          'Missing "twinsConnection" field in response data: ${response['data']}');
    }
    if (response['data']['twinsConnection'] is! Map<String, dynamic>) {
      throw Exception(
          'Invalid data format: Expected a Map<String, dynamic> for "twinsConnection" field, got ${response['data']['twinsConnection'].runtimeType}');
    }
    TwinConnectionsInfo twinsConnection = TwinConnectionsInfo.fromJson(
        response['data']['twinsConnection'] as Map<String, dynamic>);
    return twinsConnection;
  }
}
