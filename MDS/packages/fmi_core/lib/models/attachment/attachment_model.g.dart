// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attachment _$AttachmentFromJson(Map<String, dynamic> json) => Attachment(
      name: json['name'] as String,
      bytes: const UInt8ListConverter().fromJson(json['bytes'] as List?),
      size: json['size'] as int,
      title: json['title'] as String?,
      type: json['type'] as String?,
      url: json['url'] as String?,
      fileID: json['fileID'] as String?,
      id: json['id'] as String? ?? "",
    );

Map<String, dynamic> _$AttachmentToJson(Attachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileID': instance.fileID,
      'name': instance.name,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url,
      'bytes': const UInt8ListConverter().toJson(instance.bytes),
      'size': instance.size,
    };
