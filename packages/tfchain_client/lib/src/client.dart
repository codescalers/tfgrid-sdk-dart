part of '../tfchain_client.dart';

class QueryClient {
  static Map<String, dynamic> connections = {};
  final String url;
  late Provider? provider;
  late polkadot.Dev api;
  QueryTwins? _twins;
  QueryContracts? _contracts;
  balance.QueryBalances? _balances;
  QueryFarms? _farms;
  QueryNodes? _nodes;
  QueryPricingPolicies? _policies;
  QueryBridge? _bridge;
  QueryTFTPrice? _price;
  Dao.QueryDao? _dao;

  QueryClient(this.url) {}

  QueryTwins get twins {
    if (_twins == null) _twins = QueryTwins(this);
    return _twins!;
  }

  QueryContracts get contracts {
    if (_twins == null) _contracts = QueryContracts(this);
    return _contracts!;
  }

  balance.QueryBalances get balances {
    if (_balances == null) _balances = balance.QueryBalances(this);
    return _balances!;
  }

  QueryFarms get farms {
    if (_farms == null) _farms = QueryFarms(this);
    return _farms!;
  }

  QueryNodes get nodes {
    if (_nodes == null) _nodes = QueryNodes(this);
    return _nodes!;
  }

  QueryPricingPolicies get policies {
    if (_policies == null) _policies = QueryPricingPolicies(this);
    return _policies!;
  }

  QueryBridge get bridge {
    if (_bridge == null) _bridge = QueryBridge(this);
    return _bridge!;
  }

  QueryTFTPrice get price {
    if (_price == null) _price = QueryTFTPrice(this);
    return _price!;
  }

  Dao.QueryDao get dao {
    if (_dao == null) _dao = Dao.QueryDao(this);
    return _dao!;
  }

  void _checkInputs() {
    if (url.isEmpty) {
      throw FormatException("URL should be provided");
    }
  }

  Future<void> connect() async {
    _checkInputs();
    if (connections.containsKey(url)) {
      provider = connections[url]["provider"];
      api = connections[url]["api"];
      if (!provider!.isConnected()) {
        api.connect();
      }
    } else {
      provider = Provider.fromUri(Uri.parse(url));
      api = polkadot.Dev(provider!);
      final map = {"provider": provider, "api": api};
      connections[url] = map;
    }
  }

  Future<void> disconnect() async {
    if (provider != null && provider!.isConnected()) {
      await api.disconnect();
    }
  }
}

class Client extends QueryClient {
  final String mnemonicOrSecretSeed;
  late String address;
  final String _keypairType;
  late KeyPair? keypair;
  KVStore? _kvStore;
  Signer.KPType? _type;
  TermsAndConditions? _termsAndConditions;
  static const List<String> _SUPPORTED_KEYPAIR_TYPES = ["sr25519", "ed25519"];

  Client(String url, this.mnemonicOrSecretSeed, this._keypairType)
      : super(url) {}

  @override
  Twins get twins {
    if (_twins == null) _twins = Twins(this);
    return _twins as Twins;
  }

  @override
  Contracts get contracts {
    if (_contracts == null) _contracts = Contracts(this);
    return _contracts as Contracts;
  }

  @override
  balance.Balances get balances {
    if (_balances == null) _balances = balance.Balances(this);
    return _balances as balance.Balances;
  }

  @override
  Farms get farms {
    if (_farms == null) _farms = Farms(this);
    return _farms as Farms;
  }

  @override
  Nodes get nodes {
    if (_nodes == null) _nodes = Nodes(this);
    return _nodes as Nodes;
  }

  @override
  Bridge get bridge {
    if (_bridge == null) _bridge = Bridge(this);
    return _bridge as Bridge;
  }

  @override
  Dao.Dao get dao {
    if (_dao == null) _dao = Dao.Dao(this);
    return _dao as Dao.Dao;
  }

  KVStore get kvStore {
    if (_kvStore == null) _kvStore = KVStore(this);
    return _kvStore as KVStore;
  }

  TermsAndConditions get termsAndConditions {
    if (_termsAndConditions == null)
      _termsAndConditions = TermsAndConditions(this);
    return _termsAndConditions as TermsAndConditions;
  }

  @override
  void _checkInputs() {
    super._checkInputs();
    if (!_SUPPORTED_KEYPAIR_TYPES.contains(_keypairType)) {
      throw FormatException(
          "Keypair type $_keypairType is not valid. It Should be either of : ${_SUPPORTED_KEYPAIR_TYPES}");
    }

    if (_keypairType == "sr25519") {
      _type = Signer.KPType.sr25519;
    } else {
      _type = Signer.KPType.ed25519;
    }

    if (mnemonicOrSecretSeed.isEmpty) {
      throw FormatException("Mnemonic or secret should be provided");
    } else if (mnemonicOrSecretSeed.startsWith("//")) {
      return;
    } else if (!validateMnemonic(mnemonicOrSecretSeed)) {
      if (mnemonicOrSecretSeed.contains(" ")) {
        throw FormatException("Invalid mnemonic! Must be bip39 compliant");
      }

      if (!mnemonicOrSecretSeed.startsWith("0x")) {
        throw FormatException(
            "Invalid secret seed. Secret seed should start with 0x");
      }

      if (!isValidSeed(mnemonicOrSecretSeed)) {
        throw FormatException("Invalid secret seed");
      }
    }
  }

