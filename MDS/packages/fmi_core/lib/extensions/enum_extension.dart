import 'package:fmi_core/fmi_core.dart';

extension EnumByName<T extends Enum> on Iterable<T> {
  /// Finds the enum value in this list with name [name].
  ///
  /// Goes through this collection looking for an enum with
  /// name [name], as reported by [EnumName.name].
  /// Returns the first value with the given name. If value is not found returns null.
  T? getEnumByName(String name) {
    T? result;

    for (var value in this) {
      if (value.name == name) {
        result = value;
      }
    }

    return result;
  }
}

extension BaseLayerTypeToString on BaseLayerType {
  String getString() {
    switch(this) {
      case BaseLayerType.satellite:
        return "s";
      case BaseLayerType.street:
        return "m";
      case BaseLayerType.terrain:
        return "p";
    }
  }
}
