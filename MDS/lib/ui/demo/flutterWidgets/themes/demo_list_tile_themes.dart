import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoListTileThemes extends StatefulWidget {
  const DemoListTileThemes({Key? key}) : super(key: key);

  @override
  State<DemoListTileThemes> createState() => _DemoListTileThemesState();
}

class _DemoListTileThemesState extends State<DemoListTileThemes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'List Tile Themes'),
        const ComponentSubheader(title: 'List Tile Default'),
        const ListTile(
          leading: Icon(FontAwesomeIcons.heart),
          title: Text('Default 1'),
          subtitle: Text('default subtitle 1'),
          trailing: Icon(FontAwesomeIcons.chevronRight),
        ),
        const ComponentSubheader(
            title: 'List Tile Danger Theme - FmiListTileTheme.danger'),
        Theme(
          data: FmiListTileTheme.danger(context),
          child: const ListTile(
            leading: Icon(FontAwesomeIcons.heart),
            title: Text('Danger 1'),
            subtitle: Text('danger subtitle 1'),
            trailing: Icon(FontAwesomeIcons.chevronRight),
          ),
        ),
        const ComponentSubheader(
            title: 'List Tile Success Theme - FmiListTileTheme.success'),
        Theme(
          data: FmiListTileTheme.success(context),
          child: const ListTile(
            leading: Icon(FontAwesomeIcons.heart),
            title: Text('Success 1'),
            subtitle: Text('success subtitle 1'),
            trailing: Icon(FontAwesomeIcons.chevronRight),
          ),
        ),
        const ComponentSubheader(
            title: 'List Tile Alt Surface - FmiListTileTheme.altSurface'),
        Theme(
          data: FmiListTileTheme.altSurface(context),
          child: const ListTile(
            leading: Icon(FontAwesomeIcons.heart),
            title: Text('Alt Surface 1'),
            subtitle: Text('alt surface subtitle 1'),
            trailing: Icon(FontAwesomeIcons.chevronRight),
          ),
        ),
        const ComponentSubheader(
            title: 'List Tile Transparent - FmiListTileTheme.transparent'),
        Theme(
          data: FmiListTileTheme.transparent(context),
          child: const ListTile(
            leading: Icon(FontAwesomeIcons.heart),
            title: Text('Transparent 1'),
            subtitle: Text('transparent subtitle 1'),
            trailing: Icon(FontAwesomeIcons.chevronRight),
          ),
        )
      ],
    );
  }
}
