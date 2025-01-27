**Examples**

Default Fmi Icon Button
```dart
FmiIconButton(
    size: IconButtonSize.small,
    label: 'SVG Warning Aircraft',
    svgIcon: FASafeIcons.interactionAircraft,
    onClicked: () {},
    onSelectedChanged: (val) {},
    disabled: false,
    initialIsSelected: false,
    includeLabel: true,
    iconColor: IconColors.warning,
),
```

Full Size Fmi Icon Button
```dart
FmiIconButton(
    size: IconButtonSize.large,
    label: 'SVG Full Aircraft',
    svgIcon: FASafeIcons.interactionAircrat,
    fullSize: true,
    disabled: false,
    initialIsSelected: false,
    onClicked: () {},
    onSelectedChanged: (val) {},
    includeLabel: true,
),
```

` `