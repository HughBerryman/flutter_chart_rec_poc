import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiSearchOptions extends StatelessWidget {
  const FmiSearchOptions(
      {super.key,
      required this.searchOptions,
      required this.onSelected,
      this.maxSearchOptions,
      this.defaultChipTheme = true});

  final List<SearchOption> searchOptions;
  final Function(SearchOption) onSelected;
  final int? maxSearchOptions;
  final bool defaultChipTheme;

  @override
  Widget build(BuildContext context) {
    int maxLength =
        maxSearchOptions != null && maxSearchOptions! < searchOptions.length
            ? maxSearchOptions!
            : searchOptions.length;

    return Align(
      alignment: Alignment.centerLeft,
      child: Wrap(
        runSpacing: FMIThemeBase.basePaddingLarge,
        spacing: FMIThemeBase.basePaddingLarge,
        children: [
          for (var i = 0; i < maxLength; i++) getChip(context, searchOptions[i])
        ],
      ),
    );
  }

  Widget getChip(BuildContext context, SearchOption option) {
    return Theme(
      data: defaultChipTheme
          ? Theme.of(context)
          : FmiChipTheme.inverseAltSurface(context),
      child: ChoiceChip(
        label: Text(option.title, overflow: TextOverflow.ellipsis),
        selected: false,
        onSelected: (value) {
          onSelected(option);
        },
      ),
    );
  }
}
