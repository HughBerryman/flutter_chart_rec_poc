import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiScorecard extends StatefulWidget {
  const FmiScorecard({
    super.key,
    required this.title,
    this.metric,
    this.subtitle,
    this.element,
    this.trend = ScorecardTrend.standard,
    this.hasElevation = true,
    this.hasBorder = true,
    this.metricColor,
    this.onPressed,
    this.selectedBehaviorOff = false,
    this.unit,
    this.isChecked = false,
    this.isTransparent = false,
    this.isFlush = false,
    this.isMini = false,
    this.warningIndicatorOn = false,
  });

  final String title;
  final String? metric;
  final String? unit;
  final String? subtitle;
  final Widget? element;
  final ScorecardTrend? trend;
  final bool? hasElevation;
  final bool? hasBorder;
  final ScorecardTrend? metricColor;
  final Function()? onPressed;
  final bool? selectedBehaviorOff;
  final bool? isChecked;
  final bool? isTransparent;
  final bool? isFlush;
  final bool? isMini;
  final bool? warningIndicatorOn;
  @override
  State<FmiScorecard> createState() => _FmiScorecardState();
}

class _FmiScorecardState extends State<FmiScorecard> {
  late bool _isChecked;

  @override
  void initState() {
    _isChecked = widget.isChecked!;
    super.initState();
  }

  bool _getIsChecked() {
    if (_isChecked == true && widget.selectedBehaviorOff == false) {
      return true;
    } else {
      return false;
    }
  }

