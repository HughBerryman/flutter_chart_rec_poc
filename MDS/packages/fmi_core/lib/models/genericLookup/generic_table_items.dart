export 'page_set_generic_lookup_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'generic_table_item.dart';

part 'generic_table_items.g.dart';

@JsonSerializable()
class GenericTableItems {
  List<GenericTableItem> columns;

  GenericTableItems({required this.columns});

  factory GenericTableItems.fromJson(Map<String, dynamic> json) =>
      _$GenericTableItemsFromJson(json);
  Map<String, dynamic> toJson() => _$GenericTableItemsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
