# tfgrid-sdk-dart

[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos) [![codecov](https://codecov.io/gh/codescalers/tfgrid-sdk-dart/graph/badge.svg?token=O34UDTMW5O)](https://codecov.io/gh/codescalers/tfgrid-sdk-dart)

## Prerequisites

Make sure you have the following tools installed:

- [Dart SDK](https://dart.dev/get-dart)
- [Melos](https://pub.dev/packages/melos)
- [Coverde](https://pub.dev/packages/coverde)

## Initialize Workspace

To initialize workspace in all packages run the following command

```bash
melos bootstrap
```

## Code Analysis

To analyze code in all dart package run the following command

```bash
melos run analyze
```

## Run Unit Tests

To run unit tests in all packages that have `test` directory, run the following command

```bash
melos run unit_test
```

## Generate Coverage

To generate coverage for all packages and merge the results, use the following commands

```bash
melos run unit_test_and_coverage
```

Check results from `result.txt` with the following command

```bash
cat coverage/result.txt
```
