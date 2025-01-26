import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class ButtonListView extends StatelessWidget {
  const ButtonListView({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<Widget> list;

  @override
  Widget build(BuildContext context) {
    List<Widget> newList = [];
    for (Widget widget in list) {
      newList.add(Padding(
          padding: const EdgeInsets.symmetric(
              vertical: FMIThemeBase.basePaddingLarge,
              horizontal: FMIThemeBase.basePaddingSmall),
          child: widget));
    }
    return Wrap(
        crossAxisAlignment: WrapCrossAlignment.start, children: newList);
  }
}
