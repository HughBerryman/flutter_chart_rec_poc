// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_table_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericTableItems _$GenericTableItemsFromJson(Map<String, dynamic> json) =>
    GenericTableItems(
      columns: (json['columns'] as List<dynamic>)
          .map((e) => GenericTableItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenericTableItemsToJson(GenericTableItems instance) =>
    <String, dynamic>{
      'columns': instance.columns,
    };
