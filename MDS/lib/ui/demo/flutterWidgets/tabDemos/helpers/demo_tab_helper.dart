import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoTabHelper {
  static List<Tab> getTabs(String tabDisplay) {
    debugPrint('tab display ' + tabDisplay);
    if (tabDisplay == 'Label only') {
      return const [
        Tab(text: 'View 1'),
        Tab(text: 'View 2'),
        Tab(text: 'View 3'),
      ];
    } else if (tabDisplay == 'Icon only') {
      return const [
        Tab(icon: FaIcon(FontAwesomeIcons.house)),
        Tab(icon: FaIcon(FontAwesomeIcons.car)),
        Tab(icon: FaIcon(FontAwesomeIcons.bicycle)),
      ];
    } else {
      return const [
        Tab(text: 'View 1', icon: FaIcon(FontAwesomeIcons.house)),
        Tab(text: 'View 2', icon: FaIcon(FontAwesomeIcons.car)),
        Tab(text: 'View 3', icon: FaIcon(FontAwesomeIcons.bicycle)),
      ];
    }
  }
}
