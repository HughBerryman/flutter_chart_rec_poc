import 'package:json_annotation/json_annotation.dart';

part 'generic_lookup_display.g.dart';

@JsonSerializable(explicitToJson: true)
class GenericLookupDisplay {
  String field;
  String title;

  GenericLookupDisplay({required this.field, required this.title});

  factory GenericLookupDisplay.fromJson(Map<String, dynamic> json) =>
      _$GenericLookupDisplayFromJson(json);
  Map<String, dynamic> toJson() => _$GenericLookupDisplayToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
