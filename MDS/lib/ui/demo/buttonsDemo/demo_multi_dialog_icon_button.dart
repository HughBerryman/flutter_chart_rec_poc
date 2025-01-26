import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoMultiDialogIconButton extends StatefulWidget {
  const DemoMultiDialogIconButton({Key? key}) : super(key: key);

  @override
  State<DemoMultiDialogIconButton> createState() =>
      _DemoMultiDialogIconButtonState();
}

class _DemoMultiDialogIconButtonState extends State<DemoMultiDialogIconButton> {
  bool includeLabel = false;

  @override
  Widget build(BuildContext context) {
    List<
        FmiMultiDialogIconButtonModel<SampleFmiDialogResult,
            SampleFmiDialogOptions>> items = [
      FmiMultiDialogIconButtonModel(
        value: "bugs",
        text: includeLabel ? "Bugs" : null,
        icon: FontAwesomeIcons.solidBug,
        iconColor: IconColors.primary,
        dialogOptions: SampleFmiDialogOptions(title: "How was your day?"),
      ),
      FmiMultiDialogIconButtonModel(
        value: "warningBugs",
        text: includeLabel ? "Warning Bugs" : null,
        icon: FontAwesomeIcons.solidBug,
        iconColor: IconColors.warning,
        dialogOptions: SampleFmiDialogOptions(title: "How was your day?"),
      ),
      FmiMultiDialogIconButtonModel(
          value: "filledWarningBugs",
          text: includeLabel ? "Warning Bugs" : null,
          icon: FontAwesomeIcons.solidBug,
          iconColor: IconColors.warning,
          dialogOptions: SampleFmiDialogOptions(title: "How was your day?"),
          initialDialogData: SampleFmiDialogResult(response: "Good"),
          initialIsSelected: true),
      FmiMultiDialogIconButtonModel(
        value: "blasting",
        text: includeLabel ? "Blasting" : null,
        svgIcon: FASafeIcons.blasting,
        iconColor: IconColors.primary,
        dialogOptions: SampleFmiDialogOptions(title: "How was your day?"),
      ),
      FmiMultiDialogIconButtonModel(
        value: "warningBlasting",
        text: includeLabel ? "Warning Blasting" : null,
        svgIcon: FASafeIcons.blasting,
        iconColor: IconColors.warning,
        dialogOptions: SampleFmiDialogOptions(title: "How was your day?"),
      ),
      FmiMultiDialogIconButtonModel(
          value: "filledWarningBlasting",
          text: includeLabel ? "Warning Blasting" : null,
          svgIcon: FASafeIcons.blasting,
          iconColor: IconColors.warning,
          dialogOptions: SampleFmiDialogOptions(title: "How was your day?"),
          initialDialogData: SampleFmiDialogResult(response: "Nice"),
          initialIsSelected: true)
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Multi Dialog Icon Button'),
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
        const ComponentSubheader(title: 'Enabled'),
        FmiMultiDialogIconButton<SampleFmiDialogResult, SampleFmiDialogOptions>(
          items: items,
          baseDialogIconButtonFactory: SampleFmiDialogFactory(),
          disabled: false,
          onSelectedChanged: (values) {},
        ),
        const ComponentSubheader(title: 'Disabled'),
        FmiMultiDialogIconButton<SampleFmiDialogResult, SampleFmiDialogOptions>(
          items: items,
          baseDialogIconButtonFactory: SampleFmiDialogFactory(),
          disabled: true,
          onSelectedChanged: (values) {},
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),)
      ],
    );
  }
}
