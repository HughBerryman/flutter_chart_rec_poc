import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoMiscSvgIcons extends StatelessWidget {
  const DemoMiscSvgIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Misc Svgs'),
        Wrap(
          spacing: FMIThemeBase.basePadding5,
          children: [
            SvgPicture.asset(
              'assets/images/misc-svgs/light_vehicle.svg',
              height: 75,
              width: 75,
              package: 'fmi_core',
            ),
            const SizedBox(width: FMIThemeBase.basePaddingLarge),
            SvgPicture.asset(
              'assets/images/misc-svgs/department.svg',
              height: 75,
              width: 75,
              package: 'fmi_core',
            ),
            const SizedBox(width: FMIThemeBase.basePaddingLarge),
            SvgPicture.asset(
              'assets/images/misc-svgs/news.svg',
              height: 75,
              width: 75,
              package: 'fmi_core',
            ),
          ],
        ),
      ],
    );
  }
}
