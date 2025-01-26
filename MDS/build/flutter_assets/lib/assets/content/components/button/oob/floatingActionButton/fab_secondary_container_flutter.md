**Examples**

```dart
SingleChildScrollView(
    child: Row(
        children: [
            Padding(
                padding:
                    const EdgeInsets.all(FMIThemeBase.basePaddingSmall),
                child: Theme(
                    data: FmiFloatingActionButtonTheme.secondaryContainer(
                            context),
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
                    data: FmiFloatingActionButtonTheme.secondaryContainer(context),
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
                    data: FmiFloatingActionButtonTheme.secondaryContainer(context),
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
                          data: FmiFloatingActionButtonTheme.secondaryContainer(context),
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
                    data: FmiFloatingActionButtonTheme.secondaryContainer(context),
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