  @override
  Future<void> connect() async {
    await super.connect();
    final Signer.Signer signer = Signer.Signer();
    if (mnemonicOrSecretSeed.startsWith("//")) {
      keypair = await signer.fromUri(mnemonicOrSecretSeed, _type!);
    } else if (validateMnemonic(mnemonicOrSecretSeed)) {
      keypair = await signer.fromMnemonic(mnemonicOrSecretSeed, _type!);
    } else {
      keypair = await signer.fromHexSeed(mnemonicOrSecretSeed, _type!);
    }
    address = keypair!.address;
  }

  Future<void> disconnect() async {
    if (provider != null && provider!.isConnected()) {
      await api.disconnect();
    }
  }

  List<int> _getMyEventsPhaseId(List<dynamic> events) {
    final Set<int> phaseIds = Set();
    for (final event in events) {
      if (event["event"] != null &&
          event["event"].key == "TransactionPayment" &&
          ListEquality().equals(
              event["event"].value.value[0], keypair!.publicKey.bytes)) {
        phaseIds.add(event['phase'].value);
      }
    }
    return phaseIds.toList();
  }

  List<dynamic> _filterMyEvents(List<dynamic> events) {
    final List<dynamic> myEvents = [];
    final phaseIds = _getMyEventsPhaseId(events);
    for (final event in events) {
      if (phaseIds.contains(event["phase"].value)) {
        myEvents.add(event["event"]);
      }
    }
    return myEvents;
  }

  Future<void> apply(RuntimeCall runtimeCall) async {
    if (provider == null) {
      throw Exception("Provider is not initialized");
    }
    final stateApi = StateApi(provider!);

    final runtimeVersion = await stateApi.getRuntimeVersion();

    final specVersion = runtimeVersion.specVersion;

    final transactionVersion = runtimeVersion.transactionVersion;

    final block = await provider!.send('chain_getBlock', []);

    final blockNumber = int.parse(block.result['block']['header']['number']);

    final blockHash = (await provider!.send('chain_getBlockHash', []))
        .result
        .replaceAll('0x', '');

    final genesisHash = (await provider!.send('chain_getBlockHash', [0]))
        .result
        .replaceAll('0x', '');

    final encodedCall = runtimeCall.encode();
    final nonce = await api.rpc.system.accountNextIndex(address);
    final metadata = await api.rpc.state.getMetadata();

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

    final signature = keypair!.sign(payload);

    final signatureType = _keypairType == "sr25519"
        ? SignatureType.sr25519
        : SignatureType.ed25519;
    final extrinsic = ExtrinsicPayload(
            signer: Uint8List.fromList(keypair!.bytes()),
            method: encodedCall,
            signature: signature,
            eraPeriod: 64,
            blockNumber: blockNumber,
            nonce: nonce,
            tip: 0)
        .encode(api.registry, signatureType);

    Completer<void> _complete = Completer();
    final StreamSubscription subscription =
        await AuthorApi(provider!).submitAndWatchExtrinsic(
      extrinsic,
      (p0) async {
        if (p0.type == 'inBlock') {
          print("Extrinsic result: ${p0.type} - ${p0.value}");
          final finalizedBlockHash = p0.value;
          final moduleHash =
              Hasher.twoxx128.hash(Uint8List.fromList('System'.codeUnits));
          final storageHash =
              Hasher.twoxx128.hash(Uint8List.fromList('Events'.codeUnits));
          Uint8List storageKey = Uint8List.fromList([
            ...moduleHash,
            ...storageHash,
          ]);
          final finalizedBlockHashBytes = hexToBytes(finalizedBlockHash);
          final changes = await stateApi
              .queryStorageAt([storageKey], at: finalizedBlockHashBytes);
          if (changes != Null && changes.isNotEmpty) {
            for (var changeSet in changes) {
              for (var change in changeSet.changes) {
                Uint8List key = change.key;
                Uint8List value = change.value!;

                final input = Input.fromBytes(value);
                final List<dynamic> decodedEvents =
                    metadata.chainInfo.scaleCodec.decode('EventCodec', input);
                final myEvents = _filterMyEvents(decodedEvents);
                bool targetModuleEventOccur = false;
                for (final event in myEvents) {
                  if (event.key == "System" &&
                      event.value.key == "ExtrinsicFailed") {
                    final error = event.value.value["DispatchError"].value;
                    final errorType = event.value.value["DispatchError"].key;
                    String? errorName;
                    try {
                      if (errorType == "Module")
                        errorName = Errors(
                                moduleIndex: error["index"],
                                errorIndex:
                                    dynamicListToUint8List(error["error"]))
                            .decode();
                    } catch (e) {
                      _complete.completeError("Failed to apply extrinsic: $e");
                    }
                    if (errorName != null)
                      _complete.completeError(
                          "Failed to apply extrinsic: $errorName");
                    else
                      _complete.completeError(
                          "Failed to apply extrinsic: ${errorType}${error}");
                  } else if (event.key == "System" &&
                      event.value.key == "ExtrinsicSuccess") {
                    print("Extrinsic is applied successfully");
                    _complete.complete();
                    return;
                  }
                }
              }
            }
          } else {
            _complete.completeError("No events found in the block");
          }
        }
      },
    );
    await _complete.future;
    subscription.cancel();
  }
}
