// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_set_generic_lookup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageSetGenericLookupModel _$PageSetGenericLookupModelFromJson(
        Map<String, dynamic> json) =>
    PageSetGenericLookupModel(
      tableItems: (json['tableItems'] as List<dynamic>)
          .map((e) => GenericTableItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      more: json['more'] as bool,
      total: json['total'] as int?,
    )..parentDataSource = json['parentDataSource'] as String?;

Map<String, dynamic> _$PageSetGenericLookupModelToJson(
        PageSetGenericLookupModel instance) =>
    <String, dynamic>{
      'tableItems': instance.tableItems,
      'more': instance.more,
      'total': instance.total,
      'parentDataSource': instance.parentDataSource,
    };