  void _changeSelected(PointerEvent details) {
    setState(() {
      _isChecked = !_isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool _isSmallSizing = context.isSmall || context.isXSmall || widget.isMini!;
    Icon _getCheck(bool _isChecked) {
      if (_getIsChecked()) {
        return Icon(
          FontAwesomeIcons.solidCircleCheck,
          color: _getColor(context, ScorecardComponent.icon),
        );
      } else {
        return const Icon(FontAwesomeIcons.solidCircleCheck,
            color: Colors.transparent);
      }
    }

    double _getContextPadding(BuildContext context, PaddingPosition position) {
      switch (position) {
        case PaddingPosition.top:
          return FMIThemeBase.basePadding8;
        case PaddingPosition.right:
          if (_isSmallSizing) {
            return FMIThemeBase.basePaddingLarge;
          }
          return FMIThemeBase.basePadding8;
        case PaddingPosition.bottom:
          if (_isSmallSizing) {
            return FMIThemeBase.basePadding8;
          }
          return FMIThemeBase.basePadding10;
        case PaddingPosition.left:
          if (_isSmallSizing) {
            return FMIThemeBase.basePaddingLarge;
          }
          return FMIThemeBase.basePadding8;
      }
    }

    return InkWell(
      onTap: widget.onPressed,
      mouseCursor: _getMouseCursorType(),
      child: Listener(
        onPointerDown: _changeSelected,
        child: Container(
          decoration: BoxDecoration(
            color: (widget.isTransparent!)
                ? Colors.transparent
                : (_getIsChecked() == false)
                    ? Theme.of(context).colorScheme.onPrimary
                    : Theme.of(context).colorScheme.primaryContainer,
            border: (_getIsChecked() == false || widget.hasBorder == false)
                ? Border.all(color: Colors.transparent)
                : Border.all(
                    color: _getColor(context, ScorecardComponent.border)),
            borderRadius: (widget.hasBorder!)
                ? const BorderRadius.all(
                    Radius.circular(FMIThemeBase.baseBorderRadiusSmall))
                : const BorderRadius.all(Radius.zero),
            boxShadow: [
              (widget.hasElevation == false || widget.isTransparent!)
                  ? const BoxShadow(color: Colors.transparent)
                  : BoxShadow(
                      color: Theme.of(context)
                          .shadowColor
                          .withOpacity(FMIThemeBase.baseOpacity20),
                      spreadRadius: FMIThemeBase.baseElevation11Blur.toDouble(),
                      blurRadius: FMIThemeBase.baseElevation41Spread.toDouble(),
                    )
            ],
          ),
          child: Stack(children: [
            Padding(
              padding: (widget.isFlush!)
                  ? EdgeInsets.zero
                  : EdgeInsets.only(
                      top: _getContextPadding(context, PaddingPosition.top),
                      bottom:
                          _getContextPadding(context, PaddingPosition.bottom),
                      left: _getContextPadding(context, PaddingPosition.left),
                      right: _getContextPadding(context, PaddingPosition.right),
                    ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title,
                      style: _getTextTheme(context, ScorecardComponent.title)
                          .copyWith(
                              color: _getColor(
                                  context, ScorecardComponent.title))),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: FMIThemeBase.basePaddingSmall),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Visibility(
                          visible: (widget.metric != null),
                          child: Text(
                            widget.metric ?? '',
                            style: _getTextTheme(
                                    context, ScorecardComponent.metric)
                                .copyWith(
                                    color: _getColor(
                                        context, ScorecardComponent.metric)),
                          ),
                        ),
                        Visibility(
                          visible: widget.unit != null,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: FMIThemeBase.basePadding2),
                            child: Text(widget.unit != null ? widget.unit! : '',
                                style: Theme.of(context)
                                    .textTheme
                                    .chartSubtitle
                                    .copyWith(
                                        color: _getColor(context,
                                            ScorecardComponent.metric))),
                          ),
                        )
                      ],
                    ),
                  ),
                  Visibility(
                    visible: (widget.subtitle != null),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: FMIThemeBase.basePaddingSmall),
                      child: Text(
                          (widget.subtitle != null) ? widget.subtitle! : '',
                          style: _getTextTheme(
                                  context, ScorecardComponent.subtitle)
                              .copyWith(
                                  color: _getColor(
                                      context, ScorecardComponent.subtitle))),
                    ),
                  ),
                  Visibility(
                      visible: (widget.element != null),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: FMIThemeBase.basePaddingSmall),
                        child: (widget.element != null)
                            ? Center(child: widget.element!)
                            : const SizedBox(
                                width: FMIThemeBase.baseContainerDimension0,
                                height: FMIThemeBase.baseContainerDimension0),
                      )),
                ],
              ),
            ),
            Visibility(
              visible: widget.warningIndicatorOn!,
              child: Positioned(
                child: FaIcon(FontAwesomeIcons.solidCircleExclamation,
                    color: Theme.of(context).colorScheme.chartError,
                    size: FMIThemeBase.baseIconMedium),
                right: _isSmallSizing
                    ? FMIThemeBase.basePadding2
                    : FMIThemeBase.basePadding3,
                bottom: _isSmallSizing
                    ? FMIThemeBase.basePadding2
                    : FMIThemeBase.basePadding3,
              ),
            ),
            Positioned(
              child: _getCheck(_isChecked),
              right: _isSmallSizing
                  ? FMIThemeBase.basePadding2
                  : FMIThemeBase.basePadding3,
              top: _isSmallSizing
                  ? FMIThemeBase.basePadding2
                  : FMIThemeBase.basePadding3,
            )
          ]),
        ),
      ),
    );
  }

  MouseCursor _getMouseCursorType() {
    if (widget.selectedBehaviorOff!) {
      return SystemMouseCursors.basic;
    }

    MouseCursor result = SystemMouseCursors.click;
    return result;
  }

  TextStyle _getTextTheme(BuildContext context, ScorecardComponent component) {
    bool isSmallSizing = context.isSmall || context.isXSmall || widget.isMini!;
    switch (component) {
      case ScorecardComponent.title:
        if (isSmallSizing) {
          return Theme.of(context).textTheme.labelMedium!;
        } else {
          return Theme.of(context).textTheme.titleMedium!;
        }

      case ScorecardComponent.metric:
        if (isSmallSizing) {
          return Theme.of(context).textTheme.titleLarge!;
        } else {
          return Theme.of(context).textTheme.headlineMedium!;
        }

      case ScorecardComponent.subtitle:
        if (isSmallSizing) {
          return Theme.of(context).textTheme.labelSmall!;
        } else {
          return Theme.of(context).textTheme.bodyMedium!;
        }
      default:
        return Theme.of(context).textTheme.labelMedium!;
    }
  }

  Color _getColor(BuildContext context, ScorecardComponent component) {
    switch (component) {
      case ScorecardComponent.border:
        if (widget.trend == ScorecardTrend.up) {
          return Theme.of(context).colorScheme.chartGreen;
        } else if (widget.trend == ScorecardTrend.down) {
          return Theme.of(context).colorScheme.chartError;
        }
        return Theme.of(context).colorScheme.chartBlueGray;
      case ScorecardComponent.metric:
        if (widget.metricColor == ScorecardTrend.up) {
          return Theme.of(context).colorScheme.chartGreen;
        } else if (widget.metricColor == ScorecardTrend.down) {
          return Theme.of(context).colorScheme.chartError;
        }
        return Theme.of(context).colorScheme.textChartText;
      case ScorecardComponent.subtitle:
        if (widget.trend == ScorecardTrend.up) {
          if (_getIsChecked()) {
            return Theme.of(context)
                .colorScheme
                .chartGreen
                .withOpacity(FMIThemeBase.baseOpacity70);
          }
          return Theme.of(context).colorScheme.chartGreen;
        } else if (widget.trend == ScorecardTrend.down) {
          if (_getIsChecked()) {
            return Theme.of(context)
                .colorScheme
                .chartError
                .withOpacity(FMIThemeBase.baseOpacity70);
          }
          return Theme.of(context).colorScheme.chartError;
        }
        if (_getIsChecked()) {
          return Theme.of(context)
              .colorScheme
              .chartBlueGray
              .withOpacity(FMIThemeBase.baseOpacity70);
        }
        return Theme.of(context).colorScheme.chartBlueGray;

      case ScorecardComponent.icon:
        if (widget.trend == ScorecardTrend.up) {
          return Theme.of(context).colorScheme.chartGreen;
        } else if (widget.trend == ScorecardTrend.down) {
          return Theme.of(context).colorScheme.chartError;
        }
        return Theme.of(context).colorScheme.baseGridLine;
      case ScorecardComponent.title:
        return Theme.of(context)
            .colorScheme
            .baseGridLine
            .withOpacity(FMIThemeBase.baseOpacity60);
    }
  }
}
