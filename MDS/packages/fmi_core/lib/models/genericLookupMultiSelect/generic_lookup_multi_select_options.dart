import 'package:json_annotation/json_annotation.dart';
import '../genericLookup/generic_lookup_display.dart';

part 'generic_lookup_multi_select_options.g.dart';

@JsonSerializable(explicitToJson: true)
class GenericLookupMultiSelectDataOptions {
  String id;
  String value;
  List<String>? query;
  int? queryPageSize;
  List<GenericLookupDisplay> display;
  String? queryParameter;

  GenericLookupMultiSelectDataOptions(
      {required this.id,
      required this.value,
      this.query,
      this.queryPageSize,
      required this.display,
      this.queryParameter});

  factory GenericLookupMultiSelectDataOptions.fromJson(
          Map<String, dynamic> json) =>
      _$GenericLookupMultiSelectDataOptionsFromJson(json);
  Map<String, dynamic> toJson() =>
      _$GenericLookupMultiSelectDataOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
