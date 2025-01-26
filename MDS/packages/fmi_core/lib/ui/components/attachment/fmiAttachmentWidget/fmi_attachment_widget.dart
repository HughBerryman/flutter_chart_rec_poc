import 'package:camera/camera.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiAttachmentWidget extends StatefulWidget {
  const FmiAttachmentWidget({
    Key? key,
    this.onAttachmentsChanged,
    this.initialAttachments,
    this.isEditable = true,
    this.imageOnly = false,
    this.stretch = false,
    this.label,
    this.canDownload = false,
  }) : super(key: key);

  final Function(List<Attachment> attachments)? onAttachmentsChanged;
  final List<Attachment>? initialAttachments;
  final bool isEditable;
  final bool imageOnly;
  final bool stretch;
  final String? label;
  final bool canDownload;

  @override
  State<FmiAttachmentWidget> createState() => _FmiAttachmentWidgetState();
}

class _FmiAttachmentWidgetState extends State<FmiAttachmentWidget> {
  List<Attachment> stagedAttachments = [];
  int imageNumber = 0;
  final _popupMenu = GlobalKey<PopupMenuButtonState>();

  @override
  void initState() {
    super.initState();

    if (widget.initialAttachments != null &&
        widget.initialAttachments!.isNotEmpty) {
      stagedAttachments = widget.initialAttachments!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: widget.stretch || stagedAttachments.isNotEmpty
          ? MainAxisSize.max
          : MainAxisSize.min,
      children: [
        Expanded(
          flex: widget.stretch || stagedAttachments.isNotEmpty ? 1 : 0,
          child: Column(
            children: [
              for (Attachment stagedAttachment in stagedAttachments)
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: FMIThemeBase.baseGapLarge),
                  child: FmiAttachmentPreviewWidget(
                    requiresAuth: true,
                    attachment: stagedAttachment,
                    canDelete: widget.isEditable,
                    onDelete: () {
                      setState(() {
                        stagedAttachments.remove(stagedAttachment);

                        if (widget.onAttachmentsChanged != null) {
                          widget.onAttachmentsChanged!(stagedAttachments);
                        }
                      });
                    },
                    canDownload: widget.canDownload,
                  ),
                ),
              if (widget.isEditable)
                Row(
                  children: [
                    Expanded(
                      flex: widget.stretch ? 1 : 0,
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: PopupMenuButton(
                            key: _popupMenu,
                            padding: EdgeInsets.zero,
                            icon: FilledButton.icon(
                              onPressed: () {
                                _popupMenu.currentState?.showButtonMenu();
                              },
                              icon: const FaIcon(
                                FontAwesomeIcons.paperclip,
                              ),
                              label: Text(
                                widget.label ?? context.coreLocalize.attach,
                              ),
                            ),
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                  child: Text(context.coreLocalize.camera),
                                  onTap: () => openCamera(context),
                                ),
                                PopupMenuItem(
                                  child: Text(context.coreLocalize.gallery),
                                  onTap: () async {
                                    await pickFile(FileType.image);
                                  },
                                ),
                                if (!widget.imageOnly) ...[
                                  PopupMenuItem(
                                    child: Text(context.coreLocalize.files),
                                    onTap: () async {
                                      await pickFile(FileType.any);
                                    },
                                  )
                                ]
                              ];
                            },
                          )),
                    )
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> openCamera(BuildContext context) async {
    {
      try {
        imageNumber++;
        {
          await availableCameras().then((value) => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => CameraPage(
                      onCapture: (Attachment picture) {
                        setState(() {
                          stagedAttachments.add(picture);

                          if (widget.onAttachmentsChanged != null) {
                            widget.onAttachmentsChanged!(stagedAttachments);
                          }
                        });
                      },
                      imageNumber: imageNumber,
                      cameras: value))));
        }
      } on CameraException catch (e) {
        debugPrint('Error occured while trying to access the camera: $e');
        showCameraErrorDialog(context: context);
      }
    }
  }

  Future<void> pickFile(FileType fileType) async {
    FilePickerResult? filePickerResult = await FilePicker.platform.pickFiles(
      type: fileType,
      allowMultiple: true,
      withData: true,
    );

    if (filePickerResult != null) {
      List<Attachment> tempAttachments = [];

      for (PlatformFile file in filePickerResult.files) {
        if (file.bytes != null) {
          tempAttachments.add(Attachment(
            name: file.name,
            bytes: file.bytes!,
            size: file.size,
          ));
        }
      }

      setState(() {
        stagedAttachments.addAll(tempAttachments);

        if (widget.onAttachmentsChanged != null) {
          widget.onAttachmentsChanged!(stagedAttachments);
        }
      });
    }
  }
}
