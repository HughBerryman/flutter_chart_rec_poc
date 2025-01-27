import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoDropdownMenu extends StatefulWidget {
  const DemoDropdownMenu({super.key});

  @override
  State<DemoDropdownMenu> createState() => _DemoDropdownMenuState();
}

class _DemoDropdownMenuState extends State<DemoDropdownMenu> {
  final TextEditingController colorController = TextEditingController();
  final TextEditingController iconController = TextEditingController();
  ColorLabel? selectedColor;
  IconLabel? selectedIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Dropdown Menu'),
        const Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePaddingMedium,
              bottom: FMIThemeBase.basePadding12),
          child: ComponentSubheaderLink(
              linkText: 'Dropdown Menu Flutter Documentation',
              url:
                  'https://api.flutter.dev/flutter/material/DropdownMenu-class.html'),
        ),
        Wrap(
          runSpacing: FMIThemeBase.baseGap12,
          spacing: FMIThemeBase.baseGap12,
          children: <Widget>[
            DropdownMenu<ColorLabel>(
              controller: colorController,
              requestFocusOnTap: true,
              label: const Text('Color'),
              onSelected: (ColorLabel? color) {
                setState(() {
                  selectedColor = color;
                });
              },
              dropdownMenuEntries: ColorLabel.values
                  .map<DropdownMenuEntry<ColorLabel>>((ColorLabel color) {
                return DropdownMenuEntry<ColorLabel>(
                  value: color,
                  label: color.label,
                );
              }).toList(),
            ),
            DropdownMenu<ColorLabel>(
              enabled: false,
              requestFocusOnTap: true,
              initialSelection: ColorLabel.green,
              label: const Text('Disabled'),
              dropdownMenuEntries: ColorLabel.values
                  .map<DropdownMenuEntry<ColorLabel>>((ColorLabel color) {
                return DropdownMenuEntry<ColorLabel>(
                  value: color,
                  label: color.label,
                );
              }).toList(),
            ),
            DropdownMenu<ColorLabel>(
              enabled: false,
              requestFocusOnTap: true,
              label: const Text('Disabled'),
              dropdownMenuEntries: ColorLabel.values
                  .map<DropdownMenuEntry<ColorLabel>>((ColorLabel color) {
                return DropdownMenuEntry<ColorLabel>(
                  value: color,
                  label: color.label,
                );
              }).toList(),
            ),
          ],
        ),
        const SizedBox(height: FMIThemeBase.baseGap12),
        Wrap(
          runSpacing: FMIThemeBase.baseGap12,
          spacing: FMIThemeBase.baseGap12,
          children: <Widget>[
            Theme(
              data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
              child: DropdownMenu<IconLabel>(
                controller: iconController,
                enableFilter: true,
                requestFocusOnTap: true,
                label: const Text('Icon'),
                onSelected: (IconLabel? icon) {
                  setState(() {
                    selectedIcon = icon;
                  });
                },
                dropdownMenuEntries:
                    IconLabel.values.map<DropdownMenuEntry<IconLabel>>(
                  (IconLabel icon) {
                    return DropdownMenuEntry<IconLabel>(
                      value: icon,
                      label: icon.label,
                      leadingIcon: Icon(icon.icon),
                    );
                  },
                ).toList(),
              ),
            ),
            Theme(
              data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
              child: DropdownMenu<IconLabel>(
                enabled: false,
                initialSelection: IconLabel.smile,
                enableFilter: true,
                requestFocusOnTap: true,
                label: const Text('Disabled'),
                dropdownMenuEntries:
                    IconLabel.values.map<DropdownMenuEntry<IconLabel>>(
                  (IconLabel icon) {
                    return DropdownMenuEntry<IconLabel>(
                      value: icon,
                      label: icon.label,
                      leadingIcon: Icon(icon.icon),
                    );
                  },
                ).toList(),
              ),
            ),
            Theme(
              data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
              child: DropdownMenu<IconLabel>(
                enabled: false,
                enableFilter: true,
                requestFocusOnTap: true,
                label: const Text('Disabled Label'),
                dropdownMenuEntries:
                    IconLabel.values.map<DropdownMenuEntry<IconLabel>>(
                  (IconLabel icon) {
                    return DropdownMenuEntry<IconLabel>(
                      value: icon,
                      label: icon.label,
                      leadingIcon: Icon(icon.icon),
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

enum ColorLabel {
  blue('Blue'),
  pink(
    'Pink',
  ),
  green(
    'Green',
  ),
  yellow('Orange'),
  grey('Grey');

  const ColorLabel(this.label);
  final String label;
}

enum IconLabel {
  smile('Smile', FontAwesomeIcons.faceSmile),
  cloud('Cloud', FontAwesomeIcons.cloud),
  brush('Brush', FontAwesomeIcons.paintbrush),
  heart('Heart', FontAwesomeIcons.heart);

  const IconLabel(this.label, this.icon);
  final String label;
  final IconData icon;
}
