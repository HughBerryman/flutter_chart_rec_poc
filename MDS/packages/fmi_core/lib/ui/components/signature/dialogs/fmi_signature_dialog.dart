import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signature/signature.dart';

import '../../../../fmi_core.dart';

class FmiSignatureDialog
    extends BaseFmiDialog<FmiSignatureDialogResult, FmiSignatureDialogOptions> {
  const FmiSignatureDialog(
      {Key? key,
      required Function(FmiSignatureDialogResult dialogResult) onSave,
      required bool isEditable,
      required FmiSignatureDialogResult? initValue,
      required FmiSignatureDialogOptions? dialogOptions,
      this.showSaveAsSubmit = false,
      this.canDownload = false})
      : super(
            key: key,
            onSave: onSave,
            isEditable: isEditable,
            initValue: initValue,
            dialogOptions: dialogOptions);

  final bool showSaveAsSubmit;
  final bool canDownload;

  @override
  State<FmiSignatureDialog> createState() => _FmiSignatureDialogState();
}

class _FmiSignatureDialogState extends State<FmiSignatureDialog> {
  bool hasComment = false;
  List<Attachment>? _attachments;
  List<Attachment>? _initialAttachments;
  final TextEditingController _commentController = TextEditingController();
  String? signatureErrorText;
  List<Point>? currentPoints;
  List<Point>? _initialPoints;

  @override
  void initState() {
    if (widget.initValue?.comment != null) {
      _commentController.text = widget.initValue!.comment!;
    }

    hasComment = _commentController.text.isNotEmpty;

    if (widget.initValue?.attachments != null) {
      _initialAttachments = [...widget.initValue!.attachments!];
      _attachments = [...widget.initValue!.attachments!];
    }

    if (widget.initValue?.points != null) {
      currentPoints = widget.initValue!.points;
      _initialPoints = widget.initValue!.points;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ClosableAppBar(
          title: widget.dialogOptions != null &&
                  widget.dialogOptions!.title != null
              ? widget.dialogOptions!.title!
              : context.coreLocalize.signature,
          onClose: () {
            Navigator.pop(context);
          },
          onSave: widget.isEditable && !widget.showSaveAsSubmit ? onSave : null,
        ),
        bottomNavigationBar: widget.showSaveAsSubmit
            ? Container(
                height: 60,
                color: Theme.of(context)
                    .colorScheme
                    .fmiBaseThemeAltSurfaceInverseAltSurface,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.isEditable)
                      Flexible(
                        child: FractionallySizedBox(
                            widthFactor: 0.6,
                            child: FilledButton(
                              child: Text(context.coreLocalize.submit),
                              onPressed: onSave,
                            )),
                      )
                  ],
                ),
              )
            : null,
        body: Padding(
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingLarge),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.dialogOptions != null &&
                    widget.dialogOptions!.collectComment)
                  Padding(
                    padding:
                        const EdgeInsets.only(top: FMIThemeBase.baseGapMedium),
                    child: Theme(
                      data: FmiInputDecorationTheme.defaultOutlineBorderTheme(
                          context),
                      child: TextField(
                        controller: _commentController,
                        onChanged: (comment) {
                          setState(() {
                            hasComment = comment.isNotEmpty;
                          });
                        },
                        enabled: widget.isEditable,
                        maxLines: null,
                        decoration: InputDecoration(
                            hintText: context.coreLocalize.comment,
                            suffixIcon: widget.isEditable && hasComment
                                ? IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      _commentController.clear();

                                      setState(() {
                                        hasComment = false;
                                      });
                                    },
                                    icon: const Icon(
                                      FontAwesomeIcons.xmark,
                                      size: FMIThemeBase.baseIconSmall,
                                    ),
                                  )
                                : null),
                      ),
                    ),
                  ),
                if (widget.dialogOptions != null &&
                    widget.dialogOptions!.collectAttachment)
                  Padding(
                    padding:
                        const EdgeInsets.only(top: FMIThemeBase.baseGapXLarge),
                    child: FmiAttachmentWidget(
                      isEditable: widget.isEditable,
                      imageOnly: widget.dialogOptions!.imageAttachmentOnly,
                      onAttachmentsChanged: (attachments) {
                        _attachments =
                            attachments.isNotEmpty ? attachments : null;
                      },
                      initialAttachments: _initialAttachments,
                      canDownload: widget.canDownload,
                    ),
                  ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: FMIThemeBase.baseGapXLarge),
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: FormField(builder: (_) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          enabled: widget.isEditable,
                          errorStyle: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .fmiBaseThemeDangerDanger,
                          ),
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorText: signatureErrorText,
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context)
                                    .colorScheme
                                    .fmiBaseThemeDangerDanger,
                                width: 1.0),
                          ),
                        ),
                        child: FmiSignatureCanvas(
                          canvasHeight: MediaQuery.of(context).size.height *
                              .55, // Signature canvas requires a height definition to avoid overflow
                          context: context,
                          enabled: widget.isEditable,
                          initialPoints: _initialPoints,
                          onSignatureChanged: (points) {
                            currentPoints = points;

                            if (currentPoints != null &&
                                currentPoints!.isNotEmpty) {
                              setState(() {
                                signatureErrorText = null;
                              });
                            }
                          },
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  onSave() {
    if (currentPoints != null && currentPoints!.isNotEmpty) {
      widget.onSave(FmiSignatureDialogResult(
          comment: widget.dialogOptions != null &&
                  widget.dialogOptions!.collectComment
              ? _commentController.text
              : null,
          attachments: _attachments,
          points: currentPoints));

      Navigator.pop(context);
    } else {
      setState(() {
        signatureErrorText = context.coreLocalize.signatureRequired;
      });
    }
  }
}
