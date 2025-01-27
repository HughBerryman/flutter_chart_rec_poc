export 'page_set_generic_lookup_model.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'page_set_generic_lookup_model.g.dart';

@JsonSerializable()
class PageSetGenericLookupModel {
  List<GenericTableItems> tableItems;
  bool more;
  int? total;
  String? parentDataSource;

  PageSetGenericLookupModel({
    required this.tableItems,
    required this.more,
    this.total,
  });

  factory PageSetGenericLookupModel.fromJson(Map<String, dynamic> json) =>
      _$PageSetGenericLookupModelFromJson(json);
  Map<String, dynamic> toJson() => _$PageSetGenericLookupModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
