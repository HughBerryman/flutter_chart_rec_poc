import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';

class RadioButtonGroupWidget extends StatefulWidget {
  const RadioButtonGroupWidget(
      {Key? key,
      required this.radioOptions,
      this.isHorizontal = false,
      this.onSelectionChanged,
      this.initialValue,
      this.enabled = true,
      this.currentSelection})
      : super(key: key);

  final List<String> radioOptions;
  final bool isHorizontal;
  final Function(String?)? onSelectionChanged;
  final String? initialValue;
  final bool enabled;

  /// This is used to assist with resetting when a parent
  /// widget is aware of value and trying to reset state
  final String? currentSelection;

  @override
  State<RadioButtonGroupWidget> createState() => _RadioButtonGroupWidgetState();
}

class _RadioButtonGroupWidgetState extends State<RadioButtonGroupWidget> {
  String? _selection;

  @override
  void didUpdateWidget(RadioButtonGroupWidget oldWidget) {
    if (oldWidget.currentSelection != null && widget.currentSelection == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        setSelection(null);
      });
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    setState(() {
      _selection = widget.initialValue;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> radioButtonOptions = [];

    for (int i = 0; i < widget.radioOptions.length; i++) {
      radioButtonOptions.add(
        Padding(
          padding: widget.isHorizontal
              ? const EdgeInsets.only(right: FMIThemeBase.baseGapMedium)
              : i == widget.radioOptions.length - 1
                  ? const EdgeInsets.all(0)
                  : const EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: GestureDetector(
            onTap: widget.enabled
                ? () => setSelection(widget.radioOptions[i])
                : null,
            child: Row(
                mainAxisSize:
                    widget.isHorizontal ? MainAxisSize.min : MainAxisSize.max,
                children: [
                  Radio<String>(
                    toggleable: true,
                    value: widget.radioOptions[i],
                    groupValue: _selection,
                    visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity,
                    ),
                    onChanged: widget.enabled
                        ? (String? value) => setSelection(value)
                        : null,
                    splashRadius: FMIThemeBase.baseGap6,
                  ),
                  Flexible(
                    child: Text(
                      widget.radioOptions[i],
                      style: Theme.of(context).textTheme.labelMedium?.apply(
                          color: Theme.of(context).colorScheme.onSurface),
                    ),
                  ),
                ]),
          ),
        ),
      );
    }

    return widget.isHorizontal
        ? Wrap(alignment: WrapAlignment.start, children: radioButtonOptions)
        : Column(children: radioButtonOptions);
  }

  void setSelection(String? selection) {
    if (widget.onSelectionChanged != null) {
      widget.onSelectionChanged!(selection);
    }

    setState(() {
      _selection = selection;
    });
  }
}
