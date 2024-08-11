part of '../gridproxy_client.dart';

class GridProxyClient {
  final String baseUrl;
  late final Nodes nodes;

  GridProxyClient(this.baseUrl) {
    nodes = Nodes(this);
  }

  Future<dynamic> getRequest(
      String path, Map<String, dynamic>? queryParameters) async {
    try {
      final convertedQueryParameters = queryParameters
          ?.map((key, value) => MapEntry(key, value?.toString() ?? ''));
      final uri = convertedQueryParameters != null &&
              convertedQueryParameters.isNotEmpty
          ? Uri.https(baseUrl, path, convertedQueryParameters)
          : Uri.https(baseUrl, path);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        return jsonData;
      } else {
        throw Exception('Failed to load data got: ${response.body}');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
