**Examples**

```dart

 DropdownButtonFormField(
    value: dropdownValue1,
    hint: const Text('Select an item'),
    items: <String>[
        'Item 1',
        'Item 2',
        'Item 3',
        'Item 4',
        'Item 5'
    ].map((String value) {
        return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
        );
    }).toList(),
    onChanged: (String? newValue) {
        setState(() {
            dropdownValue2 = newValue!;
        });
    }),

```

```dart

Theme(
    data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
    child: DropdownButtonFormField(
        value: dropdownValue1,
        hint: const Text('Select an item'),
        items: <String>[
            'Item 1',
            'Item 2',
            'Item 3',
            'Item 4',
            'Item 5'
        ].map((String value) {
            return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
            );
        }).toList(),
    onChanged: (String? newValue) {
        setState(() {
            dropdownValue2 = newValue!;
        });
    }),
)

```