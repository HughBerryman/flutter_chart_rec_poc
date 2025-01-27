import 'dart:typed_data';

import '../../models/attachment/attachment_model.dart';

abstract class AttachmentService {
  Future<Attachment> postAttachment(String name, Uint8List bytes);
  Future<Uint8List> getAttachment(String fileId);
}
