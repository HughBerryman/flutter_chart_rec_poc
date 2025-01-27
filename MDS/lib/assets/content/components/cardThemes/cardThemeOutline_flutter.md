` `

**Examples**

Card Outline Theme with Text Widget - FmiCardTheme.outline

```dart
Theme(
  data: FmiCardTheme.outline(context),
  child: const Card(
    child: Padding(
        padding: EdgeInsets.all(FMIThemeBase.basePaddingXxLarge),
        child: Text('Card')),
  ),
),
```

` `

Card Outline Theme with Default List Tiles - FmiCardTheme.outline

```dart
Theme(
  data: FmiCardTheme.outline(context),
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

Card Outline Theme with Transparent List Tile Theme – FmiCardTheme.outline and FmiListTileTheme.transparent

```dart
Theme(
  data: FmiCardTheme.outline(context),
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