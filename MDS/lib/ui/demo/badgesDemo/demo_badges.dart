import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoBadges extends StatelessWidget {
  const DemoBadges({super.key});
  @override
  Widget build(BuildContext context) {
    IconData icon = FontAwesomeIcons.solidCommentPlus;
    List<BadgeColor> baseColors = [
      BadgeColor.primary,
      BadgeColor.primaryContainer,
      BadgeColor.secondary,
      BadgeColor.tertiary,
      BadgeColor.success,
      BadgeColor.warning,
      BadgeColor.danger,
      BadgeColor.inverseAltSurface,
      BadgeColor.altSurface,
      BadgeColor.surfaceVariant,
      BadgeColor.secondaryContainer,
      BadgeColor.surface,
    ];

    List<BadgeColor> extendedColors = [
      BadgeColor.illustrationOnBackgroundAmber,
      BadgeColor.illustrationOnBackgroundBlue,
      BadgeColor.illustrationOnBackgroundBlueGray,
      BadgeColor.illustrationOnBackgroundCopper,
      BadgeColor.illustrationOnBackgroundDarkBlue,
      BadgeColor.illustrationOnBackgroundDarkOrange,
      BadgeColor.illustrationOnBackgroundDarkPurple,
      BadgeColor.illustrationOnBackgroundGreen,
      BadgeColor.illustrationOnBackgroundIndigo,
      BadgeColor.illustrationOnBackgroundLavender,
      BadgeColor.illustrationOnBackgroundLime,
      BadgeColor.illustrationOnBackgroundOrange,
      BadgeColor.illustrationOnBackgroundPink,
      BadgeColor.illustrationOnBackgroundPurple,
      BadgeColor.illustrationOnBackgroundRed,
      BadgeColor.illustrationOnBackgroundTeal
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Badges'),
        Padding(
          padding: const EdgeInsets.only(top: FMIThemeBase.basePadding6),
          child: Text('Small Badges',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold)),
        ),
        const ComponentSubheader(title: 'Card with Badges and Icon'),
        Padding(
          padding: const EdgeInsets.only(top: FMIThemeBase.basePaddingSmall),
          child: Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: FMIThemeBase.basePaddingLarge),
                  child: FmiBadge(
                    alignment: AlignmentPosition.topLeft,
                    size: BadgeSize.small,
                    backgroundColor: BadgeColor.primary,
                    icon: icon,
                    child: Card(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      elevation: FMIThemeBase.baseElevationDouble5,
                      child: SizedBox(
                        height: FMIThemeBase.baseContainerDimension100,
                        width: FMIThemeBase.baseContainerDimension200,
                        child: Center(
                            child: Text(
                          'Top Left Badge',
                          style: Theme.of(context).textTheme.labelLarge,
                        )),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: FMIThemeBase.basePaddingMedium),
                  child: FmiBadge(
                    alignment: AlignmentPosition.topRight,
                    size: BadgeSize.small,
                    backgroundColor: BadgeColor.primary,
                    icon: icon,
                    child: Card(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      elevation: FMIThemeBase.baseElevationDouble5,
                      child: SizedBox(
                        height: FMIThemeBase.baseContainerDimension100,
                        width: FMIThemeBase.baseContainerDimension200,
                        child: Center(
                            child: Text(
                          'Top Right Badge',
                          style: Theme.of(context).textTheme.labelLarge,
                        )),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Flexible(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: FMIThemeBase.basePaddingLarge),
                child: FmiBadge(
                  alignment: AlignmentPosition.bottomLeft,
                  size: BadgeSize.small,
                  backgroundColor: BadgeColor.primary,
                  icon: icon,
                  child: Card(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    elevation: FMIThemeBase.baseElevationDouble5,
                    child: SizedBox(
                      height: FMIThemeBase.baseContainerDimension100,
                      width: FMIThemeBase.baseContainerDimension200,
                      child: Center(
                          child: Text(
                        'Bottom Left Badge',
                        style: Theme.of(context).textTheme.labelLarge,
                      )),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: FMIThemeBase.basePaddingMedium),
                child: FmiBadge(
                  alignment: AlignmentPosition.bottomRight,
                  size: BadgeSize.small,
                  backgroundColor: BadgeColor.primary,
                  icon: icon,
                  child: Card(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    elevation: FMIThemeBase.baseElevationDouble5,
                    child: SizedBox(
                      height: FMIThemeBase.baseContainerDimension100,
                      width: FMIThemeBase.baseContainerDimension200,
                      child: Center(
                          child: Text(
                        'Bottom Right Badge',
                        style: Theme.of(context).textTheme.labelLarge,
                      )),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: ComponentSubheader(title: 'Card with Badge Size Variations'),
        ),
        Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: FMIThemeBase.basePaddingLarge,
                  top: FMIThemeBase.basePaddingMedium),
              child: FmiBadge(
                alignment: AlignmentPosition.topRight,
                size: BadgeSize.small,
                backgroundColor: BadgeColor.primary,
                child: Card(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  elevation: FMIThemeBase.baseElevationDouble5,
                  child: SizedBox(
                    height: FMIThemeBase.baseContainerDimension100,
                    width: FMIThemeBase.baseContainerDimension200,
                    child: Center(
                        child: Text(
                      'Small Badge',
                      style: Theme.of(context).textTheme.labelLarge,
                    )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: FMIThemeBase.basePaddingLarge,
                  top: FMIThemeBase.basePaddingMedium),
              child: FmiBadge(
                alignment: AlignmentPosition.topRight,
                size: BadgeSize.regular,
                backgroundColor: BadgeColor.primary,
                text: '6',
                child: Card(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  elevation: FMIThemeBase.baseElevationDouble5,
                  child: SizedBox(
                    height: FMIThemeBase.baseContainerDimension100,
                    width: FMIThemeBase.baseContainerDimension200,
                    child: Center(
                        child: Text(
                      'Regular Badge',
                      style: Theme.of(context).textTheme.labelLarge,
                    )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: FMIThemeBase.basePaddingLarge,
                  top: FMIThemeBase.basePaddingMedium),
              child: FmiBadge(
                alignment: AlignmentPosition.topRight,
                size: BadgeSize.medium,
                backgroundColor: BadgeColor.primary,
                text: '60',
                child: Card(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  elevation: FMIThemeBase.baseElevationDouble5,
                  child: SizedBox(
                    height: FMIThemeBase.baseContainerDimension100,
                    width: FMIThemeBase.baseContainerDimension200,
                    child: Center(
                        child: Text(
                      'Medium Badge',
                      style: Theme.of(context).textTheme.labelLarge,
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: FMIThemeBase.basePaddingXLarge,
              bottom: FMIThemeBase.basePadding2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('Badge Color',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(
                                  fontWeight:
                                      FMIThemeBase.baseFontWeightsSemibold)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('Small',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(
                                  fontWeight:
                                      FMIThemeBase.baseFontWeightsSemibold)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('Regular',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(
                                  fontWeight:
                                      FMIThemeBase.baseFontWeightsSemibold)),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('Medium',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(
                                  fontWeight:
                                      FMIThemeBase.baseFontWeightsSemibold)),
                    ),
                  ),
                ],
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.only(bottom: FMIThemeBase.basePadding8),
                child: Text(
                  'BASE COLOR BADGES',
                ),
              ),
              Column(
                  children: baseColors.map((color) {
                return _getRowContents(
                    context, color.toString().split('.').last, color, icon);
              }).toList()),
              const Divider(),
              const Padding(
                padding: EdgeInsets.only(bottom: FMIThemeBase.basePadding8),
                child: Text('EXTENDED COLOR BADGES'),
              ),
              Column(
                  children: extendedColors.map((color) {
                return _getRowContents(
                    context, color.toString().split('.').last, color, icon);
              }).toList()),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: FMIThemeBase.basePaddingXLarge),
          child: ComponentSubheader(title: 'Icon Button with Badge'),
        ),
        Wrap(
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    left: FMIThemeBase.basePaddingLarge,
                    top: FMIThemeBase.basePaddingMedium),
                child: IconButton(
                    tooltip: 'My Icon Button',
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                  title: const Text(' Pressed'),
                                  content: const Text(
                                      'Click the OK button to close'),
                                  actions: [
                                    TextButton(
                                      child: const Text("OK"),
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .pop('dialog');
                                      },
                                    )
                                  ]));
                    },
                    icon: FmiBadge(
                      size: BadgeSize.regular,
                      backgroundColor: BadgeColor.secondary,
                      text: '99+',
                      child: FaIcon(
                        FontAwesomeIcons.solidCommentPlus,
                        color: Theme.of(context).colorScheme.primary,
                        size: FMIThemeBase.baseIconMedium,
                      ),
                    ))),
          ],
        ),
      ],
    );
  }

  Widget _getRowContents(
      BuildContext context, String text, BadgeColor color, IconData icon) {
    double runSpacing = FMIThemeBase.basePadding4;
    double spacing = FMIThemeBase.basePadding4;
    WrapAlignment alignment = WrapAlignment.center;
    WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.center;

    return Padding(
      padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              maxLines: 2,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(fontWeight: FMIThemeBase.baseFontWeightsSemibold),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            child: Wrap(
              runSpacing: runSpacing,
              spacing: spacing,
              alignment: alignment,
              crossAxisAlignment: crossAxisAlignment,
              children: [
                FmiBadge(
                  alignment: AlignmentPosition.center,
                  size: BadgeSize.small,
                  backgroundColor: color,
                ),
                FmiBadge(
                  alignment: AlignmentPosition.center,
                  size: BadgeSize.small,
                  backgroundColor: color,
                  icon: icon,
                )
              ],
            ),
          ),
          Expanded(
            child: Wrap(
              alignment: alignment,
              crossAxisAlignment: crossAxisAlignment,
              runSpacing: runSpacing,
              spacing: spacing,
              children: [
                FmiBadge(
                  alignment: AlignmentPosition.center,
                  size: BadgeSize.regular,
                  backgroundColor: color,
                ),
                FmiBadge(
                  alignment: AlignmentPosition.center,
                  size: BadgeSize.regular,
                  backgroundColor: color,
                  icon: icon,
                ),
                FmiBadge(
                  alignment: AlignmentPosition.center,
                  size: BadgeSize.regular,
                  text: '5',
                  backgroundColor: color,
                ),
                FmiBadge(
                  alignment: AlignmentPosition.center,
                  size: BadgeSize.regular,
                  text: '88',
                  backgroundColor: color,
                ),
                FmiBadge(
                  alignment: AlignmentPosition.center,
                  size: BadgeSize.regular,
                  text: '888',
                  backgroundColor: color,
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Wrap(
              alignment: alignment,
              crossAxisAlignment: crossAxisAlignment,
              runSpacing: runSpacing,
              spacing: spacing,
              children: [
                FmiBadge(
                  alignment: AlignmentPosition.center,
                  size: BadgeSize.medium,
                  backgroundColor: color,
                ),
                FmiBadge(
                  alignment: AlignmentPosition.center,
                  size: BadgeSize.medium,
                  backgroundColor: color,
                  icon: icon,
                ),
                FmiBadge(
                  alignment: AlignmentPosition.center,
                  size: BadgeSize.medium,
                  backgroundColor: color,
                  text: '8',
                ),
                FmiBadge(
                  alignment: AlignmentPosition.center,
                  size: BadgeSize.medium,
                  backgroundColor: color,
                  text: '88',
                ),
                FmiBadge(
                  alignment: AlignmentPosition.center,
                  size: BadgeSize.medium,
                  backgroundColor: color,
                  text: '888',
                ),
                FmiBadge(
                  alignment: AlignmentPosition.center,
                  size: BadgeSize.medium,
                  backgroundColor: color,
                  text: '999+',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
