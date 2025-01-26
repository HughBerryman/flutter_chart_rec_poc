import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class TitleWithOverlineWidget extends StatelessWidget {
  const TitleWithOverlineWidget(
      {Key? key, required this.title, required this.overline, this.titleColor})
      : super(key: key);

  final String title;
  final String overline;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          overline,
          overflow: TextOverflow.clip,
          maxLines: 1,
          style: Theme.of(context).textTheme.labelSmall?.apply(
              color: Theme.of(context)
                  .colorScheme
                  .fmiBaseThemeAltSurfaceOnAltSurface),
        ),
        Text(
          title,
          overflow: TextOverflow.clip,
          maxLines: 1,
          style: Theme.of(context).textTheme.titleMedium?.apply(
              color: titleColor ?? Theme.of(context).colorScheme.onSurface),
        ),
      ],
    );
  }
}
