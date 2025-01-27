import 'package:flutter/material.dart';

import '../../../fmi_core.dart';

class FmiMultiInputWidget extends StatefulWidget {
  const FmiMultiInputWidget(
      {Key? key,
      this.fieldTitle,
      this.errorText,
      this.onChanged,
      this.initialValue,
      this.enabled = true})
      : super(key: key);

  final String? fieldTitle;
  final String? errorText;
  final Function(List<String>? inputValues)? onChanged;
  final List<String>? initialValue;
  final bool enabled;

  @override
  State<FmiMultiInputWidget> createState() => _FmiMultiInputWidgetState();
}

class _FmiMultiInputWidgetState extends State<FmiMultiInputWidget> {
  List<String> _selectedInputs = [];
  final TextEditingController _textEditingController = TextEditingController();
  FocusNode textFieldFocusNode = FocusNode();

  @override
  void initState() {
    if (widget.initialValue != null) {
      setState(() {
        _selectedInputs = widget.initialValue!;
      });
    }

    super.initState();
  }

  @override
  void dispose() {
    textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MouseRegion(
          cursor: widget.enabled
              ? SystemMouseCursors.click
              : SystemMouseCursors.forbidden,
          child: IgnorePointer(
            ignoring: !widget.enabled,
            child: Theme(
              data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
              child: TextField(
                focusNode: textFieldFocusNode,
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    setState(() {
                      _selectedInputs.add(value.trim());
                      _textEditingController.clear();
                      if (widget.onChanged != null) {
                        widget.onChanged!(_selectedInputs);
                      }
                      textFieldFocusNode.requestFocus();
                    });
                  }
                },
                controller: _textEditingController,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.apply(color: Theme.of(context).colorScheme.onSurface),
                decoration: InputDecoration(
                  label:
                      Text(widget.fieldTitle ?? context.coreLocalize.inputValue),
                  enabled: widget.enabled,
                  errorText: widget.errorText,
                ),
              ),
            ),
          ),
        ),
        if (_selectedInputs.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: FMIThemeBase.baseGapLarge),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: FMIThemeBase.baseGapMedium,
              children: [
                for (var selectedInput in _selectedInputs)
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: FMIThemeBase.baseGapMedium),
                    child: InputChip(
                      isEnabled: widget.enabled,
                      label: Padding(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                        child: Text(selectedInput),
                      ),
                      onDeleted: widget.enabled
                          ? () {
                              setState(() {
                                _selectedInputs.remove(selectedInput);
                                if (widget.onChanged != null) {
                                  widget.onChanged!(_selectedInputs);
                                }
                              });
                            }
                          : null,
                    ),
                  ),
              ],
            ),
          )
      ],
    );
  }
}
