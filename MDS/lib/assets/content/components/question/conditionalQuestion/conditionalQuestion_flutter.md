##### Examples

```dart
 ConditionalQuestionWidget<SampleConditionalQuestionDialogResult, SampleConditionalQuestionDialogMetadata>(
    title: "Safe Access",
    trailing: Padding(
        padding: EdgeInsets.only(left: FMIThemeBase.basePaddingSmall),
        child: IconButton(
        icon: Icon(
            Icons.question_mark_rounded,
        ),
        color:
            Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess,
        splashColor:
            Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess,
        onPressed: () {},
        ),
    ),
    question: "Spills or slippery conditions on surfaces ladders or walkways.",
    initialButtonPressed: ConditionalQuestionButton(
        text: "OK",
        value: "OK",
        buttonType: ConditionalQuestionButtonType.success,
        iconData: FontAwesomeIcons.solidCheck
    ),
    buttons: [
    ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
        text: "OK",
        value: "OK",
        buttonType: ConditionalQuestionButtonType.success,
        iconData: FontAwesomeIcons.solidCheck
    ),
    ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
        text: "Condition",
        value: "Condition",
        buttonType: ConditionalQuestionButtonType.danger,
        iconData: FontAwesomeIcons.solidTriangleExclamation,
        showDialog: true
    ),
    ConditionalQuestionButton<SampleConditionalQuestionDialogMetadata>(
        text: "N/A",
        value: "N/A",
        buttonType: ConditionalQuestionButtonType.standard,
        iconData: FontAwesomeIcons.solidBan
    )
    ],
)
```

