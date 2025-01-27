**Examples**

```dart  
FmiKpiListCard(
    onTap: () {
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                title: const Text('Fmi Kpi Card Dialog'),
                content: const Text('Click the OK button to close'),
                actions: [
                    TextButton(
                        child: const Text("OK"),
                        onPressed: () {
                            Navigator.of(context, rootNavigator: true).pop('dialog');
                        },
                    )
                ],
            ),
        );
    },
    startSlot: FaIcon(
        FontAwesomeIcons.solidShovel,
        color: Theme.of(context).colorScheme.onPrimary,
    ),
    overline: 'Truck #1',
    title: 'Crusher 1',
    subtitle: 'Morenci',
    kpi: '200',
    kpiUnit: 'lbs',
    kpiTrend: const FmiKpiTrend(
        trend: KpiTrendEnum.up,
        target: 53,
        value: 60,
    ),
),
```

` `
  
