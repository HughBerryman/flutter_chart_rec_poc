**Example**

**Title: text title, text subtitle**

```dart

AppBar(
  automaticallyImplyLeading: false,
  title: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Longer Title',
      ),
      if (showSubtitle)
        Text(
          'longer subtitle',
          style: Theme.of(context)
            .textTheme
            .labelLarge
            ?.copyWith(color: getColor(context)),
        )
    ],
  ),
  actions: hideActions ? null : getActions()
);

```

**Title: leading widgets, text title, text subtitle**

```dart

AppBar(
  automaticallyImplyLeading: false,
  title: Row(
    children: [
      if (showMultipleLeading) ...[
        getLeadingIcon(toggleLeading),
        Padding(
          padding:
            const EdgeInsets.only(right: FMIThemeBase.basePadding4),
          child: getLeadingImage(),
        )
      ],
      if (!showMultipleLeading) ...[
        toggleLeading
          ? Padding(
              padding: const EdgeInsets.only(
                right: FMIThemeBase.basePadding4),
              child: getLeadingImage(),
            )
          : IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const FaIcon(
                FontAwesomeIcons.arrowLeft,
              )
            ),
      ],
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Longer Title',
            ),
            if (showSubtitle)
              Text(
                'longer subtitle',
                style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: getColor(context)),
              )
          ],
        ),
      ),
    ],
  ),
  actions: hideActions ? null : getActions()
);

```

**Centering title - Approved for EWS Forms only**

```dart

AppBar(
  automaticallyImplyLeading: false,
  leadingWidth: hideLeading
    ? FMIThemeBase.baseContainerDimension0
    : showMultipleLeading
        ? FMIThemeBase.basePadding8 +
                    FMIThemeBase.baseContainerDimension40 +
                    FMIThemeBase.baseContainerDimension40
        : null,
  centerTitle: true,
  leading: Padding(
    padding: const EdgeInsets.only(left: FMIThemeBase.basePadding8),
    child: Row(children: [
      if (showMultipleLeading) ...[
        getLeadingIcon(toggleLeading),
        getLeadingImage(),
      ],
      if (!showMultipleLeading) ...[
        toggleLeading
          ? getLeadingImage()
          : IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const FaIcon(
                FontAwesomeIcons.arrowLeft,
              )
            ),
      ],
    ]),
  ),
  title: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        'Longer Title',
      ),
      if (showSubtitle)
        Text(
          'longer subtitle',
          style: Theme.of(context)
            .textTheme
            .labelLarge
            ?.copyWith(color: getColor(context)),
        )
    ],
  ),
  actions: hideActions ? null : getActions()
);

```

```dart

PreferredSize(
  preferredSize: FMIThemeBase.baseContainerDimension64
  child: Theme(
    data: FmiAppBarTheme.surface(context),
    child: // See app bar code snippet above
  )
)

```

```dart

PreferredSize(
  preferredSize: FMIThemeBase.baseContainerDimension64
  child: Theme(
    data: FmiAppBarTheme.inverseAltSurface(context),
    child: // See app bar code snippet above
  )
)

```

```dart

PreferredSize(
  preferredSize: FMIThemeBase.baseContainerDimension64
  child: Theme(
    data: FmiAppBarTheme.forceDarkMode(context),
    child: // See app bar code snippet above
)

```

```dart

 Widget getLeadingIcon(bool toggleLeading) {
    return toggleLeading
      ? IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const FaIcon(
          FontAwesomeIcons.arrowLeft,
        )
      )
      : IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const FaIcon(
          FontAwesomeIcons.bars,
        )
      );
}

```

```dart

Widget getLeadingImage() {
  return SizedBox(
    width: FMIThemeBase.baseContainerDimension40,
    child: SvgPicture.asset('assets/images/misc-svgs/FM_logo.svg'));
}

```

```dart

List<Widget> getActions() {
  return [
    IconButton(
      onPressed: () => _onPressed(context),
      icon: const FaIcon(FontAwesomeIcons.cloudCheck)
    ),
    IconButton(
      onPressed: () => _onPressed(context),
      icon: const FaIcon(FontAwesomeIcons.bell)
    ),
    Padding(
      padding: const EdgeInsets.only(right: FMIThemeBase.basePadding8),
      child: IconButton(
        onPressed: () => _onPressed(context),
        icon: const FaIcon(FontAwesomeIcons.ellipsisVertical)
      ),
    ),
  ];
}

```

```dart

Color getColor(BuildContext context) {
  if (selectedTheme == 'FmiAppBarTheme.surface') {
    return Theme.of(context).colorScheme.onSurface;
  } else if (selectedTheme == 'FmiAppBarTheme.inverseAltSurface') {
    return Theme.of(context)
      .colorScheme
      .fmiBaseThemeAltSurfaceInverseOnAltSurface;
  } else if (selectedTheme == 'FmiAppBarTheme.forceDarkMode') {
    return Theme.of(context).colorScheme.chartGrayscaleGray0;
  } else {
    return Theme.of(context).colorScheme.onSecondaryContainer;
  }
}

```
