import 'package:json_annotation/json_annotation.dart';
import 'package:poc/enums/enums.dart';
import 'package:poc/models/navigation/models.dart';

part 'page_source_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PageSourceModel {
  String? id;
  String name;
  List<ContentSourceModel>? codeContents;
  List<ContentSourceModel>? designContents;
  List<ContentSourceModel>? oobCodeContents;
  List<ContentSourceModel>? oobDesignContents;
  String? route;
  String? overviewContent;
  AssignedView view;
  CategoryTag category;
  bool? hasOOB;

  PageSourceModel(
      {this.id,
      required this.name,
      this.codeContents,
      this.designContents,
      this.route,
      this.overviewContent,
      this.hasOOB = false,
      required this.view,
      required this.category});

  factory PageSourceModel.fromJson(Map<String, dynamic> json) =>
      _$PageSourceModelFromJson(json);

  Map<String, dynamic> toJson() => _$PageSourceModelToJson(this);
}
