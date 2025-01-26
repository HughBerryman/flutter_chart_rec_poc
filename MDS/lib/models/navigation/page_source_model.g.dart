// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_source_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageSourceModel _$PageSourceModelFromJson(Map<String, dynamic> json) =>
    PageSourceModel(
      id: json['id'] as String?,
      name: json['name'] as String,
      codeContents: (json['codeContents'] as List<dynamic>?)
          ?.map((e) => ContentSourceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      designContents: (json['designContents'] as List<dynamic>?)
          ?.map((e) => ContentSourceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      route: json['route'] as String?,
      overviewContent: json['overviewContent'] as String?,
      hasOOB: json['hasOOB'] as bool? ?? false,
      view: $enumDecode(_$AssignedViewEnumMap, json['view']),
      category: $enumDecode(_$CategoryTagEnumMap, json['category']),
    )
      ..oobCodeContents = (json['oobCodeContents'] as List<dynamic>?)
          ?.map((e) => ContentSourceModel.fromJson(e as Map<String, dynamic>))
          .toList()
      ..oobDesignContents = (json['oobDesignContents'] as List<dynamic>?)
          ?.map((e) => ContentSourceModel.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PageSourceModelToJson(PageSourceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'codeContents': instance.codeContents?.map((e) => e.toJson()).toList(),
      'designContents':
          instance.designContents?.map((e) => e.toJson()).toList(),
      'oobCodeContents':
          instance.oobCodeContents?.map((e) => e.toJson()).toList(),
      'oobDesignContents':
          instance.oobDesignContents?.map((e) => e.toJson()).toList(),
      'route': instance.route,
      'overviewContent': instance.overviewContent,
      'view': _$AssignedViewEnumMap[instance.view]!,
      'category': _$CategoryTagEnumMap[instance.category]!,
      'hasOOB': instance.hasOOB,
    };

const _$AssignedViewEnumMap = {
  AssignedView.aboutView: 'aboutView',
  AssignedView.foundationView: 'foundationView',
  AssignedView.componentView: 'componentView',
  AssignedView.processView: 'processView',
  AssignedView.documentationView: 'documentationView',
  AssignedView.landingView: 'landingView',
  AssignedView.demoView: 'demoView',
  AssignedView.demoFlutterView: 'demoFlutterView',
  AssignedView.demoColorView: 'demoColorView',
  AssignedView.demoIllustrationView: 'demoIllustrationView',
  AssignedView.demoChartView: 'demoChartView',
  AssignedView.demoDataGridView: 'demoDataGridView',
  AssignedView.demoScaffoldView: 'demoScaffoldView',
  AssignedView.changelogView: 'changelogView',
};

const _$CategoryTagEnumMap = {
  CategoryTag.about: 'about',
  CategoryTag.foundations: 'foundations',
  CategoryTag.components: 'components',
  CategoryTag.processes: 'processes',
  CategoryTag.demos: 'demos',
  CategoryTag.changelog: 'changelog',
};
