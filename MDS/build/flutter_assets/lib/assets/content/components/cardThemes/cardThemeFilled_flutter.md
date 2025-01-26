` `

**Examples**

Card Filled Theme with Text Widget - FmiCardTheme.filled

```dart
Theme(
  data: FmiCardTheme.filled(context),
  child: const Card(
    child: Padding(
        padding: EdgeInsets.all(FMIThemeBase.basePaddingXxLarge),
        child: Text('Card')),
  ),
),
```

` `

Card Filled Theme with Default List Tiles - FmiCardTheme.filled

```dart
Theme(
  data: FmiCardTheme.filled(context),
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

Card Filled Theme with Transparent List Tile Theme – FmiCardTheme.filled and FmiListTileTheme.transparent

```dart
Theme(
  data: FmiCardTheme.filled(context),
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