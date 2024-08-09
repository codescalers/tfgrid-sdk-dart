import 'package:graphql_client/graphql_client.dart';
import 'package:graphql_client/models.dart';

class TFContracts {
  final GraphQLClient gqlClient;

  TFContracts(this.gqlClient);

  Future<List<NameContract>> listNameContractsByTwinId(
      int twinID,
      List<ContractStates> contractStates,
      NameContractReturnOptions? returnOptions) async {
    final state = '[${contractStates.map((e) => e.name).join(', ')}]';
    final opts = '(where: {twinID_eq: $twinID, state_in: $state})';
    final String returnString;

    if (returnOptions == null || areAllBooleansFalse(returnOptions)) {
      returnString = '''
      id
      gridVersion
      contractID
      twinID
      state
      createdAt
      solutionProviderID
      name
      ''';
    } else {
      returnString = returnOptions.toString();
    }

    final body = '''
    query getNameContracts {
      nameContracts $opts {
        $returnString
      }
    }''';

    final response = await gqlClient.query(body);

    if (response['data'] == null) {
      throw Exception("Data returned is null");
    }
    if (response['data']['nameContracts'] == null) {
      throw Exception("NameContracts returned is null");
    }
    final nameContractsDataList =
        response['data']['nameContracts'] as List<dynamic>;
    if (nameContractsDataList.any((item) => item is! Map<String, dynamic>)) {
      throw Exception(
          'Invalid data format: Expected a list of maps: $response');
    }

    List<NameContract> nameContracts = nameContractsDataList.map((data) {
      return NameContract.fromJson(data);
    }).toList();

    return nameContracts;
  }

  Future<List<RentContract>> listRentContractsByTwinId(
      int twinID,
      List<ContractStates> contractStates,
      RentContractReturnOptions? returnOptions) async {
    final state = '[${contractStates.map((e) => e.name).join(', ')}]';
    final opts = '(where: {twinID_eq: $twinID, state_in: $state})';
    final String returnString;

    if (returnOptions == null || areAllBooleansFalse(returnOptions)) {
      returnString = '''
      id
      gridVersion
      contractID
      twinID
      state
      createdAt
      solutionProviderID
      nodeID
      ''';
    } else {
      returnString = returnOptions.toString();
    }

    final body = '''
    query getRentContracts {
      rentContracts $opts {
        $returnString
      }
    }''';

    final response = await gqlClient.query(body);

    if (response['data'] == null) {
      throw Exception("Data returned is null");
    }
    if (response['data']['rentContracts'] == null) {
      throw Exception("RentContracts returned is null");
    }
    final rentContractsDataList =
        response['data']['rentContracts'] as List<dynamic>;
    if (rentContractsDataList.any((item) => item is! Map<String, dynamic>)) {
      throw Exception(
          'Invalid data format: Expected a list of maps: $response');
    }

    List<RentContract> rentContracts = rentContractsDataList.map((data) {
      return RentContract.fromJson(data);
    }).toList();

    return rentContracts;
  }

  Future<List<NodeContract>> listNodeContractsByTwinId(
      int twinID,
      List<ContractStates> contractStates,
      NodeContractReturnOptions? returnOptions) async {
    final state = '[${contractStates.map((e) => e.name).join(', ')}]';
    final opts = '(where: {twinID_eq: $twinID, state_in: $state})';
    final String returnString;

    if (returnOptions == null || areAllBooleansFalse(returnOptions)) {
      returnString = '''
      id
      gridVersion
      contractID
      twinID
      state
      createdAt
      nodeID
      numberOfPublicIPs
      solutionProviderID
      deploymentData
      deploymentHash
      resourcesUsed {
        cru
        hru
        id
        mru
        sru
      }
      ''';
    } else {
      returnString = returnOptions.toString();
    }

    final body = '''
    query getNodeContracts {
      nodeContracts $opts {
        $returnString
      }
    }''';

    final response = await gqlClient.query(body);

    if (response['data'] == null) {
      throw Exception("Data returned is null");
    }
    if (response['data']['nodeContracts'] == null) {
      throw Exception("NodeContracts returned is null");
    }
    final nodeContractsDataList =
        response['data']['nodeContracts'] as List<dynamic>;
    if (nodeContractsDataList.any((item) => item is! Map<String, dynamic>)) {
      throw Exception(
          'Invalid data format: Expected a list of maps: $response');
    }

    List<NodeContract> nodeContracts = nodeContractsDataList.map((data) {
      return NodeContract.fromJson(data);
    }).toList();

    return nodeContracts;
  }

  Future<List<ContractBillReports>> listContractConsumption(BigInt contractId,
      ContractBillReportsReturnOptions? returnOptions) async {
    final String returnString;

    if (returnOptions == null || areAllBooleansFalse(returnOptions)) {
      returnString = '''
    contractID
    amountBilled
    discountReceived
    timestamp
    id
    ''';
    } else {
      returnString = returnOptions.toString();
    }

    final body = '''
        query getConsumptionforNameContracts {
          contractBillReports(where : {contractID_eq: $contractId}){
            $returnString
          }
        }

      ''';

    final response = await gqlClient.query(body);

    if (response['data'] == null) {
      throw Exception("Data returned is null");
    }

    if (response['data']['contractBillReports'] == null) {
      throw Exception("contractBillReports returned is null");
    }

    final contractBillReportsDataList =
        response['data']['contractBillReports'] as List<dynamic>;
    if (contractBillReportsDataList
        .any((item) => item is! Map<String, dynamic>)) {
      throw Exception(
          'Invalid data format: Expected a list of maps: $response');
    }

    List<ContractBillReports> contractBillReports =
        contractBillReportsDataList.map((data) {
      return ContractBillReports.fromJson(data);
    }).toList();

    return contractBillReports;
  }
}
