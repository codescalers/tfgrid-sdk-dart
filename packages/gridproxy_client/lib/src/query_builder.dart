import 'package:gridproxy_client/models/reflector.dart';
import 'package:reflectable/reflectable.dart';

Map<String, dynamic> toMap(Object object) {
  final instanceMirror = reflector.reflect(object);
  final classMirror = instanceMirror.type;

  final map = <String, dynamic>{};
  for (var declaration in classMirror.declarations.values) {
    if (declaration is VariableMirror && !declaration.isStatic) {
      final fieldName = declaration.simpleName.toString();
      final fieldValue = instanceMirror.invokeGetter(declaration.simpleName);
      if (fieldValue != null) {
        map[fieldName] = fieldValue;
      }
    }
  }
  return map;
}

T fromJson<T>(Map<String, dynamic> json) {
  ClassMirror classMirror = reflector.reflectType(T) as ClassMirror;

  Map<Symbol, dynamic> namedParams = {};

  classMirror.declarations.forEach((symbol, declaration) {
    if (declaration is VariableMirror && !declaration.isStatic) {
      final fieldName = declaration.simpleName.toString();

      var fieldValue = json.containsKey(fieldName)
          ? json[fieldName]
          : _getDefaultValue(declaration.reflectedType);

      if (declaration.reflectedType == double && fieldValue is int) {
        fieldValue = fieldValue.toDouble();
      }

      namedParams[Symbol(symbol)] = fieldValue;
    }
  });

  T instance = classMirror.newInstance('', [], namedParams) as T;
  return instance;
}

dynamic _getDefaultValue(Type type) {
  if (type == int) return 0;
  if (type == double) return 0.0;
  if (type == String) return '';
  if (type == bool) return false;
  if (type == List) return [];

  return null;
}
