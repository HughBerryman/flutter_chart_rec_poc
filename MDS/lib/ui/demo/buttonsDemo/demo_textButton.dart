import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoTextButton extends StatelessWidget {
  const DemoTextButton({super.key});

  List<Widget> getTextButtons(BuildContext context) {
    return [
      TextButton(onPressed: () {}, child: const Text('Enabled')),
      TextButton.icon(
        onPressed: () {},
        icon: const FaIcon(
          FontAwesomeIcons.chevronLeft,
        ),
        label: const Text('Icon'),
      ),
      const TextButton(
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
            title: 'Text Button', padding: FMIThemeBase.basePaddingSmall),
        ButtonListView(
          list: getTextButtons(context),
        ),
      ],
    );
  }
}
