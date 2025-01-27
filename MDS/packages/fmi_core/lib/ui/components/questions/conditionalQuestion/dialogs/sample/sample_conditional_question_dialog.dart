import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';


class SampleConditionalQuestionDialog extends BaseConditionalQuestionDialog<
    SampleConditionalQuestionDialogResult,
    SampleConditionalQuestionDialogMetadata> {
  const SampleConditionalQuestionDialog({
    Key? key,
    required ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>
        conditionalQuestionButton,
    required Function(ConditionalQuestionButton button, String? badgeText,
            SampleConditionalQuestionDialogResult dialogResult)
        onSave,
    required bool isEditable,
    required SampleConditionalQuestionDialogResult? initValue,
  }) : super(
            key: key,
            onSave: onSave,
            isEditable: isEditable,
            conditionalQuestionButton: conditionalQuestionButton,
            initValue: initValue);

  @override
  State<SampleConditionalQuestionDialog> createState() =>
      _SampleConditionalQuestionDialogState();
}

class _SampleConditionalQuestionDialogState
    extends State<SampleConditionalQuestionDialog> {
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
        title: widget.conditionalQuestionButton.dialogOptions != null
            ? widget.conditionalQuestionButton.dialogOptions!.title
            : context.coreLocalize.sample,
        onClose: () {
          Navigator.pop(context);
        },
        onSave: widget.isEditable
            ? () {
                widget.onSave(
                    widget.conditionalQuestionButton,
                    "1",
                    SampleConditionalQuestionDialogResult(
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
