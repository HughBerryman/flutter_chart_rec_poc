import 'package:json_annotation/json_annotation.dart';
import 'package:poc/models/models.dart';

part 'category_source_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CategorySourceModel {
  String name;
  List<PageSourceModel> pages;

  CategorySourceModel({required this.name, required this.pages});

  PageSourceModel getPageSource(String pageName) {
    late PageSourceModel pageSource;

    try {
      for (var page in pages) {
        if (page.name.toLowerCase() == pageName.toLowerCase()) {
          pageSource = page;
          return pageSource;
        }
      }
    } catch (e) {
      throw Exception('Page Source not found $e');
    }
    return pageSource;
  }

  factory CategorySourceModel.fromJson(Map<String, dynamic> json) =>
      _$CategorySourceModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategorySourceModelToJson(this);
}
