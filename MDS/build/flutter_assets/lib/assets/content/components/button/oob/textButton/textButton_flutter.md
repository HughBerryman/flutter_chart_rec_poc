**Examples**

```dart
TextButton(onPressed: () {}, child: const Text('Enabled')),
```

```dart
TextButton.icon(
  onPressed: () {},
  icon: const FaIcon(
    FontAwesomeIcons.chevronLeft,
  ),
  label: const Text('Icon')),
```

```dart
const TextButton(onPressed: null, child: Text('Disabled')),
```
