import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoBottomNavBar extends StatelessWidget {
  const DemoBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.basePaddingLarge),
          child: ComponentHeader(title: 'Fmi Bottom Navigation Bar'),
        ),
        DemoBottomNavigationBarFaIcons(),
        DemoBottomNavigationBarMixed(),
        DemoBottomNavigationBarSvgs(),
        DemoBottomNavigationBarOverflow(),
      ],
    );
  }
}
