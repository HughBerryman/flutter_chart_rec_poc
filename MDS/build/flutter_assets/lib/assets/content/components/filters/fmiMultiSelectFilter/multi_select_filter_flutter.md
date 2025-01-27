##### Examples

```dart

class _DemoMultiSelectFilterState extends State<DemoMultiSelectFilter> {
  String labelEmployee = 'Created';
  IconData iconEmployee = FontAwesomeIcons.solidPerson;
  List<FilterMultiSelectEmployee> filtersEmployees = [
    FilterMultiSelectEmployee(
        value: false,
        text: 'Charles Dickens',
        employee:
            EmployeeModel(employeeID: '1', displayName: 'Charles Dickens')),
    FilterMultiSelectEmployee(
        value: false,
        text: 'Emily Bronte',
        employee: EmployeeModel(employeeID: '2', displayName: 'Emily Bronte')),
    FilterMultiSelectEmployee(
        value: false,
        text: 'Bob Jancoski',
        employee: EmployeeModel(
            employeeID: '0060064147',
            displayName: 'Bob Jancoski',
            photoURL:
                'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg')),
  ];
  late List<FilterOption> _optionsEmployees = [];
  late List<FilterOption> _initialSelectedEmployees = [];

  String labelType = 'Type';
  IconData iconType = FontAwesomeIcons.solidListCheck;
  List<FilterMultiSelectType> filtersTypes = [
    FilterMultiSelectType(id: 1, value: false, text: 'Task'),
    FilterMultiSelectType(id: 2, value: false, text: 'Form'),
  ];

  late List<FilterOption> _optionsTypes = [];
  late List<FilterOption> _initialSelectedTypes = [];

  @override
  void initState() {
    for (var option in filtersEmployees) {
      var leading = IgnorePointer(
        child: FmiAvatar(
            selectedBehaviorOff: true,
            displayName: option.employee.displayName ?? '',
            avatarSize: FmiAvatarSize.large,
            url: option.employee.photoURL),
      );
      var filter = FilterOption(
          id: option.employee.employeeID,
          title: option.text,
          value: option,
          leading: leading);
      _optionsEmployees.add(filter);
      if (option.value) {
        _initialSelectedEmployees.add(filter);
      }
    }

    for (var option in filtersTypes) {
      var filter =
          FilterOption(id: option.id, title: option.text, value: option);
      _optionsTypes.add(filter);
      if (option.value) {
        _initialSelectedTypes.add(filter);
      }
    }

    super.initState();
  }

  void onSaveEmployees(List<FilterOption> selectedOptions) {
    // Demo example
    setState(() {
      _initialSelectedEmployees = selectedOptions;
      selectedOptions.sort((a, b) => a.id.compareTo(b.id));

      labelEmployee = selectedOptions.isNotEmpty
          ? selectedOptions[0].title +
              ' (' +
              selectedOptions.length.toString() +
              ')'
          : 'Created';

      for (var filter in filtersEmployees) {
        var exists = selectedOptions.any((option) => option.id == filter.id);
        if (exists) {
          filter.value = true;
        } else {
          filter.value = false;
        }
      }
    });
  }

  void onSaveTypes(List<FilterOption> selectedOptions) {
    // Demo example
    setState(() {
      _initialSelectedTypes = selectedOptions;
      selectedOptions.sort((a, b) => a.id.compareTo(b.id));

      labelType = selectedOptions.isNotEmpty
          ? selectedOptions[0].title +
              ' (' +
              selectedOptions.length.toString() +
              ')'
          : 'Type';

      for (var filter in filtersTypes) {
        var exists = selectedOptions.any((option) => option.id == filter.id);
        if (exists) {
          filter.value = true;
        } else {
          filter.value = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Multi Select Filter'),
        Row(
          children: [
            FmiDialogFilterMultiSelectButton(
                label: labelEmployee,
                icon: iconEmployee,
                onSave: onSaveEmployees,
                options: _optionsEmployees,
                initialSelected: _initialSelectedEmployees),
            const SizedBox(width: FMIThemeBase.baseGapLarge),
            FmiDialogFilterMultiSelectButton(
                label: labelType,
                icon: iconType,
                onSave: onSaveTypes,
                options: _optionsTypes,
                initialSelected: _initialSelectedTypes)
          ],
        ),
      ],
    );
  }
}

```

```dart 

class FilterMultiSelectEmployee {
  int? id;
  bool value;
  String text;
  EmployeeModel employee;

  FilterMultiSelectEmployee(
      {this.id,
      required this.value,
      required this.text,
      required this.employee});
}

```

```dart 

class FilterMultiSelectType {
  int? id;
  bool value;
  String text;

  FilterMultiSelectType({this.id, required this.value, required this.text});
}

```