import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

@Deprecated('Deprecated - Replace with OOB Components to be removed in the next 30 days')
class FmiDialogFilterMultiSelectButton<T, G> extends StatelessWidget {
  const FmiDialogFilterMultiSelectButton(
      {Key? key,
      required this.label,
      required this.icon,
      required this.onSave,
      required this.options,
      required this.initialSelected})
      : super(key: key);

  final String label;
  final IconData icon;
  final Function(List<FilterOption<T, G>>) onSave;
  final List<FilterOption<T, G>> options;
  final List<FilterOption<T, G>> initialSelected;

  @override
  Widget build(BuildContext context) {
    return FmiFilterButton(
        icon: icon, label: label, onPressed: (context) => onPressed(context));
  }

  void onPressed(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return FmiDialogFilterMultiSelect(
            options: options,
            initialSelected: initialSelected,
            onSave: onSave,
          );
        });
  }
}
