// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_table_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericTableItem _$GenericTableItemFromJson(Map<String, dynamic> json) =>
    GenericTableItem(
      id: json['id'] as String,
      value: json['value'] as String,
      isNumeric: json['isNumeric'] as bool?,
    );

Map<String, dynamic> _$GenericTableItemToJson(GenericTableItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'isNumeric': instance.isNumeric,
    };
