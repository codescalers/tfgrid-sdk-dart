A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

# Getting Started

## Install Dependencies 
``` bash
dart pub get
```
## Generate Reflectable code 
```bash
dart run build_runner build
```

# Usage 
 - Ensure that initializeReflectable() is called at the beggining of your main
 
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
    idEq: "0000013810-000001-a75c1",
  );

  Future<List<FarmInfo>> farms = graphQLClient.farms.listFarms(farmsQueryOptions, farmsReturnOptions);

  for (var farm in await farms) {
    print(farm);
  } 
}
```





