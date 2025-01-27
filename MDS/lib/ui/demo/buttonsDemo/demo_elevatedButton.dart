import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoElevatedButton extends StatelessWidget {
  const DemoElevatedButton({super.key});

  List<Widget> getElevatedButtons() {
    return [
      ElevatedButton(onPressed: () {}, child: const Text('Enabled')),
      ElevatedButton.icon(
        onPressed: () {},
        icon: const FaIcon(
          FontAwesomeIcons.chevronLeft,
        ),
        label: const Text('Icon'),
      ),
      const ElevatedButton(onPressed: null, child: Text('Disabled')),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(
            title: 'Elevated Button', padding: FMIThemeBase.basePaddingSmall),
        ButtonListView(list: getElevatedButtons()),
      ],
    );
  }
}
