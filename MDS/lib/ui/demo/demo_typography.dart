import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoTypography extends StatelessWidget {
  const DemoTypography({super.key});

  @override
  Widget build(BuildContext context) {
    List<TextStyle?> textTokens = [
      Theme.of(context).textTheme.displayLarge,
      Theme.of(context).textTheme.displayMedium,
      Theme.of(context).textTheme.displaySmall,
      Theme.of(context).textTheme.headlineLarge,
      Theme.of(context).textTheme.headlineMedium,
      Theme.of(context).textTheme.headlineSmall,
      Theme.of(context).textTheme.titleLarge,
      Theme.of(context).textTheme.titleDefault,
      Theme.of(context).textTheme.titleMedium,
      Theme.of(context).textTheme.titleSmall,
      Theme.of(context).textTheme.bodyLarge,
      Theme.of(context).textTheme.bodyMedium,
      Theme.of(context).textTheme.bodySmall,
      Theme.of(context).textTheme.labelLarge,
      Theme.of(context).textTheme.labelMedium,
      Theme.of(context).textTheme.labelSmall,
      Theme.of(context).textTheme.labelXSmall,
      Theme.of(context).textTheme.labelXxSmall,
      Theme.of(context).textTheme.chartTitle,
      Theme.of(context).textTheme.chartSubtitle,
      Theme.of(context).textTheme.legendLabel,
      Theme.of(context).textTheme.scoreCardMetric
    ];

    List<String> textStringTokens = [
      'displayLarge',
      'displayMedium',
      'displaySmall',
      'headlineLarge',
      'headlineMedium',
      'headlineSmall',
      'titleLarge',
      'titleDefault',
      'titleMedium',
      'titleSmall',
      'bodyLarge',
      'bodyMedium',
      'bodySmall',
      'labelLarge',
      'labelMedium',
      'labelSmall',
      'labelXSmall',
      'labelXxSmall',
      'chartTitle',
      'chartSubtitle',
      'legendLabel',
      'scoreCardMetric'
    ];

    List<FontWeight> fontWeightTokens = [
      FMIThemeBase.baseFontWeightsLight,
      FMIThemeBase.baseFontWeightsNormal,
      FMIThemeBase.baseFontWeightsMedium,
      FMIThemeBase.baseFontWeightsSemibold,
      FMIThemeBase.baseFontWeightsBold,
    ];

    List<String> fontWeightStringTokens = [
      'FMIThemeBase.baseFontWeightsLight',
      'FMIThemeBase.baseFontWeightsNormal',
      'FMIThemeBase.baseFontWeightsMedium',
      'FMIThemeBase.baseFontWeightsSemibold',
      'FMIThemeBase.baseFontWeightsBold',
    ];

    List<TableRow> tableRows = [];
    List<TableRow> fontWeightRows = [];

    TableRow getTextThemeRows(int index) {
      String text = textStringTokens[index];
      TextStyle? textStyle = textTokens[index];

      return TableRow(children: [
        Container(
          height: FMIThemeBase.baseContainerDimension125,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
              horizontal: FMIThemeBase.basePadding4,
              vertical: FMIThemeBase.basePadding2),
          child: Text(text, style: textStyle),
        ),
        SizedBox(
          height: FMIThemeBase.baseContainerDimension125,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
                horizontal: FMIThemeBase.basePadding4,
                vertical: FMIThemeBase.basePadding2),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Theme.of(context)
                  .colorScheme
                  .fmiBaseThemeAltSurfaceInverseAltSurface,
              width: FMIThemeBase.baseBorderWidthThin,
            ))),
            child: Text('Theme.of(context).textTheme.$text'),
          ),
        ),
        SizedBox(
          height: FMIThemeBase.baseContainerDimension125,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
                horizontal: FMIThemeBase.basePadding4,
                vertical: FMIThemeBase.basePadding2),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Theme.of(context)
                            .colorScheme
                            .fmiBaseThemeAltSurfaceInverseAltSurface,
                        width: FMIThemeBase.baseBorderWidthThin))),
            child: Text(
                '${textStyle?.fontFamily.toString()} (Font Family), ${textStyle?.fontSize.toString()} (Font Size), ${textStyle?.fontWeight?.value.toString()} (Font Weight)'),
          ),
        ),
      ]);
    }

    TableRow getFontWeightRow(FontWeight fontWeight) {
      var _index = fontWeightTokens.indexOf(fontWeight);

      return TableRow(children: [
        Container(
          height: FMIThemeBase.baseContainerDimension50,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
              horizontal: FMIThemeBase.basePadding4,
              vertical: FMIThemeBase.basePadding2),
          child: Text('Sample Text',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: fontWeight)),
        ),
        SizedBox(
          height: FMIThemeBase.baseContainerDimension50,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
                horizontal: FMIThemeBase.basePadding4,
                vertical: FMIThemeBase.basePadding2),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Theme.of(context)
                  .colorScheme
                  .fmiBaseThemeAltSurfaceInverseAltSurface,
              width: FMIThemeBase.baseBorderWidthThin,
            ))),
            child: Text(fontWeightStringTokens[_index].toString()),
          ),
        ),
        SizedBox(
          height: FMIThemeBase.baseContainerDimension50,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
                horizontal: FMIThemeBase.basePadding4,
                vertical: FMIThemeBase.basePadding2),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Theme.of(context)
                            .colorScheme
                            .fmiBaseThemeAltSurfaceInverseAltSurface,
                        width: FMIThemeBase.baseBorderWidthThin))),
            child: Text('${fontWeight.value.toString()} (Font Weight)'),
          ),
        ),
      ]);
    }

    for (int i = 0; i < textTokens.length; i++) {
      tableRows.add(getTextThemeRows(i));
    }
    for (int i = 0; i < fontWeightTokens.length; i++) {
      fontWeightRows.add(getFontWeightRow(fontWeightTokens[i]));
    }
    tableRows.insert(0, tableHeader(context));
    fontWeightRows.insert(0, fontWeightTableHeader(context));
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding2),
          child: Text('FMI Text Themes',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onSurface)),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(
            FMIThemeBase.baseBorderRadiusLarge,
          ),
          child: Table(
              border: TableBorder.all(
                  borderRadius:
                      BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge),
                  color: Theme.of(context)
                      .colorScheme
                      .fmiBaseThemeAltSurfaceInverseAltSurface,
                  width: FMIThemeBase.baseBorderWidthThin),
              children: tableRows),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding8)),
        Container(
          alignment: Alignment.centerLeft,
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding2),
          child: Text('FMI Font Weights',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onSurface)),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(
            FMIThemeBase.baseBorderRadiusLarge,
          ),
          child: Table(
              border: TableBorder.all(
                  borderRadius:
                      BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge),
                  color: Theme.of(context)
                      .colorScheme
                      .fmiBaseThemeAltSurfaceInverseAltSurface,
                  width: FMIThemeBase.baseBorderWidthThin),
              children: fontWeightRows),
        ),
      ],
    );
  }

  TableRow fontWeightTableHeader(BuildContext context) {
    return TableRow(
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge)),
        children: [
          Container(
              padding: const EdgeInsets.symmetric(
                  vertical: FMIThemeBase.basePadding4),
              color: Theme.of(context)
                  .colorScheme
                  .fmiBaseThemeAltSurfaceInverseAltSurface,
              alignment: Alignment.center,
              child: Text(
                'FontWeight Example',
                style: Theme.of(context).textTheme.titleMedium,
              )),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
            color: Theme.of(context)
                .colorScheme
                .fmiBaseThemeAltSurfaceInverseAltSurface,
            alignment: Alignment.center,
            child: Text('System Token',
                style: Theme.of(context).textTheme.titleMedium),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
            color: Theme.of(context)
                .colorScheme
                .fmiBaseThemeAltSurfaceInverseAltSurface,
            alignment: Alignment.center,
            child: Text('Token Values',
                style: Theme.of(context).textTheme.titleMedium),
          )
        ]);
  }

  TableRow tableHeader(BuildContext context) {
    return TableRow(
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge)),
        children: [
          Container(
              padding: const EdgeInsets.symmetric(
                  vertical: FMIThemeBase.basePadding4),
              color: Theme.of(context)
                  .colorScheme
                  .fmiBaseThemeAltSurfaceInverseAltSurface,
              alignment: Alignment.center,
              child: Text(
                'Token Name',
                style: Theme.of(context).textTheme.titleMedium,
              )),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
            color: Theme.of(context)
                .colorScheme
                .fmiBaseThemeAltSurfaceInverseAltSurface,
            alignment: Alignment.center,
            child: Text('System Token',
                style: Theme.of(context).textTheme.titleMedium),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding4),
            color: Theme.of(context)
                .colorScheme
                .fmiBaseThemeAltSurfaceInverseAltSurface,
            alignment: Alignment.center,
            child: Text('Token Values',
                style: Theme.of(context).textTheme.titleMedium),
          )
        ]);
  }
}
