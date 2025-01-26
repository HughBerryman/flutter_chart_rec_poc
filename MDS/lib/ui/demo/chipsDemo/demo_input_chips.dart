import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoInputChips extends StatelessWidget {
  const DemoInputChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Input Chips'),
        const ComponentSubheader(
            title: 'Static Demo With Multiple Configurations'),
        Padding(
          padding: const EdgeInsets.only(
              top: FMIThemeBase.basePaddingLarge,
              bottom: FMIThemeBase.basePaddingLarge),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding8),
                  child: ChipSubheader(
                      title:
                          'Default - Recommended on Lighter Backgrounds like "Surface"'),
                ),
                Text('Recommended',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FMIThemeBase.baseFontWeightsBold)),
                ..._getDemos(),
                Text('Not Recommended',
                    style: Theme.of(context).textTheme.bodyMedium),
                ChipBackgroundContainer(
                  child: Column(
                    children: _getDemos(),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding8),
                  child: ChipSubheader(
                      title:
                          'FmiChipTheme.transparent(context) - Recommended on Darker Backgrounds like "InverseAltSurface"'),
                ),
                Text('Recommended',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FMIThemeBase.baseFontWeightsBold)),
                ChipBackgroundContainer(
                  child: Theme(
                      data: FmiChipTheme.transparent(context),
                      child: Column(
                        children: _getDemos(),
                      )),
                ),
                Text('Not Recommended',
                    style: Theme.of(context).textTheme.bodyMedium),
                Theme(
                    data: FmiChipTheme.transparent(context),
                    child: Column(
                      children: _getDemos(),
                    )),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding8),
                  child: ChipSubheader(
                      title: 'FmiChipTheme.defaultNoBorder(context)'),
                ),
                Theme(
                    data: FmiChipTheme.defaultNoBorder(context),
                    child: Column(
                      children: _getDemos(),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _getDemos() {
    return [
      ChipRow(
        children: [
          _getChip(false, true, onSelected: _onSelected),
          _getChip(false, true, onSelected: _onSelected, onDeleted: _onDeleted),
          _getChip(false, true,
              onSelected: _onSelected,
              avatar: const ChipIcon(icon: FontAwesomeIcons.calendar)),
          _getChip(false, true,
              onSelected: _onSelected,
              onDeleted: _onDeleted,
              avatar: const ChipIcon(icon: FontAwesomeIcons.solidUser)),
          _getChip(false, true,
              onSelected: _onSelected, avatar: const ChipAvatar()),
          _getChip(false, true,
              onSelected: _onSelected,
              onDeleted: _onDeleted,
              avatar: const ChipAvatar()),
        ],
      ),
      ChipRow(
        children: [
          _getChip(true, true, onSelected: _onSelected),
          _getChip(true, true, onSelected: _onSelected, onDeleted: _onDeleted),
          _getChip(true, true,
              onSelected: _onSelected,
              avatar: const ChipIcon(icon: FontAwesomeIcons.image)),
          _getChip(true, true,
              onSelected: _onSelected,
              onDeleted: _onDeleted,
              avatar: const ChipIcon(icon: FontAwesomeIcons.bars)),
          _getChip(true, true,
              onSelected: _onSelected, avatar: const ChipAvatar()),
          _getChip(true, true,
              onSelected: _onSelected,
              onDeleted: _onDeleted,
              avatar: const ChipAvatar()),
        ],
      ),
      ChipRow(
        children: [
          _getChip(false, false),
          _getChip(false, false, onDeleted: _onDeleted),
          _getChip(false, false,
              avatar: const ChipIcon(icon: FontAwesomeIcons.solidGrid2)),
          _getChip(false, false,
              onDeleted: _onDeleted,
              avatar: const ChipIcon(icon: FontAwesomeIcons.map)),
          _getChip(false, false, avatar: const ChipAvatar()),
          _getChip(false, false,
              onDeleted: _onDeleted, avatar: const ChipAvatar()),
        ],
      ),
      ChipRow(
        children: [
          _getChip(true, false),
          _getChip(true, false, onDeleted: _onDeleted),
          _getChip(true, false,
              avatar: const ChipIcon(icon: FontAwesomeIcons.solidListCheck)),
          _getChip(true, false,
              onDeleted: _onDeleted,
              avatar:
                  const ChipIcon(icon: FontAwesomeIcons.solidArrowUpArrowDown)),
          _getChip(true, false, avatar: const ChipAvatar()),
          _getChip(true, false,
              onDeleted: _onDeleted, avatar: const ChipAvatar()),
        ],
      ),
    ];
  }

  void _onDeleted() {}
  void _onSelected(value) {}

  Widget _getChip(bool selected, bool isEnabled,
      {Widget? avatar, Function(bool)? onSelected, Function()? onDeleted}) {
    return Padding(
      padding: const EdgeInsets.only(right: FMIThemeBase.basePadding6),
      child: InputChip(
        selected: selected,
        isEnabled: isEnabled,
        onSelected: onSelected,
        onDeleted: onDeleted,
        avatar: avatar,
        label: const ChipLabel(),
      ),
    );
  }
}
