import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';

class GroupWidget extends StatelessWidget {
  const GroupWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Padding(
        padding: EdgeInsets.only(bottom: FMIThemeBase.baseMarginMedium.toDouble()),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      )
    ]);
  }
}
