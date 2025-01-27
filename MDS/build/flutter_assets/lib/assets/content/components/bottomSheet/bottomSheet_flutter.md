**Examples**

```dart
ElevatedButton(
  child: const Text('Open Bottom Sheet'),
  onPressed: (() {
    showModalBottomSheet(
        context: context,
        builder: (context) => Center(
            child: ElevatedButton(
                child: const Text('Close'),
                onPressed: (() => Navigator.pop(context)))));
  }),
),
```

` `