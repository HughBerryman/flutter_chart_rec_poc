import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class PhotoAttachmentWidget extends StatelessWidget {
  final Function(List<Attachment> attachments)? onAttachmentsChanged;
  final List<Attachment>? initialAttachments;
  final bool isEditable;
  final bool stretch;
  final String? label;
  final bool canDownload;

  const PhotoAttachmentWidget(
      {Key? key,
      this.onAttachmentsChanged,
      this.initialAttachments,
      this.isEditable = true,
      this.stretch = false,
      this.label,
      this.canDownload = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FmiAttachmentWidget(
      onAttachmentsChanged: onAttachmentsChanged,
      initialAttachments: initialAttachments,
      isEditable: isEditable,
      imageOnly: true,
      stretch: stretch,
      label: label,
      canDownload: canDownload,
    );
  }
}
