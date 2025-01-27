// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_set_employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageSetEmployee _$PageSetEmployeeFromJson(Map<String, dynamic> json) =>
    PageSetEmployee(
      items: (json['items'] as List<dynamic>)
          .map((e) => Employee.fromJson(e as Map<String, dynamic>))
          .toList(),
      more: json['more'] as bool? ?? false,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$PageSetEmployeeToJson(PageSetEmployee instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'more': instance.more,
      'total': instance.total,
    };
