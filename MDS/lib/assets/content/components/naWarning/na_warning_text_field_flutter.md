

##### Examples

```dart
FmiNaWarningTextFieldModel showNotAvailableButtonDemo =
      FmiNaWarningTextFieldModel(
    value: ""
  );

```

```dart
FmiNaWarningTextFieldWidget(
    initValue: showNotAvailableButtonDemo,
    decoration: FmiEnahncedInputDecoration(
        labelText: 'Na Warning TextField',
        warningText: 'String',
        warningStyle: TextStyle(),
        floatingLabelWarningStyle: TextStyle(),
        fillWarningColor: Color(),
        warningBorder: InputBorder(),
        enabledWarningBorder: InputBorder(),
        focusedWarningBorder: InputBorder(),
        showNotAvailableButton: true,
        // and other properties from InputDecoration()
        ...
    ),
    warningValidator: (value) => warningValidatorFunction(value),
    // and other properties from TextField()
    ...
),

```
