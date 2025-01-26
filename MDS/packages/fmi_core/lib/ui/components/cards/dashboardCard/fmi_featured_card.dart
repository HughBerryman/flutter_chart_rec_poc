import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

@Deprecated('Deprecated - Replace with OOB Components to be removed in the next 30 days')
class FmiFeaturedCard extends StatefulWidget {
  const FmiFeaturedCard({
    super.key,
    required this.visual,
    this.subtitle,
    this.timeStamp,
    required this.title,
    this.description,
    required this.footerItems,
    required this.subtext,
    this.avatar,
    required this.chipText,
    this.chipTextColor,
    this.chipBackgroundColor,
    this.showChip = false,
    this.chipPosition,
    this.onTap,
    this.descriptionMaxLines = 3,
    this.titleMaxLines = 3,
    this.isFlush = false,
  });
  final Widget visual;
  final String? subtitle;
  final String? timeStamp;
  final bool? showChip;
  final String chipText;
  final badges.BadgePosition? chipPosition;
  final Color? chipTextColor;
  final Color? chipBackgroundColor;
  final String title;
  final String subtext;
  final FmiAvatar? avatar;
  final String? description;
  final List<Widget>? footerItems;
  final int? descriptionMaxLines;
  final int? titleMaxLines;
  final Function()? onTap;
  final bool? isFlush;

  @override
  State<FmiFeaturedCard> createState() => _FmiFeaturedCardState();
}

class _FmiFeaturedCardState extends State<FmiFeaturedCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: IntrinsicHeight(
        child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.all(
                    Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                badges.Badge(
                  badgeStyle: badges.BadgeStyle(
                    borderRadius: BorderRadius.circular(
                        FMIThemeBase.baseBorderRadiusMedium),
                    shape: badges.BadgeShape.square,
                    badgeColor: widget.chipBackgroundColor ??
                        Theme.of(context).colorScheme.onSurface,
                  ),
                  showBadge: widget.showChip!,
                  position: widget.chipPosition ??
                      badges.BadgePosition.bottomStart(
                        bottom: FMIThemeBase.basePadding4,
                        start: FMIThemeBase.basePadding4,
                      ),
                  badgeContent: Text(
                    widget.chipText,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.surface),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          FMIThemeBase.baseBorderRadiusLarge),
                      child: AspectRatio(
                          aspectRatio: 406 / 234, child: widget.visual)),
                ),
                Padding(
                  padding: widget.isFlush!
                      ? EdgeInsets.zero
                      : const EdgeInsets.symmetric(
                          horizontal: FMIThemeBase.basePadding7),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Visibility(
                          visible: widget.subtext.isNotEmpty,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: (context.isMobileScreen)
                                    ? FMIThemeBase.basePadding3
                                    : FMIThemeBase.basePadding7,
                                bottom: (context.isMobileScreen)
                                    ? FMIThemeBase.basePadding2
                                    : FMIThemeBase.basePadding1),
                            child: Text(
                              widget.subtext,
                              style: (context.isMobileScreen)
                                  ? Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface)
                                  : Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Padding(
                          padding: (widget.subtext.isEmpty)
                              ? const EdgeInsets.only(
                                  top: FMIThemeBase.basePadding3)
                              : EdgeInsets.zero,
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.start,
                            children: [
                              Visibility(
                                visible: widget.avatar != null,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: FMIThemeBase.basePadding6),
                                    child: widget.avatar),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(widget.title,
                                      maxLines: widget.titleMaxLines,
                                      overflow: TextOverflow.ellipsis,
                                      style: (context.isMobileScreen)
                                          ? Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSurface)
                                          : Theme.of(context)
                                              .textTheme
                                              .titleLarge
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSurface)),
                                  if (widget.subtitle != null)
                                    Text(
                                      widget.subtitle!,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurface),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: !context.isMobileScreen,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: FMIThemeBase.basePadding5),
                            child: Text(
                              widget.description ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurfaceVariant),
                              maxLines: widget.descriptionMaxLines,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ]),
                ),
                const Spacer(),
                Padding(
                  padding: widget.isFlush!
                      ? EdgeInsets.zero
                      : const EdgeInsets.only(
                          left: FMIThemeBase.basePadding7,
                          right: FMIThemeBase.basePadding7,
                          bottom: FMIThemeBase.basePadding5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          widget.timeStamp ?? '',
                          style: (context.isMobileScreen)
                              ? Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSurface)
                              : Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Flexible(
                        child: Wrap(
                          children: widget.footerItems ?? [],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
