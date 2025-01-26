import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoTabBarView extends StatelessWidget {
  const DemoTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Center(
          child: FilledButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const FaIcon(
                FontAwesomeIcons.house,
              ),
              label: const Text('Click to Escape Demo')),
        ),
        Center(
          child: FilledButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const FaIcon(
                FontAwesomeIcons.car,
              ),
              label: const Text('Click to Escape Demo')),
        ),
        Center(
          child: FilledButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const FaIcon(
                FontAwesomeIcons.bicycle,
              ),
              label: const Text('Click to Escape Demo')),
        )
      ],
    );
  }
}
