**Examples**

```dart
List<Employee> mockPreSelectedEmployees = [
     Employee(
         employeeID: "0060064147",
         displayName: "BOB JANCOSKI",
         photoUrl:
             "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg"),
     Employee(
         employeeID: "0060060537",
         displayName: "CHRISTOPHER KEMP",
         photoUrl:
             "https://images.services-dev.fmi.com/publishedimages/0060060537.jpg"),
    ];
```

```dart                             
FmiMultiEmployeeLookupWidget(
  initialValue: mockPreSelectedEmployees,
  enabled: false,
  endpointUrlRelativePath: "employees",
),
```

` `