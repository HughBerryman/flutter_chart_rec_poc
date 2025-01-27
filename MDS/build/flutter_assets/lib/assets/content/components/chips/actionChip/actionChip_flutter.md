**Example**

```dart
ActionChip(
    label: const Text('Label'),
    avatar: showAvatar
        ? FaIcon(isSelected
                ? FontAwesomeIcons.solidHeart
                : FontAwesomeIcons.heart)
            : null,
    onPressed: isDisabled ? null : () {},
)

```

```dart

Theme(
    data: FmiChipTheme.transparent(context),
    child: ActionChip(
        label: const Text('Label'),
        avatar: showAvatar
            ? FaIcon(isSelected
                ? FontAwesomeIcons.solidHeart
                : FontAwesomeIcons.heart)
            : null,
        onPressed: isDisabled ? null : () {},
    )
)

```

```dart

Theme(
    data: FmiChipTheme.defaultNoBorder(context),
    child: ActionChip(
        label: const Text('Label'),
        avatar: showAvatar
            ? FaIcon(isSelected
                ? FontAwesomeIcons.solidHeart
                : FontAwesomeIcons.heart)
            : null,
        onPressed: isDisabled ? null : () {},
    )
)

```
