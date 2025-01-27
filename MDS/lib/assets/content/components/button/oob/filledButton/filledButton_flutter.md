**Examples**

**Filled**

```dart
FilledButton(onPressed: () {}, child: const Text('Enabled')),
```

```dart
FilledButton.icon(
    onPressed: () {},
    icon: const FaIcon(
      FontAwesomeIcons.chevronLeft,
    ),
    label: const Text('Icon')
),
```

```dart
const FilledButton(onPressed: null, child: Text('Disabled')),
```

**Filled - Tonal**

```dart
FilledButton.tonal(onPressed: () {}, child: const Text('Enabled')),
```

```dart
FilledButton.tonalIcon(
    onPressed: () {},
    icon: const FaIcon(
      FontAwesomeIcons.chevronLeft,
    ),
    label: const Text('Icon')),
```

```dart
const FilledButton.tonal(onPressed: null, child: Text('Disabled')),
```

**Filled - Secondary**

```dart
FilledButton(
  style: ButtonStyleHelper.getSecondaryFilledButtonStyle(context),
  onPressed: () {},
  child: const Text('Enabled'),
),
```

```dart
FilledButton.icon(
  style: ButtonStyleHelper.getSecondaryFilledButtonStyle(context),
  onPressed: () {},
  icon: const FaIcon(
    FontAwesomeIcons.chevronLeft,
  ),
  label: const Text('Icon'),
),
```

```dart
FilledButton(
  style: ButtonStyleHelper.getSecondaryFilledButtonStyle(context),
  onPressed: null,
  child: const Text('Disabled'),
),
```

**Filled - Hero**

```dart
FilledButton(
  style: ButtonStyleHelper.getHeroFilledButtonStyle(context),
  onPressed: () {},
  child: const Text('Enabled'),
),
```

```dart
FilledButton.icon(
  style: ButtonStyleHelper.getHeroFilledButtonStyle(context),
  onPressed: () {},
  icon: const FaIcon(
    FontAwesomeIcons.chevronLeft,
  ),
  label: const Text('Icon'),
),
```

```dart
FilledButton(
  style: ButtonStyleHelper.getHeroFilledButtonStyle(context),
  onPressed: null,
  child: const Text('Disabled'),
),
```
