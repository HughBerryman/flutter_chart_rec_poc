import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/designTokens.dart';

class ColorTile extends StatelessWidget {
  const ColorTile({
    Key? key,
    required this.color,
    required this.name,
    required this.syntax,
  }) : super(key: key);
  final Color color;
  final String name;
  final String syntax;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: color,
              borderRadius:
                  BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge),
              border: Border.all(color: Theme.of(context).colorScheme.outline)),
          height: FMIThemeBase.baseContainerDimension40,
          width: FMIThemeBase.baseContainerDimension275,
        ),
        Padding(
          padding: const EdgeInsets.only(top: FMIThemeBase.basePadding6),
          child: Text(
            name,
            overflow: TextOverflow.visible,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: FMIThemeBase.basePadding2),
          child: Text(
            syntax.isNotEmpty ? 'name: $syntax' : '',
            style:
                Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12),
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
          ),
        )
      ],
    );
  }
}
