import 'package:flutter/material.dart';
import 'package:fmi_core/designTokens/fmi_theme_base.dart';
import 'package:fmi_core/extensions/build_context_extension.dart';
import 'package:fmi_core/extensions/color_scheme_extension.dart';
import 'package:fmi_core/ui/components/candyBar/candyBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiCandyBar extends StatefulWidget {
  /// Create a FmiCandyBar.
  ///
  /// The [items] arguments must not be null.
  /// It's a list of FmiCandyBarItem.
  const FmiCandyBar({super.key, required this.items});

  final List<FmiCandyBarItem> items;

  @override
  State<FmiCandyBar> createState() => _FmiCandyBarState();
}

class _FmiCandyBarState extends State<FmiCandyBar> {
  void onCloseItem(int index) {
    var tmpOnRemoved = widget.items[index].onRemoved;
    setState(() {
      widget.items.removeAt(index);
    });

    if (tmpOnRemoved != null) {
      tmpOnRemoved();
    }
  }

  void onTapItem(int index) {
    var tmpOnTap = widget.items[index].onTap;
    if (tmpOnTap != null) {
      tmpOnTap();
    }
    onCloseItem(index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.items.isNotEmpty)
          ListView.separated(
              separatorBuilder: ((context, index) {
                return const SizedBox(height: FMIThemeBase.basePadding2);
              }),
              shrinkWrap: true,
              itemCount: widget.items.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return _FmiCandyBarItemContainer(
                  item: widget.items[index],
                  onClose: () => onCloseItem(index),
                  onTap: () => onTapItem(index),
                );
              }),
      ],
    );
  }
}

class _FmiCandyBarItemContainer extends StatelessWidget {
  const _FmiCandyBarItemContainer({
    required this.item,
    required this.onClose,
    required this.onTap,
  });

  final FmiCandyBarItem item;
  final VoidCallback onClose;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    bool isMobile = context.isXSmall || context.isSmall;
    return FractionallySizedBox(
      widthFactor: FMIThemeBase.baseBorderWidthThin,
      child: Material(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge),
        color: getBackgroundColor(context, item.type,
            forceColor: item.backgroundColor),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: isMobile
                ? const EdgeInsets.fromLTRB(
                    FMIThemeBase.basePadding8,
                    FMIThemeBase.basePadding6,
                    FMIThemeBase.basePadding8,
                    FMIThemeBase.basePadding7)
                : const EdgeInsets.fromLTRB(
                    FMIThemeBase.basePadding12,
                    FMIThemeBase.basePadding7,
                    FMIThemeBase.basePadding8,
                    FMIThemeBase.basePadding7),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (item.icon != null)
                        Padding(
                          padding: isMobile
                              ? const EdgeInsets.only(
                                  right: FMIThemeBase.basePadding4)
                              : const EdgeInsets.only(
                                  right: FMIThemeBase.basePadding10),
                          child: FaIcon(
                            item.icon,
                            color: getForegroundColor(context, item.type,
                                forceColor: item.iconColor),
                            size: FMIThemeBase.baseIconMedium,
                          ),
                        ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (item.title != null)
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: FMIThemeBase.basePadding2),
                                child: Text(
                                  item.title!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                          color: getForegroundColor(
                                              context, item.type,
                                              forceColor: item.titleColor)),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            Text(
                              item.description,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: getForegroundColor(
                                          context, item.type,
                                          forceColor: item.descriptionColor)),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: onTap,
                  child: Text(
                    item.buttonText,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: getForegroundColor(context, item.type,
                            forceColor: item.buttonTextColor)),
                  ),
                ),
                IconButton(
                  onPressed: onClose,
                  icon: Padding(
                    padding: const EdgeInsets.all(FMIThemeBase.basePadding1),
                    child: FaIcon(
                      FontAwesomeIcons.xmark,
                      size: FMIThemeBase.baseIconMedium,
                      color: getForegroundColor(context, item.type),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color getForegroundColor(BuildContext context, FmiCandyBarType type,
      {Color? forceColor}) {
    if (forceColor != null) {
      return forceColor;
    } else {
      switch (type) {
        case FmiCandyBarType.warning:
          return Theme.of(context).colorScheme.fmiBaseThemeWarningOnWarning;
        case FmiCandyBarType.error:
          return Theme.of(context).colorScheme.fmiBaseThemeDangerOnDanger;
        default:
          return Theme.of(context).colorScheme.fmiBaseThemeSuccessOnSuccess;
      }
    }
  }

  Color getBackgroundColor(BuildContext context, FmiCandyBarType type,
      {Color? forceColor}) {
    if (forceColor != null) {
      return forceColor;
    } else {
      switch (type) {
        case FmiCandyBarType.warning:
          return Theme.of(context).colorScheme.fmiBaseThemeWarningWarning;
        case FmiCandyBarType.error:
          return Theme.of(context).colorScheme.fmiBaseThemeDangerDanger;
        default:
          return Theme.of(context).colorScheme.fmiBaseThemeSuccessSuccess;
      }
    }
  }
}
