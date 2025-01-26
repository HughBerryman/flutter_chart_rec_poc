import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/colorDemo/colorDemo.dart';

class ColorTileGrid extends StatelessWidget {
  const ColorTileGrid(
      {super.key,
      required this.colors,
      required this.colorNames,
      this.colorSyntax});
  final List<Color> colors;
  final List<String> colorNames;
  final List<String>? colorSyntax;

  int getCrossAxisCount(List<Color> colors) {
    if (colors.length < 2 && colors.isNotEmpty) {
      return colors.length;
    } else {
      return 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
        child: GridView.builder(
            itemCount: colors.length,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 350,
              mainAxisExtent: 150,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return ColorTile(
                color: colors[index],
                name: colorNames[index],
                syntax: colorSyntax != null ? colorSyntax![index] : '',
              );
            }));
  }
}
