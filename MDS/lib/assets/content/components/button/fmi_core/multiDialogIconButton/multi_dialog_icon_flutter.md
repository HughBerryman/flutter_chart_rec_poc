**Examples**

```dart
FmiMultiDialogIconButton<SampleFmiDialogResult, SampleFmiDialogOptions>(
  items: [
    FmiMultiDialogIconButtonModel(
      value: "bugs",
      text: includeLabel ? "Bugs" : null,
      icon: FontAwesomeIcons.solidBug,
      iconColor: IconColors.primary,
      dialogOptions: SampleFmiDialogOptions(title: "How was your day?"),
    ),
    FmiMultiDialogIconButtonModel(
      value: "blasting",
      text: includeLabel ? "Warning Blasting" : null,
      svgIcon: FASafeIcons.blasting,
      iconColor: IconColors.warning,
      dialogOptions: SampleFmiDialogOptions(title: "How was your day?"),
      initialDialogData: SampleFmiDialogResult(response: "Nice"),
      initialIsSelected: true,
    ),
  ],
  baseDialogIconButtonFactory: SampleFmiDialogFactory(),
  disabled: false,
  onSelectedChanged: (values) {},
)
```
` `