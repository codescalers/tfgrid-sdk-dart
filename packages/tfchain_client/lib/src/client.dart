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
  late final Dao.QueryDao dao;
  late final QueryTFTPrice price;

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
    dao = Dao.QueryDao(this);
  }

  void checkInputs() {
    if (url.isEmpty) {
      throw FormatException("URL should be provided");
    }
  }

  Future<void> connect() async {
    checkInputs();
  }

  Future<void> disconnect() async {
    await api.disconnect();
  }
}

class Client extends QueryClient {
  final String mnemonic;
  late String address;
  final String keypairType;
  late Signer.Signer signer;
  KeyPair? keypair;
  late final balance.Balances clientBalances;
  late final Contracts clientContracts;
  late final Farms clientFarms;
  late final Dao.Dao clientDao;
  late final Twins clientTwins;
  final SUPPORTED_KEYPAIR_TYPES = ["sr25519", "ed25519"];

  Client(String url, this.mnemonic, this.keypairType) : super(url) {
    if (provider == null) {
      provider = Provider.fromUri(Uri.parse(url));
      api = polkadot.Dev(provider);
    }
    clientBalances = balance.Balances(this);
    clientContracts = Contracts(this);
    clientFarms = Farms(this);
    clientDao = Dao.Dao(this);
    clientTwins = Twins(this);
    signer = Signer.Signer();
  
  }

  @override
  void checkInputs() {
    super.checkInputs();
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

    if (!SUPPORTED_KEYPAIR_TYPES.contains(keypairType)) {
      throw FormatException(
          "Keypair type $keypairType is not valid. It Should be either of : ${SUPPORTED_KEYPAIR_TYPES}");
    }
  }

  @override
  Future<void> connect() async {
    checkInputs();
    if (keypairType == "sr25519") {
      keypair = await signer.fromMnemonic(mnemonic, Signer.KPType.sr25519);
      address = keypair!.address;
    } else {
      keypair = await signer.fromMnemonic(mnemonic, Signer.KPType.ed25519);
      address = keypair!.address;
    }
  }

  @override
  Future<void> disconnect() async {
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

    final keyring = await KeyPair.sr25519.fromMnemonic(mnemonic);

    final encodedCall = runtimeCall.encode();
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

    final extrinsic = ExtrinsicPayload(
            signer: Uint8List.fromList(keyring.bytes()),
            method: encodedCall,
            signature: signature,
            eraPeriod: 64,
            blockNumber: blockNumber,
            nonce: nonce,
            tip: 0)
        .encode(api.registry, SignatureType.sr25519);

    final hexExtrinsic = hex.encode(extrinsic);
    print('Extrinsic: $hexExtrinsic');

    final submit = await AuthorApi(provider).submitAndWatchExtrinsic(
        extrinsic as Uint8List,
        (p0) => print("Extrinsic result: ${p0.type} - {${p0.value}}"));
    print(submit);
  }
}
