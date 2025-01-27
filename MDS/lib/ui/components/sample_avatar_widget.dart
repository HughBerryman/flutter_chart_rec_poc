import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class SampleAvatarWidget extends StatelessWidget {
  final FmiAvatarSize avatarSize;

  const SampleAvatarWidget({required this.avatarSize, super.key});

  @override
  Widget build(BuildContext context) {
    return FmiAvatar(
      displayName: 'Wil Wheaton',
      avatarSize: avatarSize,
      url: 'https://images.services-dev.fmi.com/publishedimages/0060064147.jpg',
    );
  }
}
