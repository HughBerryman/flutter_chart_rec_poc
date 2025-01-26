import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timelines/timelines.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../fmi_core.dart';

class FmiTimeline extends StatelessWidget {
  const FmiTimeline({Key? key, required this.steps}) : super(key: key);

  final List<TimelineStep> steps;

  @override
  Widget build(BuildContext context) {
    return FixedTimeline.tileBuilder(
      theme: TimelineThemeData(
        direction: Axis.vertical,
        nodePosition: 0,
        indicatorTheme: const IndicatorThemeData(
          position: 0,
          size: FMIThemeBase.baseIconMedium,
        ),
        connectorTheme: const ConnectorThemeData(
          thickness: FMIThemeBase.baseBorderWidthDefault,
        ),
      ),
      builder: TimelineTileBuilder.connected(
        connectionDirection: ConnectionDirection.before,
        itemCount: steps.length,
        contentsBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.only(
                left: FMIThemeBase.basePaddingLarge,
                bottom: index != steps.length - 1
                    ? FMIThemeBase.basePaddingXLarge
                    : 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: steps[index].onTapped,
                  child: MouseRegion(
                    cursor: steps[index].onTapped != null
                        ? SystemMouseCursors.click
                        : SystemMouseCursors.basic,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (steps[index].title != null) ...[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: FMIThemeBase.baseGapSmall),
                                  child: Text(
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .fmiBaseThemeAltSurfaceOnAltSurface),
                                      steps[index].title!),
                                ),
                              ],
                              if (steps[index].assignment != null) ...[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: FMIThemeBase.baseGapSmall),
                                  child: Text(
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurface),
                                      steps[index].assignment!),
                                ),
                              ],
                              if (steps[index].dateTime != null) ...[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: FMIThemeBase.baseGapSmall),
                                  child: Text(
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .fmiBaseThemeAltSurfaceOnAltSurface),
                                      '(${steps[index].dateTime!.convertToFormattedString()})'),
                                ),
                              ],
                              if (steps[index].bodyText != null) ...[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: FMIThemeBase.baseGapSmall),
                                  child: Text(
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurface),
                                      steps[index].bodyText!),
                                ),
                              ],
                              if (steps[index].link != null) ...[
                                Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: FMIThemeBase.baseGapSmall),
                                    child: RichText(
                                      text: TextSpan(
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                decoration: null,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                        text: steps[index].link!.toString(),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () async {
                                            if (await canLaunchUrl(
                                                steps[index].link!)) {
                                              await launchUrl(
                                                steps[index].link!,
                                              );
                                            }
                                          },
                                      ),
                                    ))
                              ],
                              if (steps[index].commentBody != null) ...[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: FMIThemeBase.baseGapSmall),
                                  child: Container(
                                    padding: const EdgeInsets.all(
                                        FMIThemeBase.basePadding6),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(
                                                FMIThemeBase.baseGap1),
                                            bottomLeft: Radius.circular(
                                                FMIThemeBase.baseGap12),
                                            bottomRight: Radius.circular(
                                                FMIThemeBase.baseGap12),
                                            topRight: Radius.circular(
                                                FMIThemeBase.baseGap12)),
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surfaceContainerHighest),
                                    child: Text(
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSurface),
                                        steps[index].commentBody!),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                        if(steps[index].trailingButtonCallback != null)...[
                          IconButton(
                              onPressed: () => steps[index].trailingButtonCallback!(),
                              icon: Icon(
                                steps[index].trailingButtonIconOverride ?? FontAwesomeIcons.solidArrowUpRightFromSquare,
                                color: steps[index].trailingButtonIconColorOverride ?? Theme.of(context).colorScheme.primary,
                                size: FMIThemeBase.baseIconMedium,
                            )
                          )
                        ]
                      ],
                    ),
                  ),
                ),
                if (steps[index].subSteps != null &&
                    steps[index].subSteps!.isNotEmpty) ...[
                  Padding(
                      padding: const EdgeInsets.only(
                          bottom: FMIThemeBase.baseGapSmall),
                      child: generateSubStepTimeline(
                          context,
                          steps[index].subSteps!,
                          steps[index].showSubstepConnectingLine)),
                ]
              ],
            ),
          );
        },
        indicatorBuilder: (_, index) {
          return DotIndicator(
            color: steps[index].getIndicatorColor(context),
            child: Icon(
              steps[index].getIndicatorIcon(context),
              size: FMIThemeBase.baseIconXSmall,
              color: steps[index].iconColorOverride ??
                  Theme.of(context).colorScheme.onPrimary,
            ),
          );
        },
        connectorBuilder: (_, index, ___) => SolidLineConnector(
          color: steps[index - 1].connectingLineColorOverride ??
              steps[index - 1].getIndicatorColor(context),
        ),
      ),
    );
  }

  Widget generateSubStepTimeline(BuildContext context,
      List<TimelineStepSubStep> subSteps, bool showConnectingLine) {
    List<TimelineStepSubStep> extendedSubSteps = [TimelineStepSubStep()];

    extendedSubSteps.addAll(subSteps);

    Widget result = FixedTimeline.tileBuilder(
      theme: TimelineThemeData(
        direction: Axis.vertical,
        nodePosition: 0,
        indicatorTheme: const IndicatorThemeData(
          position: 0,
          size: FMIThemeBase.baseIconXSmall,
        ),
        connectorTheme: const ConnectorThemeData(
          thickness: FMIThemeBase.baseBorderWidthDefault,
        ),
      ),
      builder: TimelineTileBuilder.connected(
        itemCount: extendedSubSteps.length,
        contentsBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.only(
                left: FMIThemeBase.basePaddingLarge,
                bottom: index != extendedSubSteps.length - 1
                    ? showConnectingLine
                        ? FMIThemeBase.basePaddingXLarge
                        : FMIThemeBase.basePaddingLarge
                    : 0),
            child: MouseRegion(
              cursor: extendedSubSteps[index].onTapped != null
                  ? SystemMouseCursors.click
                  : SystemMouseCursors.basic,
              child: GestureDetector(
                onTap: extendedSubSteps[index].onTapped,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (extendedSubSteps[index].title != null ||
                              extendedSubSteps[index].dateTime != null) ...[
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: FMIThemeBase.baseGapSmall),
                              child: RichText(
                                text: TextSpan(children: [
                                  if (extendedSubSteps[index].title != null)
                                    TextSpan(
                                        text: extendedSubSteps[index].title!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w700,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .fmiBaseThemeAltSurfaceOnAltSurface)),
                                  if (extendedSubSteps[index].dateTime != null)
                                    TextSpan(
                                        text:
                                            ' (${extendedSubSteps[index].dateTime!.convertToFormattedString()})',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .fmiBaseThemeAltSurfaceOnAltSurface)),
                                ]),
                              ),
                            ),
                          ],
                          if (extendedSubSteps[index].bodyText != null) ...[
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: FMIThemeBase.baseGapSmall),
                              child: Text(
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface),
                                  extendedSubSteps[index].bodyText!),
                            ),
                          ],
                          if (extendedSubSteps[index].commentBody != null) ...[
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: FMIThemeBase.baseGapSmall),
                              child: Container(
                                padding: const EdgeInsets.all(
                                    FMIThemeBase.basePadding6),
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(
                                            FMIThemeBase.baseGap1),
                                        bottomLeft: Radius.circular(
                                            FMIThemeBase.baseGap12),
                                        bottomRight: Radius.circular(
                                            FMIThemeBase.baseGap12),
                                        topRight: Radius.circular(
                                            FMIThemeBase.baseGap12)),
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceContainerHighest),
                                child: Text(
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSurface),
                                    extendedSubSteps[index].commentBody!),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    if (extendedSubSteps[index].iconData != null) ...[
                      Padding(
                        padding:
                            const EdgeInsets.all(FMIThemeBase.basePaddingLarge),
                        child: Icon(
                          extendedSubSteps[index].iconData,
                          color: Theme.of(context).colorScheme.primary,
                          size: FMIThemeBase.baseIconMedium,
                        ),
                      )
                    ],
                  ],
                ),
              ),
            ),
          );
        },
        indicatorBuilder: (_, index) {
          return extendedSubSteps[index].timelineIconOverride != null
              ? ContainerIndicator(
                  size: FMIThemeBase.baseIconSmall.toDouble(),
                  child: Icon(
                    extendedSubSteps[index].timelineIconOverride,
                    size: FMIThemeBase.baseIconSmall,
                    color: extendedSubSteps[index].timelineIconColorOverride ??
                        Theme.of(context).colorScheme.surfaceContainerHighest,
                  ),
                )
              : index != 0
                  ? OutlinedDotIndicator(
                      borderWidth: FMIThemeBase.baseBorderWidthDefault,
                      color: Theme.of(context).colorScheme.surfaceContainerHighest,
                    )
                  : null;
        },
        connectorBuilder: (_, index, ___) => showConnectingLine
            ? SolidLineConnector(
                color: Theme.of(context).colorScheme.surfaceContainerHighest)
            : null,
      ),
    );

    return result;
  }
}
