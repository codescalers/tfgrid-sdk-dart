part of '../tfchain_client.dart';

class QueryClient {
  final String url;
  late final Provider provider;
  late final polkadot.Dev api;
  late final QueryContracts contracts;
  late final balance.QueryBalances balances;
  late final QueryFarms farms;
  late final QueryNodes nodes;
  late final QueryPricingPolicies policies;
  late final QueryTwins twins;
  late final QueryBridge bridge;
  late final QueryTFTPrice price;
  // TODO: handle calling signer pkg
  late final signer;
  late final address;

  QueryClient(this.url) {
    provider = Provider.fromUri(Uri.parse(url));
    api = polkadot.Dev(provider);
    
    contracts = QueryContracts(this);
    balances = balance.QueryBalances(this);
    farms = QueryFarms(this);
    nodes = QueryNodes(this);
    policies = QueryPricingPolicies(this);
    twins = QueryTwins(this);
    bridge = QueryBridge(this);
    price = QueryTFTPrice(this);
  }

  void checkInputs() {
    if (url.isEmpty) {
      throw FormatException("URL should be provided");
    }
  }

  void connect() async {
    checkInputs();
  }

  void disconnect() async {
    await api.disconnect();
  }
}

class Client extends QueryClient {
  final String mnemonic;
  late KeyPair keypair;
  late final balance.Balances clientBalances;
  late final Contracts clientContracts;
  late final Farms clientFarms;

  Client(String url, this.mnemonic) : super(url) {
    if (provider == null) {
      provider = Provider.fromUri(Uri.parse(url));
      api = polkadot.Dev(provider);
    }
    clientBalances = balance.Balances(this);
    clientContracts = Contracts(this);
    clientFarms = Farms(this);
  }
  @override
  void checkInputs() {
    if (mnemonic.isEmpty) {
      throw FormatException("Mnemonic or secret should be provided");
    } else if (mnemonic != "//Allice" && !validateMnemonic(mnemonic)) {
      if (mnemonic.contains(" ")) {
        throw FormatException("Invalid mnemonic! Must be bip39 compliant");
      }

      if (!mnemonic.startsWith("0x")) {
        throw FormatException(
            "Invalid secret seed. Secret seed should start with 0x");
      }
    }
  }

  @override
  void connect() async {
    checkInputs();
  }

  @override
  void disconnect() async {
    await api.disconnect();
  }

  Future<void> apply(RuntimeCall runtimeCall) async {
    if (provider == null) {
      throw Exception("Provider is not initialized");
    }
    final stateApi = StateApi(provider);

    final runtimeVersion = await stateApi.getRuntimeVersion();

    final specVersion = runtimeVersion.specVersion;

    final transactionVersion = runtimeVersion.transactionVersion;

    final block = await provider.send('chain_getBlock', []);

    final blockNumber = int.parse(block.result['block']['header']['number']);

    final blockHash = (await provider.send('chain_getBlockHash', []))
        .result
        .replaceAll('0x', '');

    final genesisHash = (await provider.send('chain_getBlockHash', [0]))
        .result
        .replaceAll('0x', '');

    final keyring = await KeyPair.fromMnemonic(mnemonic);

    final encodedCall = hex.encode(runtimeCall.encode());
    final nonce = await api.rpc.system.accountNextIndex(keyring.address);

    final payloadToSign = SigningPayload(
        method: encodedCall,
        specVersion: specVersion,
        transactionVersion: transactionVersion,
        genesisHash: genesisHash,
        blockHash: blockHash,
        blockNumber: blockNumber,
        eraPeriod: 64,
        nonce: nonce,
        tip: 0);

    final payload = payloadToSign.encode(api.registry);

    final signature = keyring.sign(payload);

    final hexSignature = hex.encode(signature);

    final publicKey = hex.encode(keyring.publicKey.bytes);

    final extrinsic = Extrinsic(
            signer: publicKey,
            method: encodedCall,
            signature: hexSignature,
            eraPeriod: 64,
            blockNumber: blockNumber,
            nonce: nonce,
            tip: 0)
        .encode(api.registry);

    final hexExtrinsic = hex.encode(extrinsic);
    print('Extrinsic: $hexExtrinsic');

    final author = AuthorApi(provider);
    author.submitAndWatchExtrinsic(extrinsic,
        (p0) => print("Extrinsic result: ${p0.type} - {${p0.value}}"));
  }
}
