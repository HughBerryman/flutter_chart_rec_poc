import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoCardElevatedTheme extends StatelessWidget {
  const DemoCardElevatedTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Elevated Theme - FmiCardTheme.elevated'),
         const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding6)),
        const ComponentSubheader(
            title:
                'Card Elevated Theme with Text Widget - FmiCardTheme.elevated'),
        Theme(
          data: FmiCardTheme.elevated(context),
          child: const Card(
            child: Padding(
                padding: EdgeInsets.all(FMIThemeBase.basePaddingXxLarge),
                child: Text('Card')),
          ),
        ),
        const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding6)),
        const ComponentSubheader(
            title:
                'Card Elevated Theme with Default List Tiles - FmiCardTheme.elevated'),
        Theme(
          data: FmiCardTheme.elevated(context),
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
        const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding6)),
        const ComponentSubheader(
            title:
                'Card Elevated Theme with Transparent List Tile Theme – FmiCardTheme.elevated and FmiListTileTheme.transparent'),
        Theme(
          data: FmiCardTheme.elevated(context),
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
      ],
    );
  }
}