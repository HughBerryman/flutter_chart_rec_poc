import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BasicDrawer extends StatelessWidget {
  const BasicDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        const DrawerHeader(
            child: ListTile(
          title: Text('Title'),
          subtitle: Text('Subtitle'),
        )),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: const Icon(FontAwesomeIcons.arrowRight),
                title: const Text('Item 1'),
                trailing: const Icon(FontAwesomeIcons.check),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                  leading: const Icon(FontAwesomeIcons.chevronRight),
                  title: const Text('Item 2'),
                  trailing:
                      const Icon(FontAwesomeIcons.solidCircleThreeQuarters),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                  leading: const Icon(FontAwesomeIcons.chevronRight),
                  title: const Text('Item 3'),
                  trailing: const Icon(FontAwesomeIcons.circle),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                  leading: const Icon(FontAwesomeIcons.chevronRight),
                  title: const Text('Item 4'),
                  trailing: const Text('+99'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                  leading: const Icon(FontAwesomeIcons.chevronRight),
                  title: const Text('Item 5'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
        ListTile(
            leading: const Icon(FontAwesomeIcons.gear),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            }),
      ],
    ));
  }
}
