##### Example

###### Implement Fmi Phone Number Input with pre-existing value but in dial code format

```dart                             
FmiPhoneNumberInput(
    phoneNumber: PhoneNumber(phoneNumber: "+1"),
    onInputChanged: (PhoneNumber phoneNumber) {
        //optional, do something
    },
    onInputValidated: (bool validValue) {
        //run after inputs have been validated
        //optional, do something
    }),
```


##### Example

###### Implement Fmi Phone Number Input with dial code only

```dart                             
FmiPhoneNumberInput(
    phoneNumber: PhoneNumber(dialCode: "+62"),
    onInputChanged: (PhoneNumber phoneNumber) {
        //optional, do something
    },
    onInputValidated: (bool validValue) {
        //run after inputs have been validated
        //optional, do something
    }),
```

##### Example

###### Implement Fmi Phone Number Input with pre-existing value and correct phone number format


```dart
FmiPhoneNumberInput(
    initialValue: PhoneNumber(phoneNumber: "+621500046"),
    onInputChanged: (PhoneNumber phoneNumber) {
        //optional, do something
    },
    onInputValidated: (bool validValue) {
        //run after input have been validated
        //optional, do something
    })
```

##### Example

###### Implement Fmi Phone Number Input without auto-validate on change & Same dial code but different iso code (example : +1 but in CA)


```dart
FmiPhoneNumberInput(
    initialValue: PhoneNumber(phoneNumber: "+12025550128", isoCode: "CA"),
    formatInput: false,
    onInputChanged: (PhoneNumber phoneNumber) {
        //optional, do something
    },
    onInputValidated: (bool validValue) {
        //run after inputs have been validated
        //optional, do something
    }
)
```

###### Example

###### Implement Disabled Fmi Phone Number Input with pre-existing value & Same dial code but different iso code (example : +1 but in US)

```dart
FmiPhoneNumberInput(
    initialValue: PhoneNumber(phoneNumber: "+12025550128", isoCode: "US"),
    enabled: false,
    onInputChanged: (PhoneNumber phoneNumber) {
        //optional, do something
    },
    onInputValidated: (bool validValue) {
        //run after inputs have been validated
        //optional, do something
    }
)
```
##### Example

###### Implement custom error text


```dart
FmiPhoneNumberInput(
    initialValue: "+6215000463",
    errorText: "Some custom error text"
)
```

##### Example

###### Implement Fmi Phone Number Input with ignored validation if blank


```dart
FmiPhoneNumberInput(
    initialValue: "+62",
    ignoreBlank: true
)
```
