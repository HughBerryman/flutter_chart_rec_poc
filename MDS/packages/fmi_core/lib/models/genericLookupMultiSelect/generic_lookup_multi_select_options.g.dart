// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_lookup_multi_select_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericLookupMultiSelectDataOptions
    _$GenericLookupMultiSelectDataOptionsFromJson(Map<String, dynamic> json) =>
        GenericLookupMultiSelectDataOptions(
          id: json['id'] as String,
          value: json['value'] as String,
          query: (json['query'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          queryPageSize: (json['queryPageSize'] as num?)?.toInt(),
          display: (json['display'] as List<dynamic>)
              .map((e) =>
                  GenericLookupDisplay.fromJson(e as Map<String, dynamic>))
              .toList(),
          queryParameter: json['queryParameter'] as String?,
        );

Map<String, dynamic> _$GenericLookupMultiSelectDataOptionsToJson(
        GenericLookupMultiSelectDataOptions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'query': instance.query,
      'queryPageSize': instance.queryPageSize,
      'display': instance.display.map((e) => e.toJson()).toList(),
      'queryParameter': instance.queryParameter,
    };
