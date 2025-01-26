import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoChoiceWidget extends StatelessWidget {
  final Function(int?) onSelected;
  final int? value;
  const DemoChoiceWidget({required this.onSelected, this.value, super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = [
      FontAwesomeIcons.car,
      FontAwesomeIcons.bicycle,
      FontAwesomeIcons.personWalking
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
          child: Wrap(
            spacing: FMIThemeBase.basePadding3,
            runSpacing: FMIThemeBase.basePadding3,
            children: List<Widget>.generate(
              3,
              (int index) {
                return ChoiceChip(
                  label: Text('Item ${index + 1}'),
                  selected: value == index,
                  onSelected: (bool selected) {
                    onSelected(selected ? index : null);
                  },
                );
              },
            ).toList(),
          ),
        ),
        Wrap(
          spacing: FMIThemeBase.basePadding3,
          runSpacing: FMIThemeBase.basePadding3,
          children: List<Widget>.generate(
            3,
            (int index) {
              return ChoiceChip(
                avatar: FaIcon(
                  icons[index],
                ),
                label: Text('Item ${index + 1}'),
                selected: value == index,
                onSelected: (bool selected) {
                  onSelected(selected ? index : null);
                },
              );
            },
          ).toList(),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
          child: Wrap(
            spacing: FMIThemeBase.basePadding3,
            runSpacing: FMIThemeBase.basePadding3,
            children: List<Widget>.generate(
              3,
              (int index) {
                return ChoiceChip(
                  label: Text('Disabled ${index + 1}'),
                  selected: value == index,
                );
              },
            ).toList(),
          ),
        ),
        Wrap(
          spacing: FMIThemeBase.basePadding3,
          runSpacing: FMIThemeBase.basePadding3,
          children: List<Widget>.generate(
            3,
            (int index) {
              return ChoiceChip(
                avatar: FaIcon(
                  icons[index],
                ),
                label: Text('Disabled ${index + 1}'),
                selected: value == index,
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
