import 'package:json_annotation/json_annotation.dart';
import 'package:poc/enums/enums.dart';

part 'content_source_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ContentSourceModel {
  String content;
  String? platform;
  String? componentName;
  Demos? component;

  ContentSourceModel({required this.content, this.platform, this.component, this.componentName});

  factory ContentSourceModel.fromJson(Map<String, dynamic> json) =>
      _$ContentSourceModelFromJson(json);
  Map<String, dynamic> toJson() => _$ContentSourceModelToJson(this);
}
