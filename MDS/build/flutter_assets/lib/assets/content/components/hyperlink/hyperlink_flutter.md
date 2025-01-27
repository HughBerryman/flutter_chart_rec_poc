##### Examples

```dart
FmiHyperlink(
  uri: Uri.parse("https://www.google.com"),
  displayText: "https://www.google.com",
  beforeText: "This is a web link to Google: ",
  afterText: ". Click the link to navigate.",
)
```
```dart
FmiHyperlink(
  uri: Uri(scheme: 'tel', path: '1234567890'),
  displayText: "(123) 456-7890",
  beforeText: "This is a phone link: ",
  afterText: ". Click the link to navigate.",
)
```
```dart
FmiHyperlink(
  uri: Uri(scheme: 'mailto', path: 'smith@example.com'),
  displayText: "smith@example.com",
  beforeText: "This is an email link: ",
  afterText: ". Click the link to navigate.",
)
```
```dart
FmiHyperlink(
  uri: Uri.parse("https://www.google.com"),
  displayText: "https://www.google.com",
  beforeText: "This is a web link to Google using an adjusted style: ",
  afterText: ". Click the link to navigate.",
  textStyle: Theme.of(context).textTheme.bodyLarge,
)
```