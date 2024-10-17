import 'package:graphql_client/graphql_client.dart';
import 'package:graphql_client/models.dart';
// import 'graphql_client.reflectable.dart';

void main() async {
  // initializeReflectable();
  final graphQLClient = GraphQLClient('https://graphql.dev.grid.tf/graphql');

  final res = await graphQLClient.contracts.listNameContracts(
      NameContractQueryOptions(), NameContractReturnOptions());
  print(res);
}
