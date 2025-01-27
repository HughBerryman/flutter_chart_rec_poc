**Example**

```dart

InputChip(
    selected: isSelected,
    isEnabled: isEnabled,
    onSelected: (value) {},
    onDeleted: canDelete
        ? () {}
        : null,
    avatar: FaIcon(FontAwesomeIcons.calendar),
    label: const Text('Label'),
)

```

```dart

Theme(
    data: FmiChipTheme.transparent(context),
    child: InputChip(
        selected: isSelected,
        isEnabled: isEnabled,
        onSelected: () {},
        onDeleted: canDelete
            ? () {}
            : null,
        avatar: FaIcon(FontAwesomeIcons.calendar),
        label: const Text('Label'),
    )
)

```

```dart

Theme(
    data: FmiChipTheme.defaultNoBorder(context),
    child: InputChip(
        selected: isSelected,
        isEnabled: isEnabled,
        onSelected: () {},
        onDeleted: canDelete
            ? () {}
            : null,
        avatar: FaIcon(FontAwesomeIcons.calendar),
        label: const Text('Label'),
    )
)

```
