// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_source_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategorySourceModel _$CategorySourceModelFromJson(Map<String, dynamic> json) =>
    CategorySourceModel(
      name: json['name'] as String,
      pages: (json['pages'] as List<dynamic>)
          .map((e) => PageSourceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategorySourceModelToJson(
        CategorySourceModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'pages': instance.pages.map((e) => e.toJson()).toList(),
    };
