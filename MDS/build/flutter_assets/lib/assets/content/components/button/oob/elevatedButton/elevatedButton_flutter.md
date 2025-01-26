**Examples**

```dart
ElevatedButton(onPressed: () {}, child: const Text('Enabled')),
```

```dart
ElevatedButton.icon(
  onPressed: () {},
  icon: const FaIcon(
    FontAwesomeIcons.chevronLeft,
  ),
  label: const Text('Icon')),
```

```dart
const ElevatedButton(onPressed: null, child: Text('Disabled'))
```
