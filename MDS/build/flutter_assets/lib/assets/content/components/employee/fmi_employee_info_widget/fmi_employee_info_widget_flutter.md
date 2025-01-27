**Examples**

```dart 
final Employee _mockEmployee1 = Employee(
  employeeID: '0060060537',
  displayName: 'CHRISTOPHER KEMP',
  jobTitle: 'Bus Solution Architect III Systems',
  email: 'test@email.com',
  firstName: 'Christopher',
  lastName: 'Kemp',
  workLocationDescription: 'Phoenix',
  mobilePhone: '+1-555-123-1234',
  photoUrl:
    'https://images.services-dev.fmi.com/publishedimages/0060060537.jpg'
);

final Employee _mockEmployee2 = Employee(
  employeeID: "0060060537",
  displayName: "CHRISTOPHER KEMP",
  jobTitle: 'Bus Solution Architect III Systems',
);

final Employee _mockEmployee3 = Employee(
  employeeID: "0060060537",
  displayName: "CHRISTOPHER KEMP",
  email: 'test@email.com',
);

final Employee _mockEmployee4 = Employee(
  employeeID: "0060060537",
  displayName: 'CHRISTOPHER KEMP',
  photoUrl:
    'https://images.services-dev.fmi.com/publishedimages/0060060537.jpg'
);

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const PlaceholderDialog();
    }
  );
}
```

```dart
FmiEmployeeInfoWidget(employee: _mockEmployee1)
```

```dart
FmiEmployeeInfoWidget(
  showDetails: true, 
  employee: _mockEmployee1
)
```

```dart
FmiEmployeeInfoWidget(
  employee: _mockEmployee3, 
  onTap: () => _showDialog(context)
)
```

```dart
FmiEmployeeInfoWidget(
  showDetails: true,
  employee: _mockEmployee3, 
  onTap: () => _showDialog(context)
)
```

```dart
FmiEmployeeInfoWidget(
  employee: _mockEmployee1,
  onTap: () => _showDialog(context),
  padding: const EdgeInsets.all(FMIThemeBase.basePadding6),
  trailing: IconButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            content: Text('Trailing Pressed'),
          );
        },
      );
    },
    color: Theme.of(context).colorScheme.primary,
    icon: const FaIcon(FontAwesomeIcons.solidPlus),
  ),
)
```

```dart
FmiEmployeeInfoWidget(
  showDetails: true,
  employee: _mockEmployee1,
  onTap: () => _showDialog(context),
  padding: const EdgeInsets.all(FMIThemeBase.basePadding6),
  trailing: IconButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            content: Text('Trailing Pressed'),
          );
        },
      );
    },
    color: Theme.of(context).colorScheme.primary,
    icon: const FaIcon(FontAwesomeIcons.solidPlus),
  ),
)
```

```dart
FmiEmployeeInfoWidget(
  padding: const EdgeInsets.all(FMIThemeBase.basePadding6),
  employee: _mockEmployee1,
  onTap: () => _showDialog(context)
)
```

```dart
FmiEmployeeInfoWidget(
  showDetails: true,
  padding: const EdgeInsets.all(FMIThemeBase.basePadding6),
  employee: _mockEmployee1,
  onTap: () => _showDialog(context)
)
```

```dart
FmiEmployeeInfoWidget(
  padding: const EdgeInsets.all(FMIThemeBase.basePadding6),
  employee: _mockEmployee1,
  onTap: () => _showDialog(context),
  useDisplayName: false
)
```

```dart
FmiEmployeeInfoWidget(
  showDetails: true,
  padding: const EdgeInsets.all(FMIThemeBase.basePadding6),
  employee: _mockEmployee1,
  onTap: () => _showDialog(context),
  useDisplayName: false
)
```

` `