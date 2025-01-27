**Examples**

Card Default with Text Widget

```dart
Card(
  child: Padding(
      padding: EdgeInsets.all(FMIThemeBase.basePaddingXxLarge),
      child: Text('Card')),
),
```

` `

Card Default with Default List Tile
```dart
Card(
  child: ListTile(
    leading: Icon(FontAwesomeIcons.heart),
    title: Text('Default 1'),
    subtitle: Text('default subtitle 1'),
    trailing: Icon(FontAwesomeIcons.chevronRight),
  ),
),
```

` `

Card Default with Transparent List Tile Theme – Card Default Theme and FmiListTileTheme.transparent
```dart
Card(
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
)
```