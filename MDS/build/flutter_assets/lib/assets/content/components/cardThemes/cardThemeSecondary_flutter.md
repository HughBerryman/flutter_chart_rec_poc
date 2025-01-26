` `

**Examples**

Card Secondary Theme with Text Widget - FmiCardTheme.secondary

```dart
Theme(
  data: FmiCardTheme.secondary(context),
  child: const Card(
    child: Padding(
        padding: EdgeInsets.all(FMIThemeBase.basePaddingXxLarge),
        child: Text('Card')),
  ),
),
```

` `

Card Secondary Theme with Default List Tiles - FmiCardTheme.secondary

```dart
Theme(
  data: FmiCardTheme.secondary(context),
  child: const Card(
    child: Column(
      children: [
        ListTile(
          leading: Icon(FontAwesomeIcons.heart),
          title: Text('Default 1'),
          subtitle: Text('default subtitle 1'),
          trailing: Icon(FontAwesomeIcons.chevronRight),
        ),
        ListTile(
          leading: Icon(FontAwesomeIcons.heart),
          title: Text('Default 2'),
          subtitle: Text('default subtitle 2'),
          trailing: Icon(FontAwesomeIcons.chevronRight),
        ),
      ],
    ),
  ),
),
```

` `

Card Secondary Theme with Transparent List Tile Theme – FmiCardTheme.secondary and FmiListTileTheme.transparent

```dart
Theme(
  data: FmiCardTheme.secondary(context),
  child: Card(
    child: Column(
      children: [
        Theme(
          data: FmiListTileTheme.transparent(context),
          child: const ListTile(
            leading: Icon(FontAwesomeIcons.heart),
            title: Text('Transparent 1'),
            subtitle: Text('transparent subtitle 1'),
            trailing: Icon(FontAwesomeIcons.chevronRight),
          ),
        ),
        Theme(
          data: FmiListTileTheme.transparent(context),
          child: const ListTile(
            leading: Icon(FontAwesomeIcons.heart),
            title: Text('Transparent 2'),
            subtitle: Text('transparent subtitle 2'),
            trailing: Icon(FontAwesomeIcons.chevronRight),
          ),
        ),
      ],
    ),
  ),
)
```