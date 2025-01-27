**Example**

```dart

FilterChip(
    selected: isSelected,
    avatar: showLeadingIcon
        ? const FaIcon(
            FontAwesomeIcons.image,
        )
        : showCheckmark
            ? const FaIcon(
                FontAwesomeIcons.check,
            )
            : null,
    label: showTrailingIcon
        ? const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
                const Text('Label'),
                Padding(
                    padding: EdgeInsets.only(left: FMIThemeBase.basePadding5),
                    child: FaIcon(
                      FontAwesomeIcons.solidCaretDown,
                      size: FMIThemeBase.baseIconSmall,
                    ),
                )
            ],
        )
        : const Text('Label'),
    onSelected: (selected) {}
)

```

```dart

Theme(
    data: FmiChipTheme.transparent(context),
    child: FilterChip(
        selected: isSelected,
        avatar: showLeadingIcon
            ? const FaIcon(
                FontAwesomeIcons.image,
            )
            : showCheckmark
                ? const FaIcon(
                    FontAwesomeIcons.check,
                )
                : null,
        label: showTrailingIcon
            ? const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                    const Text('Label'),
                    Padding(
                        padding: EdgeInsets.only(left: FMIThemeBase.basePadding5),
                        child: FaIcon(
                            FontAwesomeIcons.solidCaretDown,
                            size: FMIThemeBase.baseIconSmall,
                        ),
                    )
                ],
            )
            : const Text('Label'),
        onSelected: (selected) {}
    )
)

```

```dart

Theme(
    data: FmiChipTheme.defaultNoBorder(context),
    child: FilterChip(
        selected: isSelected,
        avatar: showLeadingIcon
            ? const FaIcon(
                FontAwesomeIcons.image,
            )
            : showCheckmark
                ? const FaIcon(
                    FontAwesomeIcons.check,
                )
                : null,
        label: showTrailingIcon
            ? const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                    const Text('Label'),
                    Padding(
                        padding: EdgeInsets.only(left: FMIThemeBase.basePadding5),
                        child: FaIcon(
                            FontAwesomeIcons.solidCaretDown,
                            size: FMIThemeBase.baseIconSmall,
                        ),
                    )
                ],
            )
            : const Text('Label'),
        onSelected: (selected) {}
    )
)

```
