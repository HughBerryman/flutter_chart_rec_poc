**Examples**

```dart 
void _showDialogEmployeeTapped(BuildContext context, Employee selectedEmployee) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text('Employee selected: ${selectedEmployee.employeeID}'),
      );
    },
  );
}

void _showDialogTrailingTapped(BuildContext context, Employee selectedEmployee) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text('Trailing selected: ${selectedEmployee.employeeID}'),
      );
    },
  );
}
```

```dart 
FmiEmployeeDirectorySearch(
  onTapEmployee: (selectedEmployee) {
    _showDialogEmployeeTapped(context, selectedEmployee);
  },
  onTapTrailing: (selectedEmployee) {
    _showDialogTrailingTapped(context, selectedEmployee);
  },
)

```

```dart

double _height = MediaQuery.of(context).size.height;
    double? _maxHeight =
        _height < FMIThemeBase.baseContainerDimension450 ? _height * 0.7 : null;

```

```dart 
FmiEmployeeDirectorySearch(
  maxResultsListHeight: _maxHeight,
  useCircleShape: true,
  hideElevation: true,
  backgroundColor: Theme.of(context)
    .colorScheme
    .fmiBaseThemeAltSurfaceInverseAltSurface,
  suffixIconColor: Theme.of(context)
    .colorScheme
    .fmiBaseThemeAltSurfaceInverseOnAltSurface,
  leadingIconColor: Theme.of(context)
      .colorScheme
      .fmiBaseThemeAltSurfaceInverseOnAltSurface,
  onTapEmployee: (selectedEmployee) {
    _showDialogEmployeeTapped(context, selectedEmployee);
  },
  onTapTrailing: (selectedEmployee) {
    _showDialogTrailingTapped(context, selectedEmployee);
  },
  hideOverlayOnEmployeeSelected: false
)
```

```dart 
FmiEmployeeDirectorySearch(
  maxResultsListHeight: _maxHeight,
  useBorder: true,
  useBadgeSystem: true,
  enabled: true,
  onTapEmployee: (selectedEmployee) {
    _showDialogEmployeeTapped(context, selectedEmployee);
  },
  onTapTrailing: (selectedEmployee) {
    _showDialogTrailingTapped(context, selectedEmployee);
  },
  hideOverlayOnEmployeeSelected: false
)
```

` `