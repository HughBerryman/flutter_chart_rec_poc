import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoConditionalQuestion extends StatefulWidget {
  const DemoConditionalQuestion({Key? key}) : super(key: key);

  @override
  State<DemoConditionalQuestion> createState() =>
      _DemoConditionalQuestionState();
}

class _DemoConditionalQuestionState extends State<DemoConditionalQuestion> {
  String? selectedResponse = "OK";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Conditional Question'),
        if (selectedResponse != null)
          Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.baseGapMedium,
                bottom: FMIThemeBase.baseGapMedium),
            child: Text("Selected Button: ${selectedResponse!}"),
          ),
        const ComponentSubheader(
            title:
                "Values: leadingIcon, type (default: outline) and defaultColor (default: primary)"),
        // Enabled with initial value set
        ConditionalQuestionWidget<SampleConditionalQuestionDialogResult,
                SampleConditionalQuestionDialogMetadata>(
            title: "Safe Access",
            trailing: Padding(
              padding: const EdgeInsets.only(left: FMIThemeBase.basePaddingSmall),
              child: IconButton(
                icon: const Icon(
                  Icons.question_mark_rounded,
                ),
                color: Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess,
                splashColor:
                    Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess,
                onPressed: () {},
              ),
            ),
            question:
                "Spills or slippery conditions on surfaces ladders or walkways.",
            initialButtonPressed: ConditionalQuestionButton(
                leadingIconData: FontAwesomeIcons.solidCheck,
                text: "OK",
                value: "OK",
                buttonType: ConditionalQuestionButtonType.success),
            buttons: [
              ConditionalQuestionButton<
                      SampleConditionalQuestionDialogMetadata>(
                  leadingIconData: FontAwesomeIcons.solidCheck,
                  text: "OK",
                  value: "OK",
                  buttonType: ConditionalQuestionButtonType.success),
              ConditionalQuestionButton<
                      SampleConditionalQuestionDialogMetadata>(
                  leadingIconData: FontAwesomeIcons.solidTriangleExclamation,
                  text: "Condition",
                  value: "Condition",
                  buttonType: ConditionalQuestionButtonType.danger,
                  showDialog: true),
              ConditionalQuestionButton<
                      SampleConditionalQuestionDialogMetadata>(
                  leadingIconData: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  value: "N/A",
                  buttonType: ConditionalQuestionButtonType.standard)
            ],
            onButtonPressed:
                (button, SampleConditionalQuestionDialogResult? dialogData) {
              setState(() {
                selectedResponse = button?.value;
              });
            },
            conditionalQuestionDialogFactoryBase:
                SampleConditionalQuestionDialogFactory()),

        // Disabled with initial value set
        ConditionalQuestionWidget<SampleConditionalQuestionDialogResult,
            SampleConditionalQuestionDialogMetadata>(
          isEditable: false,
          title: "Safe Access",
          question:
              "Spills or slippery conditions on surfaces ladders or walkways.",
          initialButtonPressed: ConditionalQuestionButton(
              leadingIconData: FontAwesomeIcons.solidCheck,
              text: "OK",
              value: "OK",
              buttonType: ConditionalQuestionButtonType.success),
          buttons: [
            ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
                leadingIconData: FontAwesomeIcons.solidCheck,
                text: "OK",
                value: "OK",
                buttonType: ConditionalQuestionButtonType.success),
            ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
                leadingIconData: FontAwesomeIcons.solidTriangleExclamation,
                text: "Condition",
                value: "Condition",
                buttonType: ConditionalQuestionButtonType.danger),
            ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
                leadingIconData: FontAwesomeIcons.solidBan,
                text: "N/A",
                value: "N/A",
                buttonType: ConditionalQuestionButtonType.standard)
          ],
          onButtonPressed:
              (button, SampleConditionalQuestionDialogResult? dialogData) {},
          conditionalQuestionDialogFactoryBase:
              SampleConditionalQuestionDialogFactory(),
        ),

        const ComponentSubheader(
            title:
                "Values: iconData, type (default: outline) and defaultColor secondary"),
        // Enabled with initial value set
        ConditionalQuestionWidget<SampleConditionalQuestionDialogResult,
                SampleConditionalQuestionDialogMetadata>(
            title: "Safe Access",
            question:
                "Spills or slippery conditions on surfaces ladders or walkways.",
            initialButtonPressed: ConditionalQuestionButton(
                text: "OK",
                value: "OK",
                buttonType: ConditionalQuestionButtonType.success,
                iconData: FontAwesomeIcons.solidCheck),
            defaultColor: FmiToggleButtonColorOptions.secondary,
            buttons: [
              ConditionalQuestionButton<
                      SampleConditionalQuestionDialogMetadata>(
                  text: "OK",
                  value: "OK",
                  buttonType: ConditionalQuestionButtonType.success,
                  iconData: FontAwesomeIcons.solidCheck),
              ConditionalQuestionButton<
                      SampleConditionalQuestionDialogMetadata>(
                  text: "Condition",
                  value: "Condition",
                  buttonType: ConditionalQuestionButtonType.danger,
                  iconData: FontAwesomeIcons.solidTriangleExclamation,
                  showDialog: true),
              ConditionalQuestionButton<
                      SampleConditionalQuestionDialogMetadata>(
                  text: "N/A",
                  value: "N/A",
                  buttonType: ConditionalQuestionButtonType.standard,
                  iconData: FontAwesomeIcons.solidBan)
            ],
            onButtonPressed:
                (button, SampleConditionalQuestionDialogResult? dialogData) {
              setState(() {
                selectedResponse = button?.value;
              });
            },
            conditionalQuestionDialogFactoryBase:
                SampleConditionalQuestionDialogFactory()),

        // Disabled with initial value set
        ConditionalQuestionWidget<SampleConditionalQuestionDialogResult,
            SampleConditionalQuestionDialogMetadata>(
          isEditable: false,
          title: "Safe Access",
          question:
              "Spills or slippery conditions on surfaces ladders or walkways.",
          initialButtonPressed: ConditionalQuestionButton(
              text: "OK",
              value: "OK",
              buttonType: ConditionalQuestionButtonType.success,
              iconData: FontAwesomeIcons.solidCheck),
          defaultColor: FmiToggleButtonColorOptions.secondary,
          buttons: [
            ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
                text: "OK",
                value: "OK",
                buttonType: ConditionalQuestionButtonType.success,
                iconData: FontAwesomeIcons.solidCheck),
            ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
                text: "Condition",
                value: "Condition",
                buttonType: ConditionalQuestionButtonType.danger,
                iconData: FontAwesomeIcons.solidTriangleExclamation),
            ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
                text: "N/A",
                value: "N/A",
                buttonType: ConditionalQuestionButtonType.standard,
                iconData: FontAwesomeIcons.solidBan)
          ],
          onButtonPressed:
              (button, SampleConditionalQuestionDialogResult? dialogData) {},
          conditionalQuestionDialogFactoryBase:
              SampleConditionalQuestionDialogFactory(),
        ),

        const ComponentSubheader(
            title:
                "Values: leadingIconData, type elevated and defaultColor (default: primary)"),

        // Enabled with initial value set
        ConditionalQuestionWidget<SampleConditionalQuestionDialogResult,
                SampleConditionalQuestionDialogMetadata>(
            title: "Safe Access",
            question:
                "Spills or slippery conditions on surfaces ladders or walkways.",
            initialButtonPressed: ConditionalQuestionButton(
                leadingIconData: FontAwesomeIcons.solidCheck,
                text: "OK",
                value: "OK",
                buttonType: ConditionalQuestionButtonType.success),
            type: FmiToggleButtonType.elevated,
            buttons: [
              ConditionalQuestionButton<
                      SampleConditionalQuestionDialogMetadata>(
                  leadingIconData: FontAwesomeIcons.solidCheck,
                  text: "OK",
                  value: "OK",
                  buttonType: ConditionalQuestionButtonType.success),
              ConditionalQuestionButton<
                      SampleConditionalQuestionDialogMetadata>(
                  leadingIconData: FontAwesomeIcons.solidTriangleExclamation,
                  text: "Condition",
                  value: "Condition",
                  buttonType: ConditionalQuestionButtonType.danger,
                  showDialog: true),
              ConditionalQuestionButton<
                      SampleConditionalQuestionDialogMetadata>(
                  leadingIconData: FontAwesomeIcons.solidBan,
                  text: "N/A",
                  value: "N/A",
                  buttonType: ConditionalQuestionButtonType.standard)
            ],
            onButtonPressed:
                (button, SampleConditionalQuestionDialogResult? dialogData) {
              setState(() {
                selectedResponse = button?.value;
              });
            },
            conditionalQuestionDialogFactoryBase:
                SampleConditionalQuestionDialogFactory()),

        // Disabled with initial value set
        ConditionalQuestionWidget<SampleConditionalQuestionDialogResult,
            SampleConditionalQuestionDialogMetadata>(
          isEditable: false,
          title: "Safe Access",
          question:
              "Spills or slippery conditions on surfaces ladders or walkways.",
          initialButtonPressed: ConditionalQuestionButton(
              leadingIconData: FontAwesomeIcons.solidCheck,
              text: "OK",
              value: "OK",
              buttonType: ConditionalQuestionButtonType.success),
          type: FmiToggleButtonType.elevated,
          buttons: [
            ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
                leadingIconData: FontAwesomeIcons.solidCheck,
                text: "OK",
                value: "OK",
                buttonType: ConditionalQuestionButtonType.success),
            ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
                leadingIconData: FontAwesomeIcons.solidTriangleExclamation,
                text: "Condition",
                value: "Condition",
                buttonType: ConditionalQuestionButtonType.danger),
            ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
                leadingIconData: FontAwesomeIcons.solidBan,
                text: "N/A",
                value: "N/A",
                buttonType: ConditionalQuestionButtonType.standard)
          ],
          onButtonPressed:
              (button, SampleConditionalQuestionDialogResult? dialogData) {},
          conditionalQuestionDialogFactoryBase:
              SampleConditionalQuestionDialogFactory(),
        ),

        const ComponentSubheader(
            title:
                "Values: iconData, type elevated and defaultColor secondary"),
        // Enabled with initial value set
        ConditionalQuestionWidget<SampleConditionalQuestionDialogResult,
                SampleConditionalQuestionDialogMetadata>(
            title: "Safe Access",
            question:
                "Spills or slippery conditions on surfaces ladders or walkways.",
            initialButtonPressed: ConditionalQuestionButton(
                text: "OK",
                value: "OK",
                buttonType: ConditionalQuestionButtonType.success,
                iconData: FontAwesomeIcons.solidCheck),
            type: FmiToggleButtonType.elevated,
            defaultColor: FmiToggleButtonColorOptions.secondary,
            buttons: [
              ConditionalQuestionButton<
                      SampleConditionalQuestionDialogMetadata>(
                  text: "OK",
                  value: "OK",
                  buttonType: ConditionalQuestionButtonType.success,
                  iconData: FontAwesomeIcons.solidCheck),
              ConditionalQuestionButton<
                      SampleConditionalQuestionDialogMetadata>(
                  text: "Condition",
                  value: "Condition",
                  buttonType: ConditionalQuestionButtonType.danger,
                  iconData: FontAwesomeIcons.solidTriangleExclamation,
                  showDialog: true),
              ConditionalQuestionButton<
                      SampleConditionalQuestionDialogMetadata>(
                  text: "N/A",
                  value: "N/A",
                  buttonType: ConditionalQuestionButtonType.standard,
                  iconData: FontAwesomeIcons.solidBan)
            ],
            onButtonPressed:
                (button, SampleConditionalQuestionDialogResult? dialogData) {
              setState(() {
                selectedResponse = button?.value;
              });
            },
            conditionalQuestionDialogFactoryBase:
                SampleConditionalQuestionDialogFactory()),

        // Disabled with initial value set
        ConditionalQuestionWidget<SampleConditionalQuestionDialogResult,
            SampleConditionalQuestionDialogMetadata>(
          isEditable: false,
          title: "Safe Access",
          question:
              "Spills or slippery conditions on surfaces ladders or walkways.",
          initialButtonPressed: ConditionalQuestionButton(
              text: "OK",
              value: "OK",
              buttonType: ConditionalQuestionButtonType.success,
              iconData: FontAwesomeIcons.solidCheck),
          type: FmiToggleButtonType.elevated,
          defaultColor: FmiToggleButtonColorOptions.secondary,
          buttons: [
            ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
                text: "OK",
                value: "OK",
                buttonType: ConditionalQuestionButtonType.success,
                iconData: FontAwesomeIcons.solidCheck),
            ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
                text: "Condition",
                value: "Condition",
                buttonType: ConditionalQuestionButtonType.danger,
                iconData: FontAwesomeIcons.solidTriangleExclamation),
            ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
                text: "N/A",
                value: "N/A",
                buttonType: ConditionalQuestionButtonType.standard,
                iconData: FontAwesomeIcons.solidBan)
          ],
          onButtonPressed:
              (button, SampleConditionalQuestionDialogResult? dialogData) {},
          conditionalQuestionDialogFactoryBase:
              SampleConditionalQuestionDialogFactory(),
        ),
      ],
    );
  }
}
