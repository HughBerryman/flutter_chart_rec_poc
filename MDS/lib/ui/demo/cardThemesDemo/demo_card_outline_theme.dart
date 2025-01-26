import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoCardOutlineTheme extends StatelessWidget {
  const DemoCardOutlineTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Outline Theme - FmiCardTheme.outline'),
         const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding6)),
        const ComponentSubheader(
            title: 'Card Outline Theme with Text Widget - FmiCardTheme.outline'),
        Theme(
          data: FmiCardTheme.outline(context),
          child: const Card(
            child: Padding(
                padding: EdgeInsets.all(FMIThemeBase.basePaddingXxLarge),
                child: Text('Card')),
          ),
        ),
        const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding6)),
        const ComponentSubheader(
            title:
                'Card Outline Theme with Default List Tiles - FmiCardTheme.outline'),
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
        const Padding(padding: EdgeInsets.all(FMIThemeBase.basePadding6)),
        const ComponentSubheader(
            title:
                'Card Outline Theme with Transparent List Tile Theme – FmiCardTheme.outline and FmiListTileTheme.transparent'),
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
      ],
    );
  }
}
