# Graphql Client

This is a dart client to send requests to graphql based on network for Threefold grid.

## Install Dependencies

``` bash
dart pub get
```

## Generate Reflectable code

```bash
dart run build_runner build
```

## Usage

- Ensure that initializeReflectable() is called at the beginning of your main

- Example usage:

```dart
import 'package:graphql_client/graphql_client.dart';
import 'package:graphql_client/models.dart';
import 'graphql_client.reflectable.dart';

void main() async {
  initializeReflectable();

  final graphQLClient = GraphQLClient('https://graphql.dev.grid.tf/graphql');

  final FarmsReturnOptions farmsReturnOptions = FarmsReturnOptions(
    farmID: true,
    publicIps: PublicIpsReturnOptions(ip: true),
  );
  final FarmsQueryOptions farmsQueryOptions = FarmsQueryOptions(
    idEq: "farm-id",
  );

  Future<List<FarmInfo>> farms = await graphQLClient.farms.listFarms(farmsQueryOptions, farmsReturnOptions);

  for (var farm in farms) {
    print(farm);
  } 
}
```
