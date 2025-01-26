import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class SampleFmiDialog
    extends BaseFmiDialog<SampleFmiDialogResult, SampleFmiDialogOptions> {
  const SampleFmiDialog(
      {Key? key,
      required Function(SampleFmiDialogResult dialogResult) onSave,
      required bool isEditable,
      required SampleFmiDialogResult? initValue,
      required SampleFmiDialogOptions? dialogOptions})
      : super(
            key: key,
            onSave: onSave,
            isEditable: isEditable,
            initValue: initValue,
            dialogOptions: dialogOptions);

  @override
  State<SampleFmiDialog> createState() => _SampleFmiDialogState();
}

class _SampleFmiDialogState extends State<SampleFmiDialog> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    if (widget.initValue?.response != null) {
      _textEditingController.text = widget.initValue!.response!;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ClosableAppBar(
        title: widget.dialogOptions != null
            ? widget.dialogOptions!.title
            : context.coreLocalize.sample,
        onClose: () {
          Navigator.pop(context);
        },
        onSave: widget.isEditable
            ? () {
                widget.onSave(SampleFmiDialogResult(
                    response: _textEditingController.text));

                Navigator.pop(context);
              }
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(FMIThemeBase.basePaddingLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: FMIThemeBase.baseGapMedium),
              child: Theme(
                data:
                    FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
                child: TextField(
                  enabled: widget.isEditable,
                  maxLines: null,
                  controller: _textEditingController,
                  decoration: InputDecoration(
                      hintText: context.coreLocalize.howWasYourDay),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
