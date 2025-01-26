import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoFilterChips extends StatelessWidget {
  const DemoFilterChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Filter Chips'),
        const ComponentSubheader(
            title: 'Static Demo With Multiple Configurations'),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePadding8),
          child: ChipSubheader(
              title:
                  'Default - Recommended on Lighter Backgrounds like "Surface"'),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
          child: Text(
            'Recommended',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FMIThemeBase.baseFontWeightsBold),
          ),
        ),
        _getDemos(context),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
          child: Text('Not Recommended',
              style: Theme.of(context).textTheme.bodyMedium),
        ),
        ChipBackgroundContainer(child: _getDemos(context)),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePadding8),
          child: ChipSubheader(
              title:
                  'FmiChipTheme.transparent(context) - Recommended on Darker Backgrounds like "InverseAltSurface"'),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
          child: Text('Recommended',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FMIThemeBase.baseFontWeightsBold)),
        ),
        ChipBackgroundContainer(
          child: Theme(
              data: FmiChipTheme.transparent(context),
              child: _getDemos(context)),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
          child: Text('Not Recommended',
              style: Theme.of(context).textTheme.bodyMedium),
        ),
        Theme(
            data: FmiChipTheme.transparent(context), child: _getDemos(context)),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding8),
          child: ChipSubheader(title: 'FmiChipTheme.defaultNoBorder(context)'),
        ),
        Theme(
            data: FmiChipTheme.defaultNoBorder(context),
            child: _getDemos(context)),
      ],
    );
  }

  void onSelected(bool selected) {}

  Widget _getDemos(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Wrap(
          spacing: FMIThemeBase.basePadding3,
          runSpacing: FMIThemeBase.basePadding3,
          children: [
            _getChip(context, false, onSelected, false, false, false),
            _getChip(context, false, onSelected, true, false, false),
            _getChip(context, false, onSelected, true, false, true),
          ]),
      Padding(
        padding:
            const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
        child: Wrap(
            spacing: FMIThemeBase.basePadding3,
            runSpacing: FMIThemeBase.basePadding3,
            children: [
              _getChip(context, true, onSelected, false, false, false),
              _getChip(context, true, onSelected, true, false, false),
              _getChip(context, true, onSelected, true, false, true),
              _getChip(context, true, onSelected, false, true, false),
              _getChip(context, true, onSelected, false, true, true)
            ]),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding4),
        child: Wrap(
            spacing: FMIThemeBase.basePadding3,
            runSpacing: FMIThemeBase.basePadding3,
            children: [
              _getChip(context, false, null, false, false, false),
              _getChip(context, false, null, true, false, false),
              _getChip(context, false, null, true, false, true),
            ]),
      ),
      Wrap(
          spacing: FMIThemeBase.basePadding3,
          runSpacing: FMIThemeBase.basePadding3,
          children: [
            _getChip(context, true, null, false, false, false),
            _getChip(context, true, null, true, false, false),
            _getChip(context, true, null, true, false, true),
            _getChip(context, true, null, false, true, false),
            _getChip(context, true, null, false, true, true)
          ]),
    ]);
  }

  Widget _getChip(
      BuildContext context,
      bool selected,
      Function(bool)? onSelected,
      bool showLeadingIcon,
      bool showCheckmark,
      bool showTrailingIcon) {
    return FilterChip(
        selected: selected,
        avatar: showLeadingIcon
            ? const FaIcon(
                FontAwesomeIcons.image,
              )
            : showCheckmark
                ? const FaIcon(
                    FontAwesomeIcons.check,
                  )
                : null,
        label: showTrailingIcon
            ? const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ChipLabel(),
                  Padding(
                    padding: EdgeInsets.only(left: FMIThemeBase.basePadding5),
                    child: FaIcon(
                      FontAwesomeIcons.solidCaretDown,
                      size: FMIThemeBase.baseIconSmall,
                    ),
                  )
                ],
              )
            : const ChipLabel(),
        onSelected: onSelected);
  }
}
