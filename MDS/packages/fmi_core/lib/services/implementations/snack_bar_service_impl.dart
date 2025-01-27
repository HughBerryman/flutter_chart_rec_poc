import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SnackBarServiceImpl implements SnackBarService {
  GlobalKey<ScaffoldMessengerState>? _applicationScaffoldMessengerState;

  @override
  void initialize(
      GlobalKey<ScaffoldMessengerState> applicationScaffoldMessengerState) {
    _applicationScaffoldMessengerState = applicationScaffoldMessengerState;
  }

  @override
  void showDismissibleSnackBar(String text,
      {SnackBarType? snackBarType,
      SnackBarAction? snackBarAction,
      Duration? duration,
      IconData? icon}) {
    if (_applicationScaffoldMessengerState == null) {
      throw Exception("Toast service has not yet been initialized");
    }

    if (_applicationScaffoldMessengerState?.currentState == null) {
      throw Exception("Scaffold messenger state current state is null.");
    }

    _applicationScaffoldMessengerState!.currentState!.showSnackBar(SnackBar(
      backgroundColor: getTheme(
              snackBarType, _applicationScaffoldMessengerState!.currentContext!)
          .backgroundColor,
      content: getContent(text, snackBarType, icon),
      action: snackBarAction ??
          SnackBarAction(
            label:
                coreLocalize(_applicationScaffoldMessengerState!.currentContext)
                    .dismiss,
            textColor: getTheme(snackBarType,
                    _applicationScaffoldMessengerState!.currentContext!)
                .actionTextColor,
            onPressed: () {
              _applicationScaffoldMessengerState!.currentState!
                  .hideCurrentSnackBar();
            },
          ),
      showCloseIcon: snackBarAction != null ? true : false,
      closeIconColor: snackBarAction != null
          ? getTheme(snackBarType,
                  _applicationScaffoldMessengerState!.currentContext!)
              .closeIconColor
          : null,
      duration: duration ?? const Duration(seconds: 4),
    ));
  }

  @override
  void showPinnedSnackBar(String text,
      {SnackBarType? snackBarType,
      SnackBarAction? snackBarAction,
      IconData? icon = FontAwesomeIcons.solidCircleExclamation}) {
    showDismissibleSnackBar(text,
        snackBarType: snackBarType,
        snackBarAction: snackBarAction,
        icon: icon,
        duration: const Duration(days: 1000));
  }

  SnackBarThemeData getTheme(SnackBarType? snackBarType, BuildContext context) {
    SnackBarThemeData? snackBarThemeData;

    if (snackBarType != null) {
      switch (snackBarType) {
        case SnackBarType.success:
          {
            snackBarThemeData = FmiSnackBarTheme.success(context);

            break;
          }
        case SnackBarType.warning:
          {
            snackBarThemeData = FmiSnackBarTheme.warning(context);

            break;
          }
        case SnackBarType.error:
          {
            snackBarThemeData = FmiSnackBarTheme.error(context);
            break;
          }
      }
    } else {
      snackBarThemeData = FmiSnackBarTheme.defaultTheme(context);
    }

    return snackBarThemeData;
  }

  Widget getContent(String text, SnackBarType? snackBarType, IconData? icon) {
    Text textWidget = Text(
      text,
      style: getTheme(
              snackBarType, _applicationScaffoldMessengerState!.currentContext!)
          .contentTextStyle,
    );

    if (icon != null) {
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: FMIThemeBase.basePadding6),
            child: FaIcon(icon,
                size: FMIThemeBase.baseIconMedium,
                color: getTheme(snackBarType,
                        _applicationScaffoldMessengerState!.currentContext!)
                    .closeIconColor),
          ),
          Expanded(child: textWidget),
        ],
      );
    } else {
      return textWidget;
    }
  }
}
