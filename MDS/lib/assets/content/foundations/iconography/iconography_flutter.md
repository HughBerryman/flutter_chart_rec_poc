`  `

#### FmiIcons Implementation

```dart
Tooltip(
  message: iconName,
  child: Container(
    width: FMIThemeBase.baseContainerDimension48,
    height: FMIThemeBase.baseContainerDimension48,
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.primary,
      borderRadius:
          BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium),
    ),
    child: Center(
      child: FaIcon(
        FmiIcons.offlineworkspacelegacy,
        size: FMIThemeBase.baseIconMedium,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    ),
  ),
)
```

`  `