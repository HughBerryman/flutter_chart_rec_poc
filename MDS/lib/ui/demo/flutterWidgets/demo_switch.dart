import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoSwitch extends StatefulWidget {
  const DemoSwitch({Key? key}) : super(key: key);

  @override
  State<DemoSwitch> createState() => _DemoSwitchState();
}

class _DemoSwitchState extends State<DemoSwitch> {
  bool toggleSwitch = false;
  bool toggleSwitch2 = false;
  bool iconToggleSwitch = false;
  bool iconToggleSwitch2 = false;
  bool switchEnabled = false;
  bool switchEnabled2 = false;
  bool checkBoxToggle = false;
  bool checkBoxToggle2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Switch'),
        Column(
          children: [
            Row(
              children: [
                Switch(
                    value: toggleSwitch,
                    onChanged: (bool val) {
                      setState(() {
                        toggleSwitch = val;
                      });
                    }),
                Text(toggleSwitch == false ? 'Switch is off' : 'Switch is on'),
              ],
            ),
            Row(
              children: [
                Switch(
                    value: toggleSwitch2,
                    onChanged: switchEnabled
                        ? (bool val) {
                            setState(() {
                              toggleSwitch2 = !toggleSwitch2;
                            });
                          }
                        : null),
                Checkbox(
                    value: checkBoxToggle,
                    onChanged: (val) {
                      setState(() {
                        switchEnabled = !switchEnabled;
                        checkBoxToggle = !checkBoxToggle;
                      });
                    }),
                Text(switchEnabled == false
                    ? 'Switch is disabled'
                    : 'Switch is enabled'),
              ],
            ),
            Row(
              children: [
                Switch(
                    thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.selected)) {
                        return const Icon(FontAwesomeIcons.sunBright, size: FMIThemeBase.baseIconXSmall,);
                      }
                      return const Icon(FontAwesomeIcons.moon, size: FMIThemeBase.baseIconXSmall); // All other states will use the default thumbIcon.
                    }),
                    value: iconToggleSwitch,
                    onChanged: (bool val) {
                      setState(() {
                        iconToggleSwitch = val;
                      });
                    }),
                Text(iconToggleSwitch == false ? 'Switch is off' : 'Switch is on'),
              ],
            ),
            Row(
              children: [
                Switch(
                   thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.selected)) {
                        return const Icon(FontAwesomeIcons.sunBright, size: FMIThemeBase.baseIconXSmall,);
                      }
                      return const Icon(FontAwesomeIcons.moon, size: FMIThemeBase.baseIconXSmall); // All other states will use the default thumbIcon.
                    }),
                    value: iconToggleSwitch2,
                    onChanged: switchEnabled2
                        ? (bool val) {
                            setState(() {
                              iconToggleSwitch2 = val;
                            });
                          }
                        : null),
                Checkbox(
                    value: checkBoxToggle2,
                    onChanged: (val) {
                      setState(() {
                        switchEnabled2 = !switchEnabled2;
                        checkBoxToggle2 = !checkBoxToggle2;
                      });
                    }),
                Text(switchEnabled2 == false
                    ? 'Switch is disabled'
                    : 'Switch is enabled'),
              ],
            ),
          ],
        ),
        const ComponentSubheaderLink(
            linkText: 'Switch Flutter Documentation',
            url: 'https://api.flutter.dev/flutter/material/Switch-class.html')
      ],
    );
  }
}
