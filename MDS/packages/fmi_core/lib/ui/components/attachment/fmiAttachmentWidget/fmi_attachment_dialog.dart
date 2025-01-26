import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiAttachmentDialog extends StatefulWidget {
  const FmiAttachmentDialog({
    Key? key,
    required this.attachment,
  }) : super(key: key);

  final Attachment attachment;

  @override
  State<FmiAttachmentDialog> createState() => _FmiAttachmentDialogState();
}

class _FmiAttachmentDialogState extends State<FmiAttachmentDialog> {
  late Widget imageWidget;

  @override
  void initState() {
    if (!widget.attachment.isImage()) {
      imageWidget = const Center(
        child: Icon(
          FontAwesomeIcons.paperclip,
          size: FMIThemeBase.baseIconMedium,
        ),
      );
    } else if (widget.attachment.bytes != null) {
      imageWidget = Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: MemoryImage(widget.attachment.bytes!)),
          ));
    } else if (widget.attachment.url != null) {
      imageWidget = Center(
          child: AuthenticatedNetworkImage(
        url: widget.attachment.url!,
        width: null,
        height: null,
      ));
    } else {
      imageWidget = const Center(
          child: Icon(FontAwesomeIcons.solidCircleExclamation,
              size: FMIThemeBase.baseIconMedium));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ClosableAppBar(
        title: widget.attachment.name,
        onClose: () {
          Navigator.pop(context);
        },
      ),
      body: imageWidget,
    );
  }
}
