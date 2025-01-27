import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';

class TitleWithSubscriptWidget extends StatelessWidget {
  const TitleWithSubscriptWidget(
      {Key? key, required this.title, required this.subscript})
      : super(key: key);

  final String title;
  final String subscript;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: FMIThemeBase.basePaddingMedium),
          child: Text(
            subscript,
            overflow: TextOverflow.clip,
            maxLines: 1,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        )
      ],
    );
  }
}
