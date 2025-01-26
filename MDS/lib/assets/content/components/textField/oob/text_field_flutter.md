**Prefix or Suffix Icon - All Themes**

```dart
Widget icon = const Padding(
  padding: EdgeInsets.symmetric(horizontal: FMIThemeBase.basePadding6),
  child: SizedBox(
    height: FMIThemeBase.baseIcon20,
    width: FMIThemeBase.baseIcon20,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          FontAwesomeIcons.magnifyingGlass,
          size: FMIThemeBase.baseIconSmall,
        ),
      ],
    ),
  ),
);
```

**Example Default**

```dart
Widget iconButton = Padding(
  padding: const EdgeInsets.symmetric(horizontal: FMIThemeBase.basePadding6),
  child: IconButton(
    icon: const FaIcon(
      FontAwesomeIcons.magnifyingGlass,
      size: FMIThemeBase.baseIconSmall,
    ),
    onPressed: () {},
  ),
);
```

```dart
TextField(
  decoration: InputDecoration(
    labelText: 'Label Text',
    prefixIcon: icon,
    suffixIcon: icon,
  )
);
```

```dart
TextField(
  decoration: InputDecoration(
    labelText: 'Label Text',
    prefixIcon: iconButton,
    suffixIcon: iconButton,
  )
);
```

**Example FmiInputDecorationTheme.inverseAltSurface**

```dart
Widget iconButton = Padding(
  padding: const EdgeInsets.symmetric(horizontal: FMIThemeBase.basePadding6),
  child: IconButton(
    icon: const FaIcon(
      FontAwesomeIcons.magnifyingGlass,
      size: FMIThemeBase.baseIconSmall,
    ),
    onPressed: () {},
  ),
);
```

```dart
Theme(
  data: FmiInputDecorationTheme.inverseAltSurface(context),
  child: TextField(
    controller: controller,
    enabled: isEnabled,
    decoration: InputDecoration(
      labelText: 'Label Text',
      prefixIcon: icon,
      suffixIcon: icon,
    )
  )
);
```

```dart
Theme(
  data: FmiInputDecorationTheme.inverseAltSurface(context),
  child: TextField(
    controller: controller,
    enabled: isEnabled,
    decoration: InputDecoration(
      labelText: 'Label Text',
      prefixIcon: iconButton,
      suffixIcon: iconButton,
    )
  )
);
```

**Example FmiInputDecorationTheme.defaultOutlineBorderTheme**

```dart
Widget iconButton = Padding(
  padding: const EdgeInsets.symmetric(horizontal: FMIThemeBase.basePadding6),
  child: IconButton(
    icon: const FaIcon(
      FontAwesomeIcons.magnifyingGlass,
      size: FMIThemeBase.baseIconSmall,
    ),
    onPressed: () {},
  ),
);
```

```dart
Theme(
  data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
  child: TextField(
    decoration: InputDecoration(
      labelText: 'Label Text',
      prefixIcon: icon,
      suffixIcon: icon,
    )
  )
);
```

```dart
Theme(
  data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
  child: TextField(
    decoration: InputDecoration(
      labelText: 'Label Text',
      prefixIcon: iconButton,
      suffixIcon: iconButton,
    )
  )
);
```

**Example FmiInputDecorationTheme.defaultNoBorder**

```dart
Widget leadingTonalButton = Padding(
  padding: const EdgeInsets.only(
    left: FMIThemeBase.basePadding2,
    right: FMIThemeBase.basePadding6,
  ),
  child: IconButton.filledTonal(
    icon: const FaIcon(
      FontAwesomeIcons.magnifyingGlass,
      size: FMIThemeBase.baseIconSmall,
    ),
    onPressed: () {},
  ),
);

Widget trailingTonalButton = Padding(
  padding: const EdgeInsets.only(
    left: FMIThemeBase.basePadding6,
    right: FMIThemeBase.basePadding2,
  ),
  child: IconButton.filledTonal(
    icon: const FaIcon(
      FontAwesomeIcons.magnifyingGlass,
      size: FMIThemeBase.baseIconSmall,
    ),
    onPressed: () {},
  ),
);
```

```dart
Theme(
  data: FmiInputDecorationTheme.defaultNoBorder(context),
  child: TextField(
    decoration: InputDecoration(
      prefixIcon: icon,
      suffixIcon: icon,
      hintText: 'Hint Text'
    ),
  )
);
```

```dart
Theme(
  data: FmiInputDecorationTheme.defaultNoBorder(context),
  child: TextField(
    decoration: InputDecoration(
      prefixIcon: leadingTonalButton,
      suffixIcon: trailingTonalButton,
      hintText: 'Hint Text'
    ),
  )
);
```

**Example FmiInputDecorationTheme.defaultNoBorderDense**

```dart
Widget leadingTonalButton = Padding(
  padding: const EdgeInsets.only(
    left: FMIThemeBase.basePadding2,
    right: FMIThemeBase.basePadding6,
  ),
  child: IconButton.filledTonal(
    icon: const FaIcon(
      FontAwesomeIcons.magnifyingGlass,
      size: FMIThemeBase.baseIconSmall,
    ),
    onPressed: () {},
  ),
);

Widget trailingTonalButton = Padding(
  padding: const EdgeInsets.only(
    left: FMIThemeBase.basePadding6,
    right: FMIThemeBase.basePadding2,
  ),
  child: IconButton.filledTonal(
    icon: const FaIcon(
      FontAwesomeIcons.magnifyingGlass,
      size: FMIThemeBase.baseIconSmall,
    ),
    onPressed: () {},
  ),
);
```

```dart
Theme(
  data: FmiInputDecorationTheme.defaultNoBorderDense(context),
  child: TextField(
    decoration: InputDecoration(
      prefixIcon: icon,
      suffixIcon: icon,
      hintText: 'Hint Text'
    ),
  )
);
```

```dart
Theme(
  data: FmiInputDecorationTheme.defaultNoBorderDense(context),
  child: TextField(
    decoration: InputDecoration(
      prefixIcon: leadingTonalButton,
      suffixIcon: trailingTonalButton,
      hintText: 'Hint Text'
    ),
  )
);
```
