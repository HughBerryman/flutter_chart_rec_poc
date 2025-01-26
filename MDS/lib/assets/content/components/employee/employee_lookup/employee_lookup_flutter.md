**Examples**

```dart                             
EmployeeLookupWidget(
    enabled: isEditable,
    initialValue: existingValue?.employee ?? defaultEmployeeLookupResult?.employee,
    fieldTitle: formFieldModel.title,
    errorText: field.errorText,
    onChanged: (employee){
        field.didChange(EmployeeLookupResult(employee: employee));
    },
),
```

` `