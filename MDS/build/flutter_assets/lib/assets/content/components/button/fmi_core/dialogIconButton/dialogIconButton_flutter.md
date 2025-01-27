**Examples**

```dart
FmiDialogIconButton<SampleFmiDialogResult, SampleFmiDialogOptions>(
    label: includeLabel ? 'Inrush' : null,
    svgIcon: FASafeIcons.undergroundInrush,
    iconColor: IconColors.warning,
    onSelectedChanged: (selected, result) {},
    initialIsSelected: false,
    disabled: false,
    initialDialogData: null,
    dialogOptions: SampleFmiDialogOptions(title: "How was your day?"),
    baseDialogIconButtonFactory: SampleFmiDialogFactory(),
),
```
` `