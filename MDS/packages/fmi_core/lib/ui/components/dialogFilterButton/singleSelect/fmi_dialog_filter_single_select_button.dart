import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

@Deprecated('Deprecated - Replace with OOB Components to be removed in the next 30 days')
class FmiDialogFilterSingleSelectButton<T, G> extends StatelessWidget {
  const FmiDialogFilterSingleSelectButton(
      {Key? key,
      required this.label,
      required this.icon,
      required this.onChanged,
      required this.options,
      this.initialSelected})
      : super(key: key);

  final String label;
  final IconData icon;
  final Function(FilterOption<T, G>?) onChanged;
  final List<FilterOption<T, G>> options;
  final FilterOption<T, G>? initialSelected;

  @override
  Widget build(BuildContext context) {
    return FmiFilterButton(
        icon: icon, label: label, onPressed: (context) => onPressed(context));
  }

  void onPressed(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return FmiDialogFilterSingleSelect(
            options: options,
            initialSelected: initialSelected,
            onChanged: onChanged,
          );
        });
  }
}
