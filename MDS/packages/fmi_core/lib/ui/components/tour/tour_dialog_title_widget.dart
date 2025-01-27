import 'package:flutter/material.dart';

class TourDialogTitleWidget extends StatelessWidget {
  const TourDialogTitleWidget({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
      ),
    );
  }
}
