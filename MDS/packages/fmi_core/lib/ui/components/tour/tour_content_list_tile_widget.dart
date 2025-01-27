import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../fmi_core.dart';

class TourContentListTileWidget extends StatelessWidget {
  const TourContentListTileWidget(
      {Key? key,
        required this.icon,
        required this.overline,
        required this.title,
        required this.onTapped})
      : super(key: key);

  final IconData icon;
  final String overline;
  final String title;
  final VoidCallback onTapped;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: FMIThemeBase.basePaddingLarge,
          bottom: FMIThemeBase.basePaddingLarge
      ),
      child: ListTile(
        dense: true,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(icon, size: FMIThemeBase.baseIconMedium),
          ],
        ),
        title: TitleWithOverlineWidget(
            overline: overline, title: title.toTitleCase()),
        enabled: true,
        onTap: () => onTapped(),
        contentPadding: EdgeInsets.zero
      ),
    );
  }
}