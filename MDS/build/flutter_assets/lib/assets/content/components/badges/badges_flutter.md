**Examples**

```dart
FmiBadge(
    alignment: AlignmentPosition.topRight,
    size: BadgeSize.regular,
    backgroundColor: BadgeColor.primary,
    icon: FontAwesomeIcons.solidCommentPlus,
    child: Card(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: SizedBox(
          height: FMIThemeBase.baseContainerDimension100,
          width: FMIThemeBase.baseContainerDimension200,
          child: Center(
            child: Text(
              'Top Right Badge',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ),
    ),
),
```


**Icon Button With Badge**
```dart
IconButton(
  tooltip: 'My Icon Button',
  onPressed: () {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text(' Pressed'),
        content: const Text(
          'Click the OK button to close'),
        actions: [
          TextButton(
            child: const Text("OK"),
            onPressed: () {
              Navigator.of(context,
                rootNavigator: true)
              .pop('dialog');
            },
          )
        ]
      )
    );
  },
  icon: FmiBadge(
    size: BadgeSize.regular,
    backgroundColor: BadgeColor.secondary,
    text: '99+',
    child: FaIcon(
      FontAwesomeIcons.solidCommentPlus,
      color: Theme.of(context).colorScheme.primary,
      size: FMIThemeBase.baseIconMedium,
    ),
  )
)
```

