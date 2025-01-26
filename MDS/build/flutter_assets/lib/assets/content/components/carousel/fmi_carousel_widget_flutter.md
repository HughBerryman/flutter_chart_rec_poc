**Examples**

```dart
    double itemWidth = MediaQuery.of(context).size.width * .25;

    List<Widget> items = [
      Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: const BorderRadius.all(
                Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
        width: itemWidth,
      ),
      Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.fmiBaseThemeWarningWarning,
            borderRadius: const BorderRadius.all(
                Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
        width: itemWidth,
      ),
      Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.error,
            borderRadius: const BorderRadius.all(
                Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
        width: itemWidth,
      ),
    ];

    FmiCarouselWidget(
      widthOfItem: itemWidth,
      spacing: FMIThemeBase.basePadding15,
      carouselItems: items,
      height: FMIThemeBase.baseContainerDimension200,
    ),

```

` `