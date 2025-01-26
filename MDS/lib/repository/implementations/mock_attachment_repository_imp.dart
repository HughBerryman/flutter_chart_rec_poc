import 'dart:typed_data';

import 'package:fmi_core/fmi_core.dart';

class MockAttachmentRepositoryImpl implements AttachmentRepository {
  @override
  Future<Attachment> postAttachment(String name, Uint8List bytes) async {
    return Attachment(name: name, bytes: bytes, size: 128);
  }

  @override
  Future<Uint8List> getAttachment(String fileId) async {
    return Uint8List(225);
  }
}
