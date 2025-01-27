import 'package:fmi_core/models/attachment/fmi_attachment_type_options.dart';

class FmiSignatureDialogOptions extends FmiAttachmentTypeOptions {
  String? title;
  bool collectComment;
  bool collectAttachment;

  FmiSignatureDialogOptions(
      {this.collectComment = false,
      this.collectAttachment = false,
      this.title,
      bool imageAttachmentOnly = false})
      : super(imageAttachmentOnly);
}
