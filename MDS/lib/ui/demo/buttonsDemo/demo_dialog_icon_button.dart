import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoDialogIconButton extends StatefulWidget {
  const DemoDialogIconButton({Key? key}) : super(key: key);

  @override
  State<DemoDialogIconButton> createState() => _DemoDialogIconButtonState();
}

class _DemoDialogIconButtonState extends State<DemoDialogIconButton> {
  bool includeLabel = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ComponentHeader(title: 'Fmi Dialog Icon Button'),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Checkbox(
                value: includeLabel,
                onChanged: (bool? value) {
                  setState(() {
                    includeLabel = value!;
                  });
                },
              ),
              const Text("Show Label")
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: FMIThemeBase.baseGapMedium,
              ),
              Row(
                children: [
                  FmiDialogIconButton<SampleFmiDialogResult,
                          SampleFmiDialogOptions>(
                      label: includeLabel ? 'Bugs' : null,
                      icon: FontAwesomeIcons.solidBug,
                      iconColor: IconColors.primary,
                      onSelectedChanged: (selected, result) {},
                      initialIsSelected: false,
                      disabled: false,
                      initialDialogData: null,
                      dialogOptions:
                          SampleFmiDialogOptions(title: "How was your day?"),
                      baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                  const SizedBox(width: FMIThemeBase.baseGapMedium),
                  FmiDialogIconButton<SampleFmiDialogResult,
                          SampleFmiDialogOptions>(
                      label: includeLabel ? 'Bugs' : null,
                      icon: FontAwesomeIcons.solidBug,
                      iconColor: IconColors.primary,
                      onSelectedChanged: (selected, result) {},
                      initialIsSelected: false,
                      disabled: true,
                      initialDialogData: null,
                      dialogOptions:
                          SampleFmiDialogOptions(title: "How was your day?"),
                      baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                  const SizedBox(width: FMIThemeBase.baseGapMedium),
                  FmiDialogIconButton<SampleFmiDialogResult,
                          SampleFmiDialogOptions>(
                      label: includeLabel ? 'Bugs' : null,
                      icon: FontAwesomeIcons.solidBug,
                      iconColor: IconColors.primary,
                      onSelectedChanged: (selected, result) {},
                      initialIsSelected: true,
                      disabled: false,
                      initialDialogData: null,
                      dialogOptions:
                          SampleFmiDialogOptions(title: "How was your day?"),
                      baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                  const SizedBox(width: FMIThemeBase.baseGapMedium),
                  FmiDialogIconButton<SampleFmiDialogResult,
                          SampleFmiDialogOptions>(
                      label: includeLabel ? 'Bugs' : null,
                      icon: FontAwesomeIcons.solidBug,
                      iconColor: IconColors.primary,
                      onSelectedChanged: (selected, result) {},
                      initialIsSelected: true,
                      disabled: true,
                      initialDialogData: SampleFmiDialogResult(
                          response: "It was a good day, thanks for asking!"),
                      dialogOptions:
                          SampleFmiDialogOptions(title: "How was your day?"),
                      baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: FMIThemeBase.basePaddingMedium),
            child: Row(
              children: [
                const SizedBox(
                  width: FMIThemeBase.baseGapMedium,
                ),
                Row(
                  children: [
                    FmiDialogIconButton<SampleFmiDialogResult,
                            SampleFmiDialogOptions>(
                        label: includeLabel ? 'Warning Bugs' : null,
                        icon: FontAwesomeIcons.solidBug,
                        iconColor: IconColors.warning,
                        onSelectedChanged: (selected, result) {},
                        initialIsSelected: false,
                        disabled: false,
                        initialDialogData: null,
                        dialogOptions:
                            SampleFmiDialogOptions(title: "How was your day?"),
                        baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                    const SizedBox(width: FMIThemeBase.baseGapMedium),
                    FmiDialogIconButton<SampleFmiDialogResult,
                            SampleFmiDialogOptions>(
                        label: includeLabel ? 'Warning Bugs' : null,
                        icon: FontAwesomeIcons.solidBug,
                        iconColor: IconColors.warning,
                        onSelectedChanged: (selected, result) {},
                        initialIsSelected: false,
                        disabled: true,
                        initialDialogData: null,
                        dialogOptions:
                            SampleFmiDialogOptions(title: "How was your day?"),
                        baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                    const SizedBox(width: FMIThemeBase.baseGapMedium),
                    FmiDialogIconButton<SampleFmiDialogResult,
                            SampleFmiDialogOptions>(
                        label: includeLabel ? 'Warning Bugs' : null,
                        icon: FontAwesomeIcons.solidBug,
                        iconColor: IconColors.warning,
                        onSelectedChanged: (selected, result) {},
                        initialIsSelected: true,
                        disabled: false,
                        initialDialogData: null,
                        dialogOptions:
                            SampleFmiDialogOptions(title: "How was your day?"),
                        baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                    const SizedBox(width: FMIThemeBase.baseGapMedium),
                    FmiDialogIconButton<SampleFmiDialogResult,
                            SampleFmiDialogOptions>(
                        label: includeLabel ? 'Warning Bugs' : null,
                        icon: FontAwesomeIcons.solidBug,
                        iconColor: IconColors.warning,
                        onSelectedChanged: (selected, result) {},
                        initialIsSelected: true,
                        disabled: true,
                        initialDialogData: SampleFmiDialogResult(
                            response: "It was a good day, thanks for asking!"),
                        dialogOptions:
                            SampleFmiDialogOptions(title: "How was your day?"),
                        baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: FMIThemeBase.basePaddingMedium),
            child: Row(
              children: [
                const SizedBox(
                  width: FMIThemeBase.baseGapMedium,
                ),
                Row(
                  children: [
                    FmiDialogIconButton<SampleFmiDialogResult,
                            SampleFmiDialogOptions>(
                        label: includeLabel ? 'Inrush' : null,
                        svgIcon: FASafeIcons.undergroundInrush,
                        iconColor: IconColors.primary,
                        onSelectedChanged: (selected, result) {},
                        initialIsSelected: false,
                        disabled: false,
                        initialDialogData: null,
                        dialogOptions:
                            SampleFmiDialogOptions(title: "How was your day?"),
                        baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                    const SizedBox(width: FMIThemeBase.baseGapMedium),
                    FmiDialogIconButton<SampleFmiDialogResult,
                            SampleFmiDialogOptions>(
                        label: includeLabel ? 'Inrush' : null,
                        svgIcon: FASafeIcons.undergroundInrush,
                        iconColor: IconColors.primary,
                        onSelectedChanged: (selected, result) {},
                        initialIsSelected: false,
                        disabled: true,
                        initialDialogData: null,
                        dialogOptions:
                            SampleFmiDialogOptions(title: "How was your day?"),
                        baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                    const SizedBox(width: FMIThemeBase.baseGapMedium),
                    FmiDialogIconButton<SampleFmiDialogResult,
                            SampleFmiDialogOptions>(
                        label: includeLabel ? 'Inrush' : null,
                        svgIcon: FASafeIcons.undergroundInrush,
                        iconColor: IconColors.primary,
                        onSelectedChanged: (selected, result) {},
                        initialIsSelected: true,
                        disabled: false,
                        initialDialogData: null,
                        dialogOptions:
                            SampleFmiDialogOptions(title: "How was your day?"),
                        baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                    const SizedBox(width: FMIThemeBase.baseGapMedium),
                    FmiDialogIconButton<SampleFmiDialogResult,
                            SampleFmiDialogOptions>(
                        label: includeLabel ? 'Inrush' : null,
                        svgIcon: FASafeIcons.undergroundInrush,
                        iconColor: IconColors.primary,
                        onSelectedChanged: (selected, result) {},
                        initialIsSelected: true,
                        disabled: true,
                        initialDialogData: SampleFmiDialogResult(
                            response: "It was a good day, thanks for asking!"),
                        dialogOptions:
                            SampleFmiDialogOptions(title: "How was your day?"),
                        baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: FMIThemeBase.basePaddingMedium),
            child: Row(
              children: [
                const SizedBox(
                  width: FMIThemeBase.baseGapMedium,
                ),
                Row(
                  children: [
                    FmiDialogIconButton<SampleFmiDialogResult,
                            SampleFmiDialogOptions>(
                        label: includeLabel ? 'Warning Inrush' : null,
                        svgIcon: FASafeIcons.undergroundInrush,
                        iconColor: IconColors.warning,
                        onSelectedChanged: (selected, result) {},
                        initialIsSelected: false,
                        disabled: false,
                        initialDialogData: null,
                        dialogOptions:
                            SampleFmiDialogOptions(title: "How was your day?"),
                        baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                    const SizedBox(width: FMIThemeBase.baseGapMedium),
                    FmiDialogIconButton<SampleFmiDialogResult,
                            SampleFmiDialogOptions>(
                        label: includeLabel ? 'Warning Inrush' : null,
                        svgIcon: FASafeIcons.undergroundInrush,
                        iconColor: IconColors.warning,
                        onSelectedChanged: (selected, result) {},
                        initialIsSelected: false,
                        disabled: true,
                        initialDialogData: null,
                        dialogOptions:
                            SampleFmiDialogOptions(title: "How was your day?"),
                        baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                    const SizedBox(width: FMIThemeBase.baseGapMedium),
                    FmiDialogIconButton<SampleFmiDialogResult,
                            SampleFmiDialogOptions>(
                        label: includeLabel ? 'Warning Inrush' : null,
                        svgIcon: FASafeIcons.undergroundInrush,
                        iconColor: IconColors.warning,
                        onSelectedChanged: (selected, result) {},
                        initialIsSelected: true,
                        disabled: false,
                        initialDialogData: null,
                        dialogOptions:
                            SampleFmiDialogOptions(title: "How was your day?"),
                        baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                    const SizedBox(width: FMIThemeBase.baseGapMedium),
                    FmiDialogIconButton<SampleFmiDialogResult,
                            SampleFmiDialogOptions>(
                        label: includeLabel ? 'Warning Inrush' : null,
                        svgIcon: FASafeIcons.undergroundInrush,
                        iconColor: IconColors.warning,
                        onSelectedChanged: (selected, result) {},
                        initialIsSelected: true,
                        disabled: true,
                        initialDialogData: SampleFmiDialogResult(
                            response: "It was a good day, thanks for asking!"),
                        dialogOptions:
                            SampleFmiDialogOptions(title: "How was your day?"),
                        baseDialogIconButtonFactory: SampleFmiDialogFactory()),
                  ],
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),)
        ],
      ),
    );
  }
}
