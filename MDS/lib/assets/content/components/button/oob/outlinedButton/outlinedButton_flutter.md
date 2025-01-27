**Examples**

```dart
OutlinedButton(onPressed: () {}, child: const Text('Enabled')),
```

```dart
OutlinedButton.icon(
  onPressed: () {},
  icon: const FaIcon(
    FontAwesomeIcons.chevronLeft,
  ),
  label: const Text('Icon')),
```

```dart
const OutlinedButton(onPressed: null, child: Text('Disabled')),
```
