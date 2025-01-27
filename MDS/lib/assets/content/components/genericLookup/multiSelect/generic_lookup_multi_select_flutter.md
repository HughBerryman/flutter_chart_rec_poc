##### Examples

```dart                             
GenericLookupMultiSelectWidget(
    enabled: isEditable,
    initialValue: existingValue?.results,
    fieldTitle: formFieldModel.title,
    errorText: field.errorText,
    lookupItems: genericTableModel,
    options: genericLookupMultiSelectTypeOptions.dataOptions,
    dataSource: genericLookupMultiSelectTypeOptions.dataSource!,
    supportOnline: genericLookupMultiSelectTypeOptions.supportOnline,
    onChanged: (lookupItem) async {
            if (lookupItem == null || lookupItem.isEmpty) {
            field.didChange(null);
            } else {
            field.didChange(
                GenericLookupMultiSelectResult(results: lookupItem));
            }
        },
),
```

