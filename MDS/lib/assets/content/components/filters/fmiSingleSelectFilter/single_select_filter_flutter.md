##### Examples

```dart

class _DemoSingleSelectFilterState extends State<DemoSingleSelectFilter> {
  String labelDue = 'Due';
  IconData iconDue = FontAwesomeIcons.solidClock;
  List<FilterSingleSelect> filtersDue = [
    FilterSingleSelect(id: 1, value: false, text: 'Past Due'),
    FilterSingleSelect(id: 2, value: false, text: 'Due Today'),
    FilterSingleSelect(id: 3, value: false, text: 'Due in 3 days'),
    FilterSingleSelect(id: 4, value: false, text: 'Due in 7 days'),
    FilterSingleSelect(id: 5, value: false, text: 'Due <= 30 days'),
    FilterSingleSelect(id: 6, value: false, text: 'Due > 30 days'),
  ];
  late List<FilterOption> _optionsDue = [];
  FilterOption? _initialSelectedDue;

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
  FilterOption? _initialSelectedEmployee;

  @override
  void initState() {
    for (var option in filtersDue) {
      var filter =
          FilterOption(id: option.id, title: option.text, value: option);
      _optionsDue.add(filter);
      if (option.value) {
        _initialSelectedDue = filter;
      }
    }

    for (var option in filtersEmployees) {
      var leading = IgnorePointer(
        child: FmiAvatar(
            selectedBehaviorOff: true,
            displayName: option.employee.displayName ?? '',
            avatarSize: FmiAvatarSize.large,
            url: option.employee.photoURL),
      );
      var filter = FilterOption(
          id: option.id, title: option.text, value: option, leading: leading);
      _optionsEmployees.add(filter);
      if (option.value) {
        _initialSelectedEmployee = filter;
      }
    }

    super.initState();
  }

  void onChangedDue(FilterOption? selectedOption) {
    // Demo example
    setState(() {
      _initialSelectedDue = selectedOption;
      labelDue = selectedOption != null ? selectedOption.title : 'Due';
      for (var filter in filtersDue) {
        if (selectedOption != null && filter.id == selectedOption.id) {
          filter.value = true;
        } else {
          filter.value = false;
        }
      }
    });
  }

  void onChangedEmployee(FilterOption? selectedOption) {
    // Demo example
    setState(() {
      _initialSelectedEmployee = selectedOption;
      labelEmployee = selectedOption != null ? selectedOption.title : 'Created';
      for (var filter in filtersEmployees) {
        if (selectedOption != null && filter.id == selectedOption.id) {
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
        const ComponentHeader(title: 'Fmi Single Select Filter'),
        Row(
          children: [
            FmiDialogFilterSingleSelectButton(
              label: labelDue,
              icon: iconDue,
              onChanged: onChangedDue,
              options: _optionsDue,
              initialSelected: _initialSelectedDue,
            ),
            const SizedBox(width: FMIThemeBase.baseGapLarge),
            FmiDialogFilterSingleSelectButton(
              label: labelEmployee,
              icon: iconEmployee,
              onChanged: onChangedEmployee,
              options: _optionsEmployees,
              initialSelected: _initialSelectedEmployee,
            ),
          ],
        ),
      ],
    );
  }
}

```

```dart   

class FilterSingleSelect {
  int? id;
  bool value;
  String text;

  FilterSingleSelect({this.id, required this.value, required this.text});
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