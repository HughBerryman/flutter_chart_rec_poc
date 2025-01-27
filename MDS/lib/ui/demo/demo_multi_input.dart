import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/fmi_theme_base.dart';
import 'package:fmi_core/ui/ui.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoMultiInput extends StatefulWidget {
  const DemoMultiInput({Key? key}) : super(key: key);

  @override
  State<DemoMultiInput> createState() => _DemoMultiInputState();
}

class _DemoMultiInputState extends State<DemoMultiInput> {
  List<String> mockPreExistingInputs = [
    "Input One",
    "Input Two",
    "Input Three"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentHeader(title: 'Fmi Multi Input'),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentSubheader(
              title: 'Fmi Multi Input without pre-existing values'),
        ),
        const FmiMultiInputWidget(),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(title: 'Fmi Multi Input with error text'),
        ),
        const FmiMultiInputWidget(
          errorText: "Required, cannot be blank",
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title: 'Fmi Multi Input with pre-existing values'),
        ),
        FmiMultiInputWidget(
          initialValue: mockPreExistingInputs,
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title: 'Disabled Fmi Multi Input with pre-existing values'),
        ),
        FmiMultiInputWidget(
          initialValue: mockPreExistingInputs,
          enabled: false,
        ),
      ],
    );
  }
}
