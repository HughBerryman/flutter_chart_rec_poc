import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoSvgs extends StatelessWidget {
  const DemoSvgs({super.key});

    @override
  Widget build(BuildContext context) {
    List<String> _assetNames = [];

    for (var value in FASafeIcons.values) {
      _assetNames.add(getSvgPath(value));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'SVGs'),
        Container(
          padding: const EdgeInsets.all(FMIThemeBase.basePaddingLarge),
          child: GridView.builder(
              itemCount: _assetNames.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.3,
                  crossAxisCount: 6,
                  crossAxisSpacing: FMIThemeBase.basePaddingLarge,
                  mainAxisSpacing: FMIThemeBase.basePaddingLarge),
              itemBuilder: (context, index) {
                return Tooltip(
                  message: FASafeIcons.values[index].toString(),
                  child: SvgPicture.asset(
                    _assetNames[index],
                    width: 25,
                    height: 25,
                    package: 'fmi_core',
                  ),
                );
              }),
        ),
      ],
    );
  }
}