import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoToggleButton extends StatelessWidget {
  const DemoToggleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ComponentHeader(title: 'Fmi Toggle Button'),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          Text('Fmi Toggle Button – color: primary, type: outline',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FMIThemeBase.baseFontWeightsBold)),
          const ComponentSubheader(title: 'Unselected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(text: "N/A"),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  icon: FontAwesomeIcons.solidBan,
                ),
              ),
              FmiToggleButton(
                icon: FontAwesomeIcons.solidBan,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  isToggled: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                ),
              ),
              FmiToggleButton(
                icon: FontAwesomeIcons.solidBan,
                isToggled: true,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  icon: FontAwesomeIcons.solidBan,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                icon: FontAwesomeIcons.solidBan,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled - Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  isToggled: true,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                icon: FontAwesomeIcons.solidBan,
                isToggled: true,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapXLarge),
          Text('Fmi Toggle Button – color: secondary, type: outline',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FMIThemeBase.baseFontWeightsBold)),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Unselected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                    text: "N/A", color: FmiToggleButtonColorOptions.secondary),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.secondary,
                  icon: FontAwesomeIcons.solidBan,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.secondary,
                icon: FontAwesomeIcons.solidBan,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.secondary,
                  isToggled: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.secondary,
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.secondary,
                icon: FontAwesomeIcons.solidBan,
                isToggled: true,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.secondary,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.secondary,
                  icon: FontAwesomeIcons.solidBan,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.secondary,
                icon: FontAwesomeIcons.solidBan,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled - Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.secondary,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.secondary,
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.secondary,
                icon: FontAwesomeIcons.solidBan,
                isToggled: true,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapXLarge),
          Text('Fmi Toggle Button – color: error, type: outline',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FMIThemeBase.baseFontWeightsBold)),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Unselected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                    text: "N/A", color: FmiToggleButtonColorOptions.error),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.error,
                  icon: FontAwesomeIcons.solidBan,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.error,
                icon: FontAwesomeIcons.solidBan,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.error,
                  isToggled: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.error,
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                ),
              ),
              FmiToggleButton(
                icon: FontAwesomeIcons.solidBan,
                color: FmiToggleButtonColorOptions.error,
                isToggled: true,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.error,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.error,
                  icon: FontAwesomeIcons.solidBan,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.error,
                icon: FontAwesomeIcons.solidBan,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled - Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.error,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.error,
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                icon: FontAwesomeIcons.solidBan,
                color: FmiToggleButtonColorOptions.error,
                isToggled: true,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapXLarge),
          Text('Fmi Toggle Button – color: success, type: outline',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FMIThemeBase.baseFontWeightsBold)),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Unselected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                    text: "N/A", color: FmiToggleButtonColorOptions.success),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.success,
                  icon: FontAwesomeIcons.solidBan,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.success,
                icon: FontAwesomeIcons.solidBan,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.success,
                  isToggled: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.success,
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.success,
                icon: FontAwesomeIcons.solidBan,
                isToggled: true,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.success,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.success,
                  icon: FontAwesomeIcons.solidBan,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                icon: FontAwesomeIcons.solidBan,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled - Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.success,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.success,
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                icon: FontAwesomeIcons.solidBan,
                color: FmiToggleButtonColorOptions.success,
                isToggled: true,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapXLarge),
          Text('Fmi Toggle Button – color: primary, type: elevated',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FMIThemeBase.baseFontWeightsBold)),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Unselected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                    text: "N/A", type: FmiToggleButtonType.elevated),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                ),
              ),
              FmiToggleButton(
                type: FmiToggleButtonType.elevated,
                icon: FontAwesomeIcons.solidBan,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  type: FmiToggleButtonType.elevated,
                  isToggled: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                ),
              ),
              FmiToggleButton(
                type: FmiToggleButtonType.elevated,
                icon: FontAwesomeIcons.solidBan,
                isToggled: true,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  type: FmiToggleButtonType.elevated,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                type: FmiToggleButtonType.elevated,
                icon: FontAwesomeIcons.solidBan,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled - Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  type: FmiToggleButtonType.elevated,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                type: FmiToggleButtonType.elevated,
                icon: FontAwesomeIcons.solidBan,
                isToggled: true,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapXLarge),
          Text('Fmi Toggle Button – color: secondary, type: elevated',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FMIThemeBase.baseFontWeightsBold)),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Unselected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                    text: "N/A",
                    color: FmiToggleButtonColorOptions.secondary,
                    type: FmiToggleButtonType.elevated),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.secondary,
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.secondary,
                type: FmiToggleButtonType.elevated,
                icon: FontAwesomeIcons.solidBan,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.secondary,
                  type: FmiToggleButtonType.elevated,
                  isToggled: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.secondary,
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.secondary,
                type: FmiToggleButtonType.elevated,
                icon: FontAwesomeIcons.solidBan,
                isToggled: true,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.secondary,
                  type: FmiToggleButtonType.elevated,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.secondary,
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.secondary,
                type: FmiToggleButtonType.elevated,
                icon: FontAwesomeIcons.solidBan,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled - Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  type: FmiToggleButtonType.elevated,
                  color: FmiToggleButtonColorOptions.secondary,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.secondary,
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.secondary,
                type: FmiToggleButtonType.elevated,
                icon: FontAwesomeIcons.solidBan,
                isToggled: true,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapXLarge),
          Text('Fmi Toggle Button – color: error, type: elevated',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FMIThemeBase.baseFontWeightsBold)),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Unselected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                    text: "N/A",
                    color: FmiToggleButtonColorOptions.error,
                    type: FmiToggleButtonType.elevated),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.error,
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.error,
                type: FmiToggleButtonType.elevated,
                icon: FontAwesomeIcons.solidBan,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.error,
                  type: FmiToggleButtonType.elevated,
                  isToggled: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.error,
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                ),
              ),
              FmiToggleButton(
                icon: FontAwesomeIcons.solidBan,
                color: FmiToggleButtonColorOptions.error,
                type: FmiToggleButtonType.elevated,
                isToggled: true,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.error,
                  type: FmiToggleButtonType.elevated,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.error,
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.error,
                type: FmiToggleButtonType.elevated,
                icon: FontAwesomeIcons.solidBan,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled - Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.error,
                  type: FmiToggleButtonType.elevated,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.error,
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                icon: FontAwesomeIcons.solidBan,
                color: FmiToggleButtonColorOptions.error,
                type: FmiToggleButtonType.elevated,
                isToggled: true,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapXLarge),
          Text('Fmi Toggle Button – color: success, type: elevated',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FMIThemeBase.baseFontWeightsBold)),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                    text: "N/A",
                    color: FmiToggleButtonColorOptions.success,
                    type: FmiToggleButtonType.elevated),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.success,
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.success,
                type: FmiToggleButtonType.elevated,
                icon: FontAwesomeIcons.solidBan,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.success,
                  type: FmiToggleButtonType.elevated,
                  isToggled: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.success,
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                ),
              ),
              FmiToggleButton(
                color: FmiToggleButtonColorOptions.success,
                type: FmiToggleButtonType.elevated,
                icon: FontAwesomeIcons.solidBan,
                isToggled: true,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.success,
                  type: FmiToggleButtonType.elevated,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.success,
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                type: FmiToggleButtonType.elevated,
                icon: FontAwesomeIcons.solidBan,
                enabled: false,
              ),
            ],
          ),
          const SizedBox(height: FMIThemeBase.baseGapMedium),
          const ComponentSubheader(title: 'Disabled - Selected'),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.success,
                  type: FmiToggleButtonType.elevated,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
                child: FmiToggleButton(
                  leadingIcon: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  color: FmiToggleButtonColorOptions.success,
                  type: FmiToggleButtonType.elevated,
                  icon: FontAwesomeIcons.solidBan,
                  isToggled: true,
                  enabled: false,
                ),
              ),
              FmiToggleButton(
                icon: FontAwesomeIcons.solidBan,
                color: FmiToggleButtonColorOptions.success,
                type: FmiToggleButtonType.elevated,
                isToggled: true,
                enabled: false,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
          )
        ],
      ),
    );
  }
}
