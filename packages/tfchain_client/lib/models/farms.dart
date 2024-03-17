import 'package:tfchain_client/generated/dev/types/tfchain_support/types/ip4.dart';

class QueryFarmsGetOptions {
  int id;
  QueryFarmsGetOptions({required this.id});
}

class CreateFarmOptions {
  String name;
  List<Ip4>? publicIps;

  CreateFarmOptions({
    required this.name,
    this.publicIps,
  });
}

class AddFarmIPOptions {
  int farmId;
  String ip;
  String gw;

  AddFarmIPOptions({
    required this.farmId,
    required this.ip,
    required this.gw,
  });
}
