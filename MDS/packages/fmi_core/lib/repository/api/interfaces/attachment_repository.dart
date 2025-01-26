import 'dart:typed_data';

import 'package:fmi_core/models/attachment/attachment_model.dart';

abstract class AttachmentRepository {
  Future<Attachment> postAttachment(String name, Uint8List bytes);
  Future<Uint8List> getAttachment(String fileId);
}
