import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/components/components.dart';

class ChipAvatar extends StatelessWidget {
  const ChipAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SampleAvatarWidget(
          avatarSize: FmiAvatarSize.small,
        ),
      ],
    );
  }
}
