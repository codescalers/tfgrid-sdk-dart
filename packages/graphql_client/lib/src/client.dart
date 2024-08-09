part of '../graphql_client.dart';

class GraphQLClient {
  final String url;
  late final TFContracts contracts;
  late final TFFarms farms;
  late final TFTwins twins;
  late final TFNodes nodes;

  GraphQLClient(this.url) {
    contracts = TFContracts(this);
    farms = TFFarms(this);
    twins = TFTwins(this);
    nodes = TFNodes(this);
  }

  Future<int> getItemTotalCount(String itemName, [String options = ""]) async {
    final queryOptions = options.isNotEmpty ? options : "";
    final countBody =
        'query { items: ${itemName}Connection$queryOptions { count: totalCount } }';
    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'query': countBody}),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['data']['items']['count'] as int;
    } else {
      throw Exception('Failed to fetch data: ${response.statusCode}');
    }
  }

  Future<Map<String, dynamic>> query(String body,
      {Map<String, dynamic> variables = const {}}) async {
    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'query': body, 'variables': variables}),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      print("ERROR: ${response.body}");
      throw Exception('Failed to fetch data: ${response.statusCode}');
    }
  }
}
