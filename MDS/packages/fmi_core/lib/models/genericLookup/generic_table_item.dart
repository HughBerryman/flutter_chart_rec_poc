export 'page_set_generic_lookup_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generic_table_item.g.dart';

@JsonSerializable()
class GenericTableItem {
  String id;
  String value;
  bool? isNumeric;

  GenericTableItem({required this.id, required this.value, this.isNumeric});

  factory GenericTableItem.fromJson(Map<String, dynamic> json) =>
      _$GenericTableItemFromJson(json);
  Map<String, dynamic> toJson() => _$GenericTableItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
