import 'package:tfchain_client/generated/dev/types/tfchain_runtime/runtime_call.dart';
import 'package:tfchain_client/models/terms_and_conditions.dart';
import 'package:tfchain_client/tfchain_client.dart';

class TermsAndConditions {
  final Client client;
  TermsAndConditions(this.client);

  Future<RuntimeCall> accept(AcceptOptions options) async {
    final extrinsic = await client.api.tx.tfgridModule.userAcceptTc(
        documentLink: options.documentLink, documentHash: options.documentHash);
    return extrinsic;
  }
}
