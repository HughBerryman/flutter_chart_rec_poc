// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_lookup_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericLookupDataOptions _$GenericLookupDataOptionsFromJson(
        Map<String, dynamic> json) =>
    GenericLookupDataOptions(
      id: json['id'] as String,
      value: json['value'] as String,
      query:
          (json['query'] as List<dynamic>?)?.map((e) => e as String).toList(),
      queryPageSize: json['queryPageSize'] as int?,
      display: (json['display'] as List<dynamic>)
          .map((e) => GenericLookupDisplay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenericLookupDataOptionsToJson(
        GenericLookupDataOptions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'query': instance.query,
      'queryPageSize': instance.queryPageSize,
      'display': instance.display.map((e) => e.toJson()).toList(),
    };
