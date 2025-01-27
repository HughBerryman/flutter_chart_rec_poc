**Examples**

```dart
FmiAttachmentWidget(
    imageOnly: false,
    onAttachmentsChanged: (_) => debugPrint('Attachment Changed'),
    initialAttachments: [
        Attachment(name: 'default.jpeg', bytes: byteList, size: 123)
    ],
    canDownload: false,
),
```

