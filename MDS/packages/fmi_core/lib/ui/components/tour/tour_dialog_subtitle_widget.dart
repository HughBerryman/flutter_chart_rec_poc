import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';


class TourDialogSubtitleWidget extends StatelessWidget {
  const TourDialogSubtitleWidget({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0 - FMIThemeBase.basePaddingXLarge,
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
      ),
    );
  }
}