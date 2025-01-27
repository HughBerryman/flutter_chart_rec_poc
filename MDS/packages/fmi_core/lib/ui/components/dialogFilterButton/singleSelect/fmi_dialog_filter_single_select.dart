import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

@Deprecated('Deprecated - Replace with OOB Components to be removed in the next 30 days')
class FmiDialogFilterSingleSelect<T, G> extends StatefulWidget {
  const FmiDialogFilterSingleSelect({
    Key? key,
    required this.options,
    this.initialSelected,
    required this.onChanged,
  }) : super(key: key);

  final List<FilterOption<T, G>> options;
  final FilterOption<T, G>? initialSelected;
  final Function(FilterOption<T, G>?) onChanged;

  @override
  State<FmiDialogFilterSingleSelect<T, G>> createState() =>
      _FmiDialogFilterSingleSelectState<T, G>();
}

class _FmiDialogFilterSingleSelectState<T, G>
    extends State<FmiDialogFilterSingleSelect<T, G>> {
  late List<FilterOption<T, G>> _options = [];
  late FilterOption<T, G>? _selectedOption;

  @override
  void initState() {
    _options = widget.options;
    _selectedOption = widget.initialSelected;
    super.initState();
  }

  void onChanged(FilterOption<T, G> option, String? value) {
    if (value == null) {
      _selectedOption = null;
    } else {
      _selectedOption = option;
    }

    widget.onChanged(_selectedOption);
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
        child: RadioListTile(
            value: option.title,
            groupValue: _selectedOption != null ? _selectedOption!.title : null,
            title: Text(option.title),
            controlAffinity: ListTileControlAffinity.trailing,
            toggleable: true,
            secondary: option.leading,
            onChanged: ((value) {
              onChanged(option, value);
            })),
      ));
    }

    return FmiFilterDialog(
      children: list,
    );
  }
}
