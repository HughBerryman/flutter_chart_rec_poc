import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

@Deprecated('Deprecated - Replace with OOB Components to be removed in the next 30 days')
class FmiDialogFilterMultiSelect<T, G> extends StatefulWidget {
  const FmiDialogFilterMultiSelect({
    Key? key,
    required this.options,
    required this.initialSelected,
    required this.onSave,
  }) : super(key: key);

  final List<FilterOption<T, G>> options;
  final List<FilterOption<T, G>> initialSelected;
  final Function(List<FilterOption<T, G>>) onSave;

  @override
  State<FmiDialogFilterMultiSelect<T, G>> createState() =>
      _FmiDialogFilterMultiSelectState<T, G>();
}

class _FmiDialogFilterMultiSelectState<T, G>
    extends State<FmiDialogFilterMultiSelect<T, G>> {
  late List<FilterOption<T, G>> _options = [];
  late List<FilterOption<T, G>> _selectedOptions = [];

  @override
  void initState() {
    _options = widget.options;
    for (var option in widget.initialSelected) {
      _selectedOptions.add(option);
    }
    super.initState();
  }

  bool isFilterSelected(FilterOption<T, G> option) {
    return _selectedOptions.any((selected) => selected.id == option.id);
  }

  void onClear() {
    setState(() {
      _selectedOptions.clear();
    });
  }

  void onChanged(FilterOption<T, G> option) {
    setState(() {
      var selected = isFilterSelected(option);
      if (selected) {
        _selectedOptions.remove(option);
      } else {
        _selectedOptions.add(option);
      }
    });
  }

  void onSave(BuildContext context) {
    widget.onSave(_selectedOptions);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];

    for (var option in _options) {
      list.add(Padding(
        padding: option.leading != null
            ? const EdgeInsets.only(
                top: FMIThemeBase.basePaddingMedium,
                bottom: FMIThemeBase.basePaddingMedium)
            : EdgeInsets.zero,
        child: CheckboxListTile(
            value: isFilterSelected(option),
            selected: isFilterSelected(option),
            title: Text(option.title),
            secondary: option.leading,
            onChanged: ((value) {
              if (value != null) {
                onChanged(option);
              }
            })),
      ));
    }

    list.add(Divider(
        color: Theme.of(context)
            .colorScheme
            .outline
            .withOpacity(FMIThemeBase.baseOpacity30),
        thickness: FMIThemeBase.baseBorderWidthThin));

    list.add(Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (_selectedOptions.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(
                right: FMIThemeBase.basePaddingLarge,
                top: FMIThemeBase.basePadding4),
            child: TextButton(
              onPressed: onClear,
              child: Text(context.coreLocalize.clear),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(
              right: FMIThemeBase.basePaddingLarge,
              top: FMIThemeBase.basePadding4),
          child: TextButton(
            onPressed: () => onSave(context),
            child: Text(context.coreLocalize.done),
          ),
        ),
      ],
    ));

    return FmiFilterDialog(
      children: list,
    );
  }
}
