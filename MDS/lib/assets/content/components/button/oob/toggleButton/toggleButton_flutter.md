**Examples**


```dart

class ToggleButtonsOOB extends StatelessWidget {
  final List<bool> isSelected;
  final List<Widget> children;
  final Function(int) onPressed;
  final Axis? direction;
  final BoxConstraints? constraints;

  const ToggleButtonsOOB(
      {required this.isSelected,
      required this.children,
      required this.onPressed,
      this.direction = Axis.horizontal,
      this.constraints,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      constraints: constraints,
      direction: direction!,
      isSelected: isSelected,
      onPressed: (int index) {
        onPressed(index);
      },
      children: children.map((child) => child).toList()
    );
  }
}

```

```dart
 
final List<bool> _selectedSportsTextDemo1 = <bool>[false, false, false];

final List<Widget> _sportsTextDemo1 = <Widget>[
  const Text('Baseball'),
  const Text('Hockey'),
  const Text('Football')
];

```

```dart

ToggleButtonsOOB(
  children: _sportsTextDemo1,
  isSelected: _selectedSportsTextDemo1,
  onPressed: (index) {
    setState(() {
      _selectedSportsTextDemo1[index] =
        !_selectedSportsTextDemo1[index];
    });
  },
)

```

```dart

final List<bool> _selectedSportsTextDemo2 = <bool>[false, false, false];

final List<Widget> _sportsTextDemo2 = <Widget>[
  const Text('Baseball'),
  const Text('Hockey'),
  const Text('Football')
];

```

```dart

ToggleButtonsOOB(
  children: _sportsTextDemo2,
  isSelected: _selectedSportsTextDemo2,
  direction: Axis.vertical,
  onPressed: (index) {
    setState(() {
      _selectedSportsTextDemo2[index] =
        !_selectedSportsTextDemo2[index];
    });
  },
)

```

```dart

final List<bool> _selectedSportsIconDemo1 = <bool>[false, false, false];

List<Widget> _sportsIconDemo1 = [];

void _getIconsDemo1() {
  _sportsIconDemo1 = <Widget>[
    FaIcon(_selectedSportsIconDemo1[0]
      ? FontAwesomeIcons.solidBaseball
      : FontAwesomeIcons.lightBaseball),
    FaIcon(_selectedSportsIconDemo1[1]
      ? FontAwesomeIcons.solidHockeyPuck
      : FontAwesomeIcons.lightHockeyPuck),
    FaIcon(_selectedSportsIconDemo1[2]
      ? FontAwesomeIcons.solidFootball
      : FontAwesomeIcons.lightFootball),
  ];
}

```

```dart

ToggleButtonsOOB(
  children: _sportsIconDemo1,
  isSelected: _selectedSportsIconDemo1,
  onPressed: (index) {
    setState(() {
      _selectedSportsIconDemo1[index] =
        !_selectedSportsIconDemo1[index];
    _getIconsDemo1();
    });
  },
)

```

```dart
final List<bool> _selectedSportsIconDemo2 = <bool>[false, false, false];

List<Widget> _sportsIconDemo2 = [];

void _getIconsDemo2() {
  _sportsIconDemo2 = <Widget>[
    FaIcon(_selectedSportsIconDemo2[0]
      ? FontAwesomeIcons.solidBaseball
      : FontAwesomeIcons.lightBaseball),
    FaIcon(_selectedSportsIconDemo2[1]
      ? FontAwesomeIcons.solidHockeyPuck
      : FontAwesomeIcons.lightHockeyPuck),
    FaIcon(_selectedSportsIconDemo2[2]
      ? FontAwesomeIcons.solidFootball
      : FontAwesomeIcons.lightFootball),
  ];
}

```

```dart

ToggleButtonsOOB(
  children: _sportsIconDemo2,
  isSelected: _selectedSportsIconDemo2,
  direction: Axis.vertical,
  onPressed: (index) {
    setState(() {
      _selectedSportsIconDemo2[index] =
        !_selectedSportsIconDemo2[index];
      _getIconsDemo2();
    });
  },
)

```

```dart

final List<bool> _selectedSportsTextDemo3 = <bool>[false, false, false];


final List<Widget> _sportsTextDemo3 = <Widget>[
  const Padding(
    padding: EdgeInsets.symmetric(
      vertical: FMIThemeBase.basePadding5,
      horizontal: FMIThemeBase.basePadding12),
    child: Text('Baseball'),
  ),
  const Padding(
    padding: EdgeInsets.symmetric(
      vertical: FMIThemeBase.basePadding5,
      horizontal: FMIThemeBase.basePadding12),
    child: Text('Hockey'),
  ),
  const Padding(
    padding: EdgeInsets.symmetric(
      vertical: FMIThemeBase.basePadding5,
      horizontal: FMIThemeBase.basePadding12),
    child: Text('Football'),
  )
];

```

```dart

ToggleButtonsOOB(
  children: _sportsTextDemo3,
  isSelected: _selectedSportsTextDemo3,
  onPressed: (index) {
    setState(() {
      _selectedSportsTextDemo3[index] =
        !_selectedSportsTextDemo3[index];
    });
  },
)

```

```dart

final List<bool> _selectedSportsTextDemo4 = <bool>[false, false, false];

final List<Widget> _sportsTextDemo4 = <Widget>[
  const Text('Bike'),
  const Text('Running'),
  const Text('Tree Climbing')
];

```

```dart

ToggleButtonsOOB(
  children: _sportsTextDemo4,
  isSelected: _selectedSportsTextDemo4,
  constraints: const BoxConstraints(
    minHeight: FMIThemeBase.baseContainerDimension48,
    minWidth: FMIThemeBase.baseContainerDimension150,
  ),
  onPressed: (index) {
    setState(() {
      _selectedSportsTextDemo4[index] =
        !_selectedSportsTextDemo4[index];
    });
  },
)

```