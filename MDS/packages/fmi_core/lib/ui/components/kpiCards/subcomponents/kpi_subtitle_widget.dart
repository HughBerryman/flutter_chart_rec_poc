import 'package:flutter/material.dart';

class KpiSubtitleWidget extends StatelessWidget {
  const KpiSubtitleWidget({Key? key, required this.subtitle}) : super(key: key);

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: Theme.of(context)
          .textTheme
          .labelSmall
          ?.copyWith(color: Theme.of(context).colorScheme.outline),
    );
  }
}
