import 'dart:typed_data';
import 'package:mime/mime.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';
import '../../serialization/converters/u_int_8_list_converter.dart';

part 'attachment_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Attachment {
  @JsonKey(includeIfNull: false)
  String id;
  String? fileID;
  String name;
  String? title;
  String? type;
  String? url;
  @UInt8ListConverter()
  Uint8List? bytes;
  int size;

  Attachment({
    required this.name,
    required this.bytes,
    required this.size,
    this.title,
    this.type,
    this.url,
    this.fileID,
    this.id = ""}){
    if(id == ""){
      id = const Uuid().v4();
    }
  }

  String getMimeType() {
    var mimeType = lookupMimeType(
      name,
    );

    return mimeType ?? "";
  }

  bool isImage() {
    var mimeType = getMimeType();

    return mimeType != "" && mimeType.startsWith("image/");
  }

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);
  Map<String, dynamic> toJson() => _$AttachmentToJson(this);
}
