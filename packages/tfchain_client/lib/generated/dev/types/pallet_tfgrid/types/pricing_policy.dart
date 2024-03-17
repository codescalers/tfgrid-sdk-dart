// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i4;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i5;

import '../../sp_core/crypto/account_id32.dart' as _i3;
import 'policy.dart' as _i2;

class PricingPolicy {
  const PricingPolicy({
    required this.version,
    required this.id,
    required this.name,
    required this.su,
    required this.cu,
    required this.nu,
    required this.ipu,
    required this.uniqueName,
    required this.domainName,
    required this.foundationAccount,
    required this.certifiedSalesAccount,
    required this.discountForDedicationNodes,
  });

  factory PricingPolicy.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u32
  final int version;

  /// u32
  final int id;

  /// Vec<u8>
  final List<int> name;

  /// Policy
  final _i2.Policy su;

  /// Policy
  final _i2.Policy cu;

  /// Policy
  final _i2.Policy nu;

  /// Policy
  final _i2.Policy ipu;

  /// Policy
  final _i2.Policy uniqueName;

  /// Policy
  final _i2.Policy domainName;

  /// AccountId
  final _i3.AccountId32 foundationAccount;

  /// AccountId
  final _i3.AccountId32 certifiedSalesAccount;

  /// u8
  final int discountForDedicationNodes;

  static const $PricingPolicyCodec codec = $PricingPolicyCodec();

  _i4.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'version': version,
        'id': id,
        'name': name,
        'su': su.toJson(),
        'cu': cu.toJson(),
        'nu': nu.toJson(),
        'ipu': ipu.toJson(),
        'uniqueName': uniqueName.toJson(),
        'domainName': domainName.toJson(),
        'foundationAccount': foundationAccount.toList(),
        'certifiedSalesAccount': certifiedSalesAccount.toList(),
        'discountForDedicationNodes': discountForDedicationNodes,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is PricingPolicy &&
          other.version == version &&
          other.id == id &&
          _i5.listsEqual(
            other.name,
            name,
          ) &&
          other.su == su &&
          other.cu == cu &&
          other.nu == nu &&
          other.ipu == ipu &&
          other.uniqueName == uniqueName &&
          other.domainName == domainName &&
          _i5.listsEqual(
            other.foundationAccount,
            foundationAccount,
          ) &&
          _i5.listsEqual(
            other.certifiedSalesAccount,
            certifiedSalesAccount,
          ) &&
          other.discountForDedicationNodes == discountForDedicationNodes;

  @override
  int get hashCode => Object.hash(
        version,
        id,
        name,
        su,
        cu,
        nu,
        ipu,
        uniqueName,
        domainName,
        foundationAccount,
        certifiedSalesAccount,
        discountForDedicationNodes,
      );
}

class $PricingPolicyCodec with _i1.Codec<PricingPolicy> {
  const $PricingPolicyCodec();

  @override
  void encodeTo(
    PricingPolicy obj,
    _i1.Output output,
  ) {
    _i1.U32Codec.codec.encodeTo(
      obj.version,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.id,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.name,
      output,
    );
    _i2.Policy.codec.encodeTo(
      obj.su,
      output,
    );
    _i2.Policy.codec.encodeTo(
      obj.cu,
      output,
    );
    _i2.Policy.codec.encodeTo(
      obj.nu,
      output,
    );
    _i2.Policy.codec.encodeTo(
      obj.ipu,
      output,
    );
    _i2.Policy.codec.encodeTo(
      obj.uniqueName,
      output,
    );
    _i2.Policy.codec.encodeTo(
      obj.domainName,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      obj.foundationAccount,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      obj.certifiedSalesAccount,
      output,
    );
    _i1.U8Codec.codec.encodeTo(
      obj.discountForDedicationNodes,
      output,
    );
  }

  @override
  PricingPolicy decode(_i1.Input input) {
    return PricingPolicy(
      version: _i1.U32Codec.codec.decode(input),
      id: _i1.U32Codec.codec.decode(input),
      name: _i1.U8SequenceCodec.codec.decode(input),
      su: _i2.Policy.codec.decode(input),
      cu: _i2.Policy.codec.decode(input),
      nu: _i2.Policy.codec.decode(input),
      ipu: _i2.Policy.codec.decode(input),
      uniqueName: _i2.Policy.codec.decode(input),
      domainName: _i2.Policy.codec.decode(input),
      foundationAccount: const _i1.U8ArrayCodec(32).decode(input),
      certifiedSalesAccount: const _i1.U8ArrayCodec(32).decode(input),
      discountForDedicationNodes: _i1.U8Codec.codec.decode(input),
    );
  }

  @override
  int sizeHint(PricingPolicy obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.version);
    size = size + _i1.U32Codec.codec.sizeHint(obj.id);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.name);
    size = size + _i2.Policy.codec.sizeHint(obj.su);
    size = size + _i2.Policy.codec.sizeHint(obj.cu);
    size = size + _i2.Policy.codec.sizeHint(obj.nu);
    size = size + _i2.Policy.codec.sizeHint(obj.ipu);
    size = size + _i2.Policy.codec.sizeHint(obj.uniqueName);
    size = size + _i2.Policy.codec.sizeHint(obj.domainName);
    size = size + const _i3.AccountId32Codec().sizeHint(obj.foundationAccount);
    size =
        size + const _i3.AccountId32Codec().sizeHint(obj.certifiedSalesAccount);
    size = size + _i1.U8Codec.codec.sizeHint(obj.discountForDedicationNodes);
    return size;
  }
}
