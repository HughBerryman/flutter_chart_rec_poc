import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChipIcon extends StatelessWidget {
  final IconData icon;
  const ChipIcon({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return FaIcon(icon);
  }
}
