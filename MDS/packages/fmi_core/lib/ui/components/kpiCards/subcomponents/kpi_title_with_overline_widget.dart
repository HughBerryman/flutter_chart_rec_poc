import 'package:flutter/material.dart';

class KpiTitleWithOverlineWidget extends StatelessWidget {
  const KpiTitleWithOverlineWidget(
      {Key? key, required this.title, required this.overline})
      : super(key: key);

  final String title;
  final String overline;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          overline,
          overflow: TextOverflow.clip,
          maxLines: 1,
          style: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(color: Theme.of(context).colorScheme.outline),
        ),
        Text(
          title,
          overflow: TextOverflow.clip,
          maxLines: 1,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
      ],
    );
  }
}
