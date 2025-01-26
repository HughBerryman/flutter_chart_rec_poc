import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

/// T generic represents the dialog result type
/// G generic represent dialog options passed to the dialog
class FmiMultiDialogIconButton<T, G> extends StatefulWidget {
  const FmiMultiDialogIconButton(
      {Key? key,
      this.items,
      this.disabled = false,
      this.baseDialogIconButtonFactory,
      this.onSelectedChanged})
      : super(key: key);

  final bool disabled;
  final List<FmiMultiDialogIconButtonModel<T, G>>? items;
  final BaseFmiDialogFactory<T, G>? baseDialogIconButtonFactory;
  final Function(List<FmiMultiDialogIconButtonResultModel> values)?
      onSelectedChanged;

  @override
  State<FmiMultiDialogIconButton> createState() =>
      _FmiMultiDialogIconButtonState();
}

class _FmiMultiDialogIconButtonState<T, G>
    extends State<FmiMultiDialogIconButton<T, G>> {
  final List<FmiMultiDialogIconButtonResultModel<T>> _values = [];

  @override
  void initState() {
    if (widget.items != null) {
      //set initial value to _values
      for (var item in widget.items!) {
        if (item.value != null) {
          modifyValues(
              item.value!, item.initialIsSelected, item.initialDialogData);
        }
      }
    }

    super.initState();
  }

  onChangedProcess(String? value, bool isSelected, T? dialogResult) {
    if (value != null) {
      modifyValues(value, isSelected, dialogResult);

      if (widget.onSelectedChanged != null) {
        widget.onSelectedChanged!(_values);
      }
    }
  }

  modifyValues(String value, bool isSelected, T? dialogResult) {
    var data = _values.where((e) => e.value == value);

    if (isSelected == true) {
      if (data.isEmpty) {
        _values.add(FmiMultiDialogIconButtonResultModel<T>(
            value: value, dialogData: dialogResult));
      } else {
        _values[_values.indexWhere((e) => e.value == value)].dialogData =
            dialogResult;
      }
    } else {
      if (data.isNotEmpty) {
        _values.removeWhere((e) => e.value == value);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.items != null) {
      return Wrap(
        spacing: FMIThemeBase.baseLineHeights2,
        runSpacing: FMIThemeBase.baseLineHeights9,
        children: widget.items!.map((item) {
          return Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FmiDialogIconButton<T, G>(
              label: item.text,
              svgIcon: item.svgIcon,
              icon: item.icon,
              iconColor: item.iconColor,
              disabled: widget.disabled,
              initialIsSelected: item.initialIsSelected,
              initialDialogData: item.initialDialogData,
              dialogOptions: item.dialogOptions,
              baseDialogIconButtonFactory: widget.baseDialogIconButtonFactory,
              onSelectedChanged: (isSelected, dialogResult) {
                onChangedProcess(item.value, isSelected, dialogResult);
              },
            ),
          );
        }).toList(),
      );
    } else {
      throw Exception("Items cannot be null!");
    }
  }
}
