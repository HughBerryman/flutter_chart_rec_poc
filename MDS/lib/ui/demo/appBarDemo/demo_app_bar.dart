import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../demo.dart';

class DemoAppBar extends StatelessWidget {
  const DemoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const ComponentHeader(title: 'Fmi App Bar'),
        Padding(
          padding: const EdgeInsets.only(
              top: FMIThemeBase.basePaddingLarge,
              bottom: FMIThemeBase.basePaddingLarge),
          child: FilledButton(
            child: const Text('Show Fmi App Bar'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const _DemoFmiAppBar()));
            },
          ),
        ),
      ],
    );
  }
}

class _DemoFmiAppBar extends StatelessWidget {
  const _DemoFmiAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FmiAppBar(
        title: 'Fmi App Bar',
        themeStyle: ThemeStyle.secondary,
        showInternet: false,
        showSync: false,
        forceOverflow: true,
        appBarActionItems: [
          AppBarActionItem(
              icon: FontAwesomeIcons.magnifyingGlass,
              text: 'Search',
              action: () {},
              isOverflow: false),
          AppBarActionItem(
              icon: FontAwesomeIcons.bell,
              text: 'Notifications',
              action: () {},
              isOverflow: false)
        ],
      ),
    );
  }
}
