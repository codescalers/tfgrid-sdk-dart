import 'package:reflectable/reflectable.dart';

class Reflector extends Reflectable {
  const Reflector()
      : super(
          invokingCapability,
          declarationsCapability,
          typeCapability,
          reflectedTypeCapability,
          newInstanceCapability,
        );
}

const reflector = Reflector();
