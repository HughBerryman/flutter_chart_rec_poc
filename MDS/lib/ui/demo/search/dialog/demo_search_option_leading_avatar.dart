import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoSearchOptionLeadingAvatar extends StatelessWidget {
  const DemoSearchOptionLeadingAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const FmiAvatar(
        selectedBehaviorOff: true,
        avatarSize: FmiAvatarSize.large,
        url:
            'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg',
        displayName: 'Bob Jancoski');
  }
}
