import 'dart:typed_data';
import 'package:convert/convert.dart';

bool isValidSeed(String seed) {
  final RegExp hexRegex = RegExp(r'(0[xX])?[0-9a-fA-F]+');
  return hexRegex.hasMatch(seed);
}

Uint8List dynamicListToUint8List(dynamicList) {
  List<int> intList = dynamicList.cast<int>().toList();
  Uint8List data = Uint8List.fromList(intList);
  return data;
}

Uint8List hexToBytes(String hexString) {
  if (hexString.startsWith('0x')) {
    hexString = hexString.substring(2);
  }
  return Uint8List.fromList(hex.decode(hexString));
}
