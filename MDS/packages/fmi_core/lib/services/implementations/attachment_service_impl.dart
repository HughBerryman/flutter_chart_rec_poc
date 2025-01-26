import 'dart:typed_data';

import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';

class AttachmentServiceImpl implements AttachmentService {
  final AttachmentRepository _attachmentRepository =
      GetIt.instance.get<AttachmentRepository>();

  @override
  Future<Attachment> postAttachment(String name, Uint8List bytes) async {
    return await _attachmentRepository.postAttachment(name, bytes);
  }

  @override
  Future<Uint8List> getAttachment(String fileId) async {
    return await _attachmentRepository.getAttachment(fileId);
  }
}
