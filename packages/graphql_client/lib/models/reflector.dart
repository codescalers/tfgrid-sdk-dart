import 'package:reflectable/reflectable.dart';

class Reflector extends Reflectable {
  const Reflector()
      : super(
            invokingCapability,
            declarationsCapability,
            typeCapability,
            reflectedTypeCapability,
            typeRelationsCapability,
            libraryCapability);
}

const reflector = Reflector();
