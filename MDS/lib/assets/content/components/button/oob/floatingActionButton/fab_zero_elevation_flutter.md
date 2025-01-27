**Examples**

```dart
SingleChildScrollView(
    child: Row(
        children: [
            Padding(
                padding:
                    const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                child: Theme(
                    data: FmiFloatingActionButtonTheme.zeroElevation(
                        context,
                        FmiFloatingActionButtonTheme.primary(context)),
                    child: FloatingActionButton.extended(
                        onPressed: () {},
                        icon: const FaIcon(
                            FontAwesomeIcons.plus,
                        ),
                        label: const Text("Button"),
                    ),
                ),
            ),
            Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                child: Theme(
                    data: FmiFloatingActionButtonTheme.zeroElevation(
                        context,
                        FmiFloatingActionButtonTheme.secondary(context)),
                    child: FloatingActionButton.small(
                        onPressed: () {},
                        child: const FaIcon(
                            FontAwesomeIcons.plus,
                        ),
                    ),
                ),
            ),
            Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                child: Theme(
                    data: FmiFloatingActionButtonTheme.zeroElevation(
                        context,
                        FmiFloatingActionButtonTheme.tertiary(context)),
                    child: FloatingActionButton(
                        onPressed: () {},
                        child: const FaIcon(
                            FontAwesomeIcons.plus,
                        ),
                    ),
                ),
            ),
            Padding(
                padding:
                    const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                child: SizedBox(
                    height: FMIThemeBase.baseContainerDimension72,
                    width: FMIThemeBase.baseContainerDimension72,
                    child: Theme(
                        data: FmiFloatingActionButtonTheme.zeroElevation(
                            context,
                            FmiFloatingActionButtonTheme.tertiaryContainer(context)),
                        child: FloatingActionButton(
                            onPressed: () {},
                            child: const FaIcon(
                              FontAwesomeIcons.plus,
                            ),
                        ),
                    ),
                ),
            ),
            Padding(
                padding: const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                child: Theme(
                    data: FmiFloatingActionButtonTheme.zeroElevation(
                                context,
                                FmiFloatingActionButtonTheme.hero(context)),
                    child: FloatingActionButton.large(
                        onPressed: () {},
                        child: const FaIcon(
                            FontAwesomeIcons.plus,
                        ),
                    ),
                ),
            ),
        ],
    ),
),
```