import 'package:gridproxy_client/models/farms.dart';
import 'package:gridproxy_client/models/nodes.dart';
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

      if (fieldValue is Map<String, dynamic> &&
          !_isBasicType(declaration.reflectedType)) {
        fieldValue = _fromJsonNested(declaration.reflectedType, fieldValue);
      } else if (fieldValue is List) {
        final elementType = _getElementType(declaration.reflectedType);
        if (elementType != null && !_isBasicType(elementType)) {
          fieldValue = fieldValue.map((item) {
            if (item is Map<String, dynamic>) {
              return _fromJsonNested(elementType, item);
            }
            return item;
          }).toList();
          fieldValue = _castListToType(fieldValue, elementType);
        }
      }
      namedParams[Symbol(fieldName)] = fieldValue;
    }
  });

  T instance = classMirror.newInstance('', [], namedParams) as T;
  return instance;
}

dynamic _getElementType(Type type) {
  return typeMapping[type.toString()];
}

List<dynamic> _castListToType(List<dynamic> list, Type elementType) {
  if (elementType == PublicIp) {
    return list.map((item) => item as PublicIp).toList();
  } else if (elementType == Memory) {
    if (list.isNotEmpty) {
      return list.map((item) => item as Memory).toList();
    }

    return [];
  } else if (elementType == Processor) {
    return list.map((item) => item as Processor).toList();
  } else {
    throw ArgumentError("Unsupported element type: $elementType");
  }
}

dynamic _getDefaultValue(Type type) {
  if (type == int) return 0;
  if (type == double) return 0.0;
  if (type == String) return '';
  if (type == bool) return false;
  return null;
}

bool _isBasicType(Type type) {
  return type == int || type == double || type == String || type == bool;
}

dynamic _fromJsonNested(Type type, Map<String, dynamic> json) {
  ClassMirror classMirror = reflector.reflectType(type) as ClassMirror;

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

      if (fieldValue is Map<String, dynamic> &&
          !_isBasicType(declaration.reflectedType)) {
        fieldValue = _fromJsonNested(declaration.reflectedType, fieldValue);
      }

      namedParams[Symbol(fieldName)] = fieldValue;
    }
  });
  return classMirror.newInstance('', [], namedParams);
}

final typeMapping = {
  'List<PublicIp>': PublicIp,
  'List<Memory>': Memory,
  'List<Processor>': Processor
};
