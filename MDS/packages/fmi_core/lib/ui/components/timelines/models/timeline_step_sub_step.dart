import 'package:flutter/cupertino.dart';

class TimelineStepSubStep {
  TimelineStepSubStep({
    this.title,
    this.bodyText,
    this.iconData,
    this.onTapped,
    this.dateTime,
    this.timelineIconOverride,
    this.timelineIconColorOverride,
    this.commentBody,
  });

  String? title;
  String? bodyText;
  IconData? iconData;
  Function()? onTapped;
  DateTime? dateTime;
  IconData? timelineIconOverride;
  Color? timelineIconColorOverride;
  String? commentBody;
}
