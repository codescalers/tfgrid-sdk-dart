# tfchain_client

This a Dart client to communicate with TFChain.

```bash
dart pub get
```

## Usage

There are 2 types of client. one for just query the chain and the other one for query and do transaction on the chain.

### Query Client

```dart
import 'package:tfchain_client/tfchain_client.dart';

final client = QueryClient("wss://tfchain.dev.grid.tf/ws");
client.connect();
final contract = await client.contracts.get(contractId: BigInt.from(123456));
print(contract!.toJson());
client.disconnect();
```

## Run Tests

To run the tests, run the following command

```bash
dart test
```
