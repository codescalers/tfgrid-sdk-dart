part of '../models.dart';

void _addToQueryList(List<String> list, String key, dynamic value) {
  switch (value.runtimeType) {
    case const (String):
      list.add('$key: "$value"');
      break;
    case const (List<String>):
      final formattedList =
          (value as List<String>).map((item) => '"$item"').join(', ');
      list.add('$key: [$formattedList]');
      break;
    default:
      if (value != null) {
        list.add('$key: $value');
      }
      break;
  }
}

String _addToReturnList(String returnOptions, String key, bool value) {
  if (value != false) {
    returnOptions += key;
    returnOptions += '\n';
  }
  return returnOptions;
}

bool areAllBooleansFalse(Object object) {
  var instanceMirror = reflector.reflect(object);
  var classMirror = instanceMirror.type;

  for (var declaration in classMirror.declarations.values) {
    if (declaration is VariableMirror) {
      var value = instanceMirror.invokeGetter(declaration.simpleName);
      if (declaration.reflectedType == bool) {
        if (value == true) {
          return false;
        }
      } else if (value != null && reflector.canReflect(value)) {
        if (!areAllBooleansFalse(value)) {
          return false;
        }
      }
    }
  }

  return true;
}
