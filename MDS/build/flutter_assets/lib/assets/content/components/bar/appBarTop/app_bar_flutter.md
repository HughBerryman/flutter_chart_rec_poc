##### Examples

```dart

FmiAppBar(
    title: 'Fmi App Bar',
    themeStyle: ThemeStyle.secondary,
    showInternet: false,
    showSync: false,
    forceOverflow: true,
    appBarActionItems: [
        AppBarActionItem(
            icon: FontAwesomeIcons.magnifyingGlass,
            text: 'Search',
            action: () {},
            isOverflow: false
        ),
        AppBarActionItem(
            icon: FontAwesomeIcons.bell,
            text: 'Notifications',
            action: () {},
            isOverflow: false
        )
    ],
)

```
