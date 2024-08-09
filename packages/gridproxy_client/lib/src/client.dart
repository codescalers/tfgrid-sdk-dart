part of '../gridproxy_client.dart';

class GridProxyClient {
  final String baseUrl;
  late final Nodes nodes;

  GridProxyClient(this.baseUrl) {
    nodes = Nodes(this);
  }

  Future<dynamic> getRequest(String path) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl$path'));

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        return jsonData;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
