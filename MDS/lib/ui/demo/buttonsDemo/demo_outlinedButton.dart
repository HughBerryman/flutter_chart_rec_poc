import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoOutlinedButton extends StatelessWidget {
  const DemoOutlinedButton({super.key});

  List<Widget> getOutlinedButtons() {
    return [
      OutlinedButton(onPressed: () {}, child: const Text('Enabled')),
      OutlinedButton.icon(
        onPressed: () {},
        icon: const FaIcon(
          FontAwesomeIcons.chevronLeft,
        ),
        label: const Text('Icon'),
      ),
      const OutlinedButton(
        onPressed: null,
        child: Text('Disabled'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(
            title: 'Outlined Button', padding: FMIThemeBase.basePaddingSmall),
        ButtonListView(list: getOutlinedButtons()),
      ],
    );
  }
}
