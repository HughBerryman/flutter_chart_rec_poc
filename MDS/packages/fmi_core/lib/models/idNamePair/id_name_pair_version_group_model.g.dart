// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_name_pair_version_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdNamePairVersionGroupModel _$IdNamePairVersionGroupModelFromJson(
        Map<String, dynamic> json) =>
    IdNamePairVersionGroupModel(
      id: json['id'] as String,
      name: json['name'] as String,
      version: json['version'] as String,
      groupID: json['groupID'] as String?,
      groupName: json['groupName'] as String?,
    );

Map<String, dynamic> _$IdNamePairVersionGroupModelToJson(
        IdNamePairVersionGroupModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'version': instance.version,
      'groupID': instance.groupID,
      'groupName': instance.groupName,
    };
