import 'package:graphql_client/graphql_client.dart';
import 'package:graphql_client/models.dart';
// import 'graphql_client.reflectable.dart';

void main() async {
  // initializeReflectable();
  final graphQLClient = GraphQLClient('https://graphql.dev.grid.tf/graphql');

  final Future<List<ContractBillReports>> contracts = graphQLClient.contracts
      .listContractConsumption(BigInt.from(113803), null);

  for (final contract in await contracts) {
    print(contract);
  }
}
