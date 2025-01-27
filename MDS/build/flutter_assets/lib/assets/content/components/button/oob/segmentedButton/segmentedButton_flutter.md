**Examples**

Multi Select with Empty Selection Allowed, Selected Icon False and Long Text

```dart

SegmentedButton<String>(
  showSelectedIcon: false,
  emptySelectionAllowed: true,
  segments: <ButtonSegment<String>>[
    ButtonSegment<String>(
      value: 'Option 1',
      label: const Text('Option 1',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      icon: selectedSegments.contains('Option 1')
        ? const FaIcon(
          FontAwesomeIcons.solidClock,
          size: FMIThemeBase.baseIconSmall,
        )
        : const FaIcon(
          FontAwesomeIcons.lightClock,
          size: FMIThemeBase.baseIconSmall,
        ),
    ),
    ButtonSegment<String>(
      value: 'Option 2',
      label: const Text('Option 2', 
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      icon: selectedSegments.contains('Option 2')
        ? const FaIcon(
          FontAwesomeIcons.solidDroplet,
          size: FMIThemeBase.baseIconSmall,
        )
        : const FaIcon(
          FontAwesomeIcons.lightDroplet,
          size: FMIThemeBase.baseIconSmall,
        ),
    ),
    ButtonSegment<String>(
      value: 'Option 3',
      label: const Text(
        'Option 3 Long text here for this option',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      icon: selectedSegments.contains('Option 3')
        ? const FaIcon(
          FontAwesomeIcons.solidBell,
          size: FMIThemeBase.baseIconSmall,
        )
        : const FaIcon(
          FontAwesomeIcons.lightBell,
          size: FMIThemeBase.baseIconSmall,
        ),
    ),
  ],
  selected: selectedSegments,
  multiSelectionEnabled: true,
  onSelectionChanged: (Set<String> newSelection) {
    setState(() {
      selectedSegments = newSelection;
    });
  },
),

```

Multi Select with Empty Selection Allowed 

```dart

SegmentedButton<String>(
  emptySelectionAllowed: true,
  segments: <ButtonSegment<String>>[
    ButtonSegment<String>(
      value: 'Option 1',
      label: const Text('Option 1',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      icon: selectedSegments2.contains('Option 1')
        ? const FaIcon(
          FontAwesomeIcons.solidClock,
          size: FMIThemeBase.baseIconSmall,
        )
        : const FaIcon(
          FontAwesomeIcons.lightClock,
          size: FMIThemeBase.baseIconSmall,
        ),
    ),
    ButtonSegment<String>(
      value: 'Option 2',
      label: const Text('Option 2',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      icon: selectedSegments2.contains('Option 2')
        ? const FaIcon(
          FontAwesomeIcons.solidDroplet,
          size: FMIThemeBase.baseIconSmall,
        )
        : const FaIcon(
          FontAwesomeIcons.lightDroplet,
          size: FMIThemeBase.baseIconSmall,
        ),
    ),
    ButtonSegment<String>(
      value: 'Option 3',
      label: const Text('Option 3',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      icon: selectedSegments2.contains('Option 3')
        ? const FaIcon(
          FontAwesomeIcons.solidBell,
          size: FMIThemeBase.baseIconSmall,
        )
        : const FaIcon(
          FontAwesomeIcons.lightBell,
          size: FMIThemeBase.baseIconSmall,
        ),
    ),
  ],
  selected: selectedSegments2,
  multiSelectionEnabled: true,
  onSelectionChanged: (Set<String> newSelection) {
    setState(() {
      selectedSegments2 = newSelection;
    });
  },
)

```

Single Select Icon Only

```dart

SegmentedButton<String>(
  segments: <ButtonSegment<String>>[
    ButtonSegment<String>(
      value: 'Option 1',
      icon: _selectedSegmentIconOnly == 'Option 1'
        ? const FaIcon(FontAwesomeIcons.solidClock)
        : const FaIcon(FontAwesomeIcons.lightClock),
    ),
    ButtonSegment<String>(
      value: 'Option 2',
      icon: _selectedSegmentIconOnly == 'Option 2'
          ? const FaIcon(FontAwesomeIcons.solidDroplet)
          : const FaIcon(FontAwesomeIcons.lightDroplet),
    ),
    ButtonSegment<String>(
      value: 'Option 3',
      icon: _selectedSegmentIconOnly == 'Option 3'
        ? const FaIcon(FontAwesomeIcons.solidBell)
        : const FaIcon(FontAwesomeIcons.lightBell),
    ),
  ],
  selected: <String>{_selectedSegmentIconOnly},
  onSelectionChanged: (Set<String> newSelection) {
    setState(() {
      _selectedSegmentIconOnly = newSelection.first;
    });
  },
),

```

Single Select Label Only

```dart

SegmentedButton<String>(
  segments: const <ButtonSegment<String>>[
    ButtonSegment<String>(
      value: 'Option 1',
      label: Text('Option 1',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    ButtonSegment<String>(
      value: 'Option 2',
      label: Text('Option 2',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    ButtonSegment<String>(
      value: 'Option 3',
      label: Text('Option 3',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ),
  ],
  selected: <String>{_selectedSegmentTextOnly},
  onSelectionChanged: (Set<String> newSelection) {
    setState(() {
      _selectedSegmentTextOnly = newSelection.first;
    });
  },
),

```