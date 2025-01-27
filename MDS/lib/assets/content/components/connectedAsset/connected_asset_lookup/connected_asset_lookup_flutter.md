##### Examples

```dart                             
FmiConnectedAssetLookupWidget(
    initialValue: existingValue?.asset,
    fieldTitle: formFieldModel.title,
    enabled: isEditable,
    errorText: field.errorText,
    onChanged: (asset) {
      ConnectedAssetLookupResult? value;
      if (asset != null) {
        value = ConnectedAssetLookupResult(asset: asset);
      }
      field.didChange(value);
    },
    searchTerm: queryParameterValue
),
```

