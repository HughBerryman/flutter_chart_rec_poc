import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:poc/ui/demo/demo.dart';

class DemoActionChips extends StatelessWidget {
  const DemoActionChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Action Chip'),
        const ComponentSubheader(
            title: 'Static Demo With Multiple Configurations'),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding12),
          child: ChipSubheader(
              title:
                  'Default - Recommended on Lighter Backgrounds like "Surface"'),
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
        _getWrap(),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
          child: Text('Not Recommended',
              style: Theme.of(context).textTheme.bodyMedium),
        ),
        ChipBackgroundContainer(child: _getWrap()),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding12),
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
                data: FmiChipTheme.transparent(context), child: _getWrap())),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
          child: Text('Not Recommended',
              style: Theme.of(context).textTheme.bodyMedium),
        ),
        Theme(data: FmiChipTheme.transparent(context), child: _getWrap()),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding12),
          child: ChipSubheader(title: 'FmiChipTheme.defaultNoBorder(context)'),
        ),
        Theme(data: FmiChipTheme.defaultNoBorder(context), child: _getWrap()),
      ],
    );
  }

  Widget _getWrap() {
    return Wrap(
        spacing: FMIThemeBase.basePadding4,
        runSpacing: FMIThemeBase.basePadding4,
        children: [
          _getChip(false, false, false),
          _getChip(true, false, false),
          _getChip(true, true, false),
          _getChip(false, false, true),
          _getChip(true, false, true),
          _getChip(true, true, true),
        ]);
  }

  Widget _getChip(bool showAvatar, bool isSelected, bool isDisabled) {
    return Padding(
      padding: const EdgeInsets.only(right: FMIThemeBase.basePadding6),
      child: ActionChip(
        label: const ChipLabel(),
        avatar: showAvatar
            ? FaIcon(isSelected
                ? FontAwesomeIcons.solidHeart
                : FontAwesomeIcons.heart)
            : null,
        onPressed: isDisabled ? null : () {},
      ),
    );
  }
}
