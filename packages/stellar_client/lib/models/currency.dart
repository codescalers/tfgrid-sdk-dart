class Currency {
  final String assetCode;
  final String issuer;

  Currency({required this.assetCode, required this.issuer});

  Map<String, dynamic> toJson() {
    return {
      'asset_code': assetCode,
      'issuer': issuer,
    };
  }
}

class Currencies {
  late final Map<String, Currency> currencies;

  Currencies(this.currencies);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> jsonMap = {};
    currencies.forEach((key, value) {
      jsonMap[key] = value.toJson();
    });
    return jsonMap;
  }
}
