# Gridproxy Client

This is a dart client to communicate with GridProxy based on the network.

## Install Dependencies

```bash
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
 import 'gridproxy_client.reflectable.dart';

 initializeReflectable();

 GridProxyClient client = GridProxyClient('https://gridproxy.dev.grid.tf');
 final farms =
      await client.farms.list(ListFarmsQueryParameters(page: 1, size: 20));
 print(farms);
```
