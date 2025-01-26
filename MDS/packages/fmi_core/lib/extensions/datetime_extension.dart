import 'package:flutter/material.dart';
import 'package:fmi_core/extensions/localizations.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  /// If date is known to be UTC, but isUtc returns false, this can be
  /// used to reconstruct the date as utc to utilize local time conversions
  DateTime markDateAsUtc() {
    DateTime result = DateTime.utc(
      year,
      month,
      day,
      hour,
      minute,
      second,
      millisecond,
      microsecond,
    );

    return result;
  }

  String convertToFormattedString({BuildContext? context}) {
    return (context == null
            ? DateFormat('MM/dd/yyyy @ HH:mm:ss')
            : DateFormat.yMd(Localizations.localeOf(context).toString())
                .add_jm())
        .format(this);
  }

  String convertToDueIn(bool isStringUTC, {BuildContext? context}) {
    Duration diff = getDuration(this, isStringUTC);
    if (diff.inHours.abs() < 24) {
      return context == null ? 'Due Today' : context.coreLocalize.dueToday;
    } else {
      if (context == null) {
        int days = diff.inDays;
        var display = days <= 1 ? 'Day' : 'Days';
        if (diff.isNegative) {
          return '${days.abs()} $display Past Due';
        }
        return 'Due in $days $display';
      } else {
        if (diff.isNegative) {
          return context.coreLocalize.daysPastDue(diff.inDays.abs());
        }
        return context.coreLocalize.dueInDays(diff.inDays);
      }
    }
  }

  String convertToAgo(bool isStringUTC,
      {BuildContext? context, bool abbreviated = false}) {
    Duration diff = -getDuration(this, isStringUTC);
    String result;
    if (diff.inDays >= 1) {
      result = context == null
          ? '${diff.inDays} day(s) ago'
          : context.coreLocalize.daysAgo(diff.inDays);
    } else if (diff.inHours >= 1) {
      if (abbreviated) {
        result = context == null
            ? '${diff.inHours} hr(s) ago'
            : context.coreLocalize.hoursAgoAbbreviated(diff.inHours);
      } else {
        result = context == null
            ? '${diff.inHours} hour(s) ago'
            : context.coreLocalize.hoursAgo(diff.inHours);
      }
    } else if (diff.inMinutes >= 1) {
      if (abbreviated) {
        result = context == null
            ? '${diff.inMinutes} min(s) ago'
            : context.coreLocalize.minutesAgoAbbreviated(diff.inMinutes);
      } else {
        result = context == null
            ? '${diff.inMinutes} minute(s) ago'
            : context.coreLocalize.minutesAgo(diff.inMinutes);
      }
    } else if (diff.inSeconds >= 1) {
      if (abbreviated) {
        result = context == null
            ? '${diff.inSeconds} sec(s) ago'
            : context.coreLocalize.secondsAgoAbbreviated(diff.inSeconds);
      } else {
        result = context == null
            ? '${diff.inSeconds} second(s) ago'
            : context.coreLocalize.secondsAgo(diff.inSeconds);
      }
    } else {
      result = context == null ? 'just now' : context.coreLocalize.justNow;
    }
    return result;
  }

  String convertToFullMonthNameFormat(bool withTime) {
    if (withTime) {
      return DateFormat('MMM d, yyyy hh:mm a').format(this);
    } else {
      return DateFormat('MMM d, yyyy').format(this);
    }
  }

  Duration getDuration(DateTime date, bool isStringUTC) {
    if (isStringUTC) {
      //the parsed string is recognized as UTC, but does not give timezone info
      DateTime parsedTimeAsUtc = DateTime.utc(
          date.year,
          date.month,
          date.day,
          date.hour,
          date.minute,
          date.second,
          date.millisecond,
          date.microsecond);
      return parsedTimeAsUtc.toUtc().difference(DateTime.now());
    } else {
      //the parsed string is in correct format
      return date.difference(DateTime.now());
    }
  }
}
