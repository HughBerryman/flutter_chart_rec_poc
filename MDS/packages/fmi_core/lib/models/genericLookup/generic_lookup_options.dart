import 'package:json_annotation/json_annotation.dart';
import 'generic_lookup_display.dart';

part 'generic_lookup_options.g.dart';

@JsonSerializable(explicitToJson: true)
class GenericLookupDataOptions {
  String id;
  String value;
  List<String>? query;
  int? queryPageSize;
  List<GenericLookupDisplay> display;

  GenericLookupDataOptions({
    required this.id,
    required this.value,
    this.query,
    this.queryPageSize,
    required this.display,
  });

  factory GenericLookupDataOptions.fromJson(Map<String, dynamic> json) =>
      _$GenericLookupDataOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$GenericLookupDataOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}