import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FmiGenericCard extends StatefulWidget {
  const FmiGenericCard({
    super.key,
    required this.title,
    required this.body,
    this.leading,
    this.trailing,
    this.overline,
    this.subtitle,
    this.footer,
    this.subtitleMaxLine = 1,
    this.titleMaxLine = 1,
    this.titleTextThemeMobile,
    this.titleTextThemeNotMobile,
    this.subtitleTextStyle,
    this.overlineTextStyle,
  });

  final String title;
  final int? titleMaxLine;
  final Widget body;
  final Widget? leading;
  final Widget? trailing;
  final String? overline;
  final String? subtitle;
  final int? subtitleMaxLine;
  final Widget? footer;
  final TextStyle? titleTextThemeMobile;
  final TextStyle? titleTextThemeNotMobile;
  final TextStyle? subtitleTextStyle;
  final TextStyle? overlineTextStyle;

  @override
  State<FmiGenericCard> createState() => _FmiGenericCardState();
}

class _FmiGenericCardState extends State<FmiGenericCard> {
  @override
  Widget build(BuildContext context) {
    TextStyle? getTitleStyle() {
      if (context.isXSmall || context.isSmall) {
        if (widget.titleTextThemeMobile == null) {
          return Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.onSurface);
        } else {
          return widget.titleTextThemeMobile;
        }
      } else {
        if (widget.titleTextThemeNotMobile == null) {
          return Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onSurface);
        }
        return widget.titleTextThemeNotMobile;
      }
    }

    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(FMIThemeBase.baseBorderRadiusLarge),
                  topRight:
                      Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          padding: const EdgeInsets.symmetric(
              vertical: FMIThemeBase.basePadding4,
              horizontal: FMIThemeBase.basePadding8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Visibility(
                visible: widget.leading != null,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: FMIThemeBase.basePadding4),
                  child: widget.leading,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: widget.overline != null,
                      child: Text(
                        widget.overline ?? '',
                        style: widget.overlineTextStyle ??
                            Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .fmiBaseThemeAltSurfaceOnAltSurface),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      widget.title,
                      style: getTitleStyle(),
                      maxLines: widget.titleMaxLine!,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Visibility(
                      visible: widget.subtitle != null,
                      child: Text(
                        widget.subtitle ?? '',
                        style: widget.subtitleTextStyle ??
                            Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .fmiBaseThemeAltSurfaceOnAltSurface),
                        maxLines: widget.subtitleMaxLine!,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              widget.trailing ?? Container(),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: (widget.footer != null)
                  ? const BorderRadius.all(Radius.zero)
                  : const BorderRadius.only(
                      bottomLeft:
                          Radius.circular(FMIThemeBase.baseBorderRadiusLarge),
                      bottomRight:
                          Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                  height: FMIThemeBase.baseBorderWidthDefault,
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  thickness: FMIThemeBase.baseBorderWidthThin),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: FMIThemeBase.basePadding4,
                    horizontal: FMIThemeBase.basePadding8),
                child: widget.body,
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: const BorderRadius.only(
                  bottomLeft:
                      Radius.circular(FMIThemeBase.baseBorderRadiusLarge),
                  bottomRight:
                      Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: widget.footer != null,
                child: Divider(
                    height: FMIThemeBase.baseBorderWidthDefault,
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    thickness: FMIThemeBase.baseBorderWidthThin),
              ),
              (widget.footer != null)
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: FMIThemeBase.basePadding8,
                          vertical: FMIThemeBase.basePadding4),
                      child: widget.footer ?? Container(),
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}
