import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoFmiCardHeaderListTile extends StatelessWidget {
  const DemoFmiCardHeaderListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(children: [
        FmiCardHeaderListTile(
          title: 'Sample Header',
          subtitle: 'subtitle',
          trailing: Row(mainAxisSize: MainAxisSize.min, children: [
            FaIcon(FontAwesomeIcons.chevronRight),
          ]),
        ),
        ListTile(
          title: Text('Item Title'),
        )
      ]),
    );
  }
}
