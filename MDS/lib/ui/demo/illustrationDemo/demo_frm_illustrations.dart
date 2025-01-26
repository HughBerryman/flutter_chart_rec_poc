import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DemoFrmIllustrations extends StatelessWidget {
  const DemoFrmIllustrations({super.key});

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
        Text('FRM Illustrations',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: FontWeight.bold)),
        Container(
          padding: const EdgeInsets.symmetric(
              vertical: FMIThemeBase.basePaddingLarge),
          child: GridView.builder(
              itemCount: _assetNames.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.5,
                  crossAxisCount: 6,
                  crossAxisSpacing: FMIThemeBase.basePaddingXLarge,
                  mainAxisSpacing: FMIThemeBase.basePaddingXLarge),
              itemBuilder: (context, index) {
                return Tooltip(
                  message: FASafeIcons.values[index].toString(),
                  child: SvgPicture.asset(
                    _assetNames[index],
                    package: 'fmi_core',
                  ),
                );
              }),
        ),
      ],
    );
  }
}
