import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoCarousel extends StatefulWidget {
  const DemoCarousel({Key? key}) : super(key: key);

  @override
  State<DemoCarousel> createState() => _DemoCarouselState();
}

class _DemoCarouselState extends State<DemoCarousel> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double card1Width = (constraints.maxWidth/2) - FMIThemeBase.basePadding6;
      double card2Width = FMIThemeBase.baseContainerDimension200;
      double card3Width = constraints.maxWidth/4;

      List<Widget> items = [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card1Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.fmiBaseThemeWarningWarning,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card1Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card1Width,
        ),
      ];

      List<Widget> items2 = [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card2Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.fmiBaseThemeWarningWarning,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card2Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card2Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card2Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.fmiBaseThemeWarningWarning,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card2Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card2Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card2Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.fmiBaseThemeWarningWarning,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card2Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card2Width,
        ),
      ];

      List<Widget> items3 = [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card3Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.fmiBaseThemeWarningWarning,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card3Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card3Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card3Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.fmiBaseThemeWarningWarning,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card3Width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          width: card3Width,
        ),
      ];

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: FMIThemeBase.basePadding4),
            child: ComponentHeader(title: 'Fmi Carousel Widget'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
            child: ComponentSubheader(
                title: 'Carousel with Dynamically Sized Widgets'),
          ),
          FmiCarouselWidget(
            widthOfItem: card1Width,
            spacing: FMIThemeBase.basePadding12,
            carouselItems: items,
            height: FMIThemeBase.baseContainerDimension200,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
            child:
                ComponentSubheader(title: 'Carousel with Static Sized Wigets'),
          ),
          FmiCarouselWidget(
            widthOfItem: card2Width,
            spacing: FMIThemeBase.basePadding15,
            carouselItems: items2,
            height: card2Width,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
            child: ComponentSubheader(title: 'Carousel with Loop'),
          ),
          FmiCarouselWidget(
            widthOfItem: card3Width,
            spacing: FMIThemeBase.basePadding12,
            carouselItems: items3,
            loop: true,
            height: FMIThemeBase.baseContainerDimension200,
          ),
        ],
      );
    });
  }
}
