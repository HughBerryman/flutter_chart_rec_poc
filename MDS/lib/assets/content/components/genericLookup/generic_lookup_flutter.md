##### Examples

```dart                             
GenericLookupWidget(
    enabled: isEditable,
    initialValue: existingValue,
    fieldTitle: formFieldModel.title,
    errorText: field.errorText,
    dataSource: genericLookupTypeOptions.dataSource!,
    lookupItems: lookupItems,
    options: genericLookupTypeOptions.dataOptions,
    supportOnline: genericLookupTypeOptions.supportOnline,
    onChanged: (lookupItem) async {
        if (lookupItem != null) {
                field.didChange(GenericLookupResult(
                  id: lookupItem.id,
                  value: lookupItem.value,
                  isNumeric: lookupItem.isNumeric,
                ));
        } else {
            field.didChange(null);
        }
    }
),
```

