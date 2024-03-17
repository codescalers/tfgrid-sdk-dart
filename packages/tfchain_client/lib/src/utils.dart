bool isValidSeed(String seed) {
  final RegExp hexRegex = RegExp(r'^[0-9a-fA-F]+$');
  return hexRegex.hasMatch(seed);
}
