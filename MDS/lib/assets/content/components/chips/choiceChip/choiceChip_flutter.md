**Example**

```dart

ChoiceChip(
    avatar: showAvatar
        ? FaIcon(
            icons[index],
        )
        : null,
    label: Text('Item ${index + 1}'),
    selected: value == index,
    onSelected: isDisabled
        ? null
        : (bool selected) {
            onSelected(selected ? index : null);
        },
)

```

```dart

Theme(
    data: FmiChipTheme.transparent(context),
    child: ChoiceChip(
        avatar: showAvatar
            ? FaIcon(
                icons[index],
            )
            : null,
        label: Text('Item ${index + 1}'),
        selected: value == index,
        onSelected: isDisabled
            ? null
            : (bool selected) {
                onSelected(selected ? index : null);
            },
    )
)

```

```dart

Theme(
    data: FmiChipTheme.defaultNoBorder(context),
    child: ChoiceChip(
        avatar: showAvatar
            ? FaIcon(
                icons[index],
            )
            : null,
        label: Text('Item ${index + 1}'),
        selected: value == index,
        onSelected: isDisabled
            ? null
            : (bool selected) {
                onSelected(selected ? index : null);
            },
    )
)

```
