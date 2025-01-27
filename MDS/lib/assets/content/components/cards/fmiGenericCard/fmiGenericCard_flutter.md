**Examples**

FmiGenericCard with All Parameters

```dart
FmiGenericCard(
    leading: const FmiAvatar(
        displayName: 'John Doe', 
        avatarSize: FmiAvatarSize.large
    ),
    overline: 'Overline',
    subtitle: 'Subtitle',
    title: 'Card Title',
    titleMaxLine: 2,
    subtitleMaxLine: 2,
    titleTextThemeMobile: Theme.of(context)
        .textTheme
        .titleMedium
        ?.copyWith(color: Theme.of(context).colorScheme.primary),
    titleTextThemeNotMobile: Theme.of(context)
        .textTheme
        .headlineSmall
        ?.copyWith(color: Theme.of(context).colorScheme.primary),
    subtitleTextStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
        color: Theme.of(context).colorScheme.secondaryContainer),
    overlineTextStyle: Theme.of(context)
        .textTheme
        .titleLarge
        ?.copyWith(color: Theme.of(context).colorScheme.secondary),
    trailing: IconButton(
        icon: FaIcon(
            FontAwesomeIcons.chevronRight,
            color: Theme.of(context).colorScheme.primary,
            size: FMIThemeBase.baseIconMedium,
        ),
        onPressed: () {},
    ),
    body: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
    ),
    footer: Text('Mar 17, 14:32 PM',
        style: Theme.of(context)
            .textTheme
            .labelSmall
            ?.copyWith(color: Theme.of(context).colorScheme.outline)),
),
```

` `

Fmi Generic Card with Two Buttons
```dart
FmiGenericCard(
    leading: FaIcon(
        FontAwesomeIcons.solidClipboard,
        size: FMIThemeBase.baseIconLarge,
        color: Theme.of(context).colorScheme.primary,
    ),
    overline: 'Overline',
    subtitle: 'Subtitle',
    title: 'Card Title',
    trailing: IconButton(
        icon: FaIcon(
            FontAwesomeIcons.chevronRight,
            color: Theme.of(context).colorScheme.primary,
            size: FMIThemeBase.baseIconMedium,
        ),
        onPressed: () {},
    ),
    body: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
        style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
    ),
    footer: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
            IconButton(
                icon: const FaIcon(
                    FontAwesomeIcons.thumbsUp,
                    size: FMIThemeBase.baseIconMedium,
                ),
                onPressed: () {},
            ),
            IconButton(
                icon: const FaIcon(
                    FontAwesomeIcons.ellipsisStroke,
                    size: FMIThemeBase.baseIconMedium,
                ),
                onPressed: () {},
            ),
        ],
    ),
)
```

` `

FmiGenericCard with Graph for Body
```dart
FmiGenericCard(
  overline: 'Overline',
  subtitle: 'Subtitle',
  title: 'Card Title',
  trailing: IconButton(
    icon: FaIcon(
      FontAwesomeIcons.chevronRight,
      color: Theme.of(context).colorScheme.primary,
      size: FMIThemeBase.baseIconMedium,
    ),
    onPressed: () {},
  ),
  body: SfCartesianChart(
    title: ChartTitle(
      text: 'Chart Title',
      textStyle: Theme.of(context).textTheme.titleMedium,
    ),
    margin: const EdgeInsets.all(FMIThemeBase.basePadding4),
    plotAreaBorderColor: Colors.transparent,
    borderColor: Colors.transparent,
    primaryXAxis: NumericAxis(
      rangePadding: ChartRangePadding.none,
      isVisible: true,
    ),
    primaryYAxis: NumericAxis(
      rangePadding: ChartRangePadding.auto,
      isVisible: true,
    ),
    series: <CartesianSeries>[
      SplineAreaSeries<ChartData, int>(
        dataSource: chartData,
        xValueMapper: (ChartData data, _) => data.x,
        yValueMapper: (ChartData data, _) => data.y,
        emptyPointSettings: EmptyPointSettings(mode: EmptyPointMode.zero),
        dataLabelSettings: const DataLabelSettings(isVisible: false),
      )
    ],
  ),
  footer: Text(
    'Mar 17, 14:32 PM',
    style: Theme.of(context)
        .textTheme
        .labelSmall
        ?.copyWith(color: Theme.of(context).colorScheme.outline),
  ),
),
```

` `