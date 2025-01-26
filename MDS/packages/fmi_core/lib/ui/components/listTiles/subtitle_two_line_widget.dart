import 'package:flutter/material.dart';

class SubtitleTwoLineWidget extends StatelessWidget {
  const SubtitleTwoLineWidget(
      {Key? key, required this.line1, required this.line2})
      : super(key: key);

  final String line1;
  final String line2;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        line1,
        style: Theme.of(context).textTheme.bodyMedium,
        overflow: TextOverflow.clip,
        maxLines: 1,
      ),
      Text(
        line2,
        style: Theme.of(context).textTheme.bodyMedium,
        overflow: TextOverflow.clip,
        maxLines: 1,
      )
    ]);
  }
}
