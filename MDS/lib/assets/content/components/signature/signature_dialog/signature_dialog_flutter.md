##### Examples

```dart
FilledButton(
  child: const Text("Launch Signature Dialog"),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FmiSignatureDialog(
          onSave: (result) {
            setState(() {
              initValue = result;
            });
          },
          showSaveAsSubmit: true,
          isEditable: true,
          initValue: initValue,
          dialogOptions: FmiSignatureDialogOptions(
            title: "Sample Signature Dialog",
            collectComment: true,
            collectAttachment: true,
            imageAttachmentOnly: false
          ),
          canDownload: false
        )
      )
    );
  }
)
```
