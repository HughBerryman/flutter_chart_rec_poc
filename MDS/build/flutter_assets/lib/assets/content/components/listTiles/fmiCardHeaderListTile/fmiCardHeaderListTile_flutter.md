##### Examples

```dart                                   
Card(
  child: Column(children: [
    FmiCardHeaderListTile(
      title: 'Sample Header',
      subtitle: 'Subtitle',
      leading: const Icon(FontAwesomeIcons.arrowRight),
      trailing: Row(mainAxisSize: MainAxisSize.min, 
        children: const [
         FaIcon(FontAwesomeIcons.chevronRight),
        ]),
    ),
    const ListTile(
      title: Text('Item Title'),
    )
  ]),
),
```

`  `
  
