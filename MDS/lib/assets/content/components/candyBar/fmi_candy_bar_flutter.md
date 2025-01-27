##### Examples

```dart
FmiCandyBar(
    items: [
        FmiCandyBarItem(
            buttonText: "View Detail",
            description: "No announcement for today",
            onTap: onTap,
        ),
        FmiCandyBarItem(
            type: FmiCandyBarType.warning,
            buttonText: "View Detail",
            description:
                "Beginning Thursday 11/30/2023 at 4:00 AM MIS will conduct maintenance on Houston (FM O&G) Sharepoint.",
            onTap: onTap,
        ),
        FmiCandyBarItem(
            type: FmiCandyBarType.error,
            buttonText: "View Detail",
            icon: FontAwesomeIcons.solidCircleExclamation,
            title: "Potential Fatal Event - Chino Mill",
            description: "Uncontrolled Release of Energy",
            onTap: onTap,
        ),
        FmiCandyBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            buttonText: "View Detail",
            buttonTextColor: Theme.of(context).colorScheme.fmiBaseThemeWarningWarning,
            icon: FontAwesomeIcons.solidCircleExclamation,
            iconColor: Theme.of(context).colorScheme.onPrimary,
            title: "Custom Candy Bar Title",
            titleColor: Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess,
            description: "Custom candy bar description.",
            descriptionColor:
                Theme.of(context).colorScheme.fmiBaseThemeSuccessOnSuccess,
            onTap: onTap,
            onRemoved: onRemoved,
        ),
    ]
)
```