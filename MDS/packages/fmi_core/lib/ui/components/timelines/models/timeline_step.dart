import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../fmi_core.dart';

class TimelineStep {
  TimelineStep({
    required this.state,
    this.title,
    this.assignment,
    this.bodyText,
    this.subSteps,
    this.onTapped,
    this.dateTime,
    this.iconOverride,
    this.iconColorOverride,
    this.iconBackgroundOverride,
    this.connectingLineColorOverride,
    this.link,
    this.showSubstepConnectingLine = true,
    this.commentBody,
    this.trailingButtonCallback,
    this.trailingButtonIconOverride,
    this.trailingButtonIconColorOverride
  });

  TimelineStepState state;
  String? title;
  String? assignment;
  String? bodyText;
  List<TimelineStepSubStep>? subSteps;
  Function()? onTapped;
  DateTime? dateTime;
  IconData? iconOverride;
  Color? iconColorOverride;
  Color? iconBackgroundOverride;
  Color? connectingLineColorOverride;
  bool showSubstepConnectingLine;
  String? commentBody;
  Uri? link;
  Function? trailingButtonCallback;
  IconData? trailingButtonIconOverride;
  Color? trailingButtonIconColorOverride;

  IconData? getIndicatorIcon(BuildContext context) {
    IconData? result;

    if (iconOverride != null) {
      return iconOverride;
    }

    switch (state) {
      case TimelineStepState.notStarted:
        {
          result = null;
          break;
        }
      case TimelineStepState.inProgress:
        {
          result = FontAwesomeIcons.solidRotate;
          break;
        }
      case TimelineStepState.success:
        {
          result = FontAwesomeIcons.solidCheck;
          break;
        }
      case TimelineStepState.error:
        {
          result = FontAwesomeIcons.solidCircleSmall;
          break;
        }
      default:
        {
          result = null;
        }
    }

    return result;
  }

  Color getIndicatorColor(BuildContext context) {
    Color result;

    if (iconBackgroundOverride != null) {
      return iconBackgroundOverride!;
    }

    switch (state) {
      case TimelineStepState.notStarted:
        {
          result = Theme.of(context).colorScheme.surfaceContainerHighest;
          break;
        }
      case TimelineStepState.inProgress:
        {
          result = Theme.of(context).colorScheme.primary;
          break;
        }
      case TimelineStepState.success:
        {
          result = Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess;
          break;
        }
      case TimelineStepState.error:
        {
          result = Theme.of(context).colorScheme.error;
          break;
        }
      default:
        {
          result = Theme.of(context).colorScheme.surfaceContainerHighest;
        }
    }

    return result;
  }
}
