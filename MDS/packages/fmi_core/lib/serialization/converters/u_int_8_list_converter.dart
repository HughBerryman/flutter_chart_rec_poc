import 'dart:typed_data';
import 'package:json_annotation/json_annotation.dart';

class UInt8ListConverter implements JsonConverter<Uint8List?, List<dynamic>?> {
  const UInt8ListConverter();

  @override
  Uint8List? fromJson(List<dynamic>? json) {
    Uint8List? result;

    if(json != null && json.isNotEmpty){
      List<int> convertedList = json.map((val) => val as int).toList();
      result = Uint8List.fromList(convertedList);
    }

    return result;
  }

  @override
  List<int> toJson(Uint8List? object) {
    return object != null ? object.toList() : [];
  }
}