**Examples**

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    DropdownButton(
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
          dropdownValue1 = newValue!;
        });
      },
    ),
    const SizedBox(
      width: FMIThemeBase.baseGapXLarge,
    ),
    DropdownButton(
      value: dropdownValue2,
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
      },
    ),
  ],
),
```