import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: MediaQuery.of(context).platformBrightness == Brightness.light
          ? FmiThemeLight.fmiThemeDataLight
          : FmiThemeDark.fmiThemeDataDark,
      child: Row(
        children: [
          Expanded(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding12),
              child: Column(
                children: [
                  FilledButton.icon(
                      icon: const FaIcon(FontAwesomeIcons.xmark),
                      label: const Text('Close Demo'),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
