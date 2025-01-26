

```dart
FmiWarningTextFieldWidget(
    initValue: showNotAvailableButtonDemo,
    decoration: FmiEnahncedInputDecoration(
        labelText: 'Existing value',
        warningText: 'String',
        warningStyle: TextStyle(),
        floatingLabelWarningStyle: TextStyle(),
        fillWarningColor: Color(),
        warningBorder: InputBorder(),
        enabledWarningBorder: InputBorder(),
        focusedWarningBorder: InputBorder(),
        // and other properties from InputDecoration()
        ...
    ),
    warningValidator: (value) => warningValidatorFunction(value),
    // and other properties from TextField()
    ...
),

```
