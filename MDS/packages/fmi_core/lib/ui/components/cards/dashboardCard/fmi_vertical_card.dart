import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

@Deprecated('Deprecated - Replace with OOB Components to be removed in the next 30 days')
class FmiVerticalCard extends StatefulWidget {
  const FmiVerticalCard(
      {super.key,
      this.footerItems,
      this.subtitle,
      required this.title,
      required this.subtext,
      this.avatar,
      required this.visual,
      this.onTap,
      this.description,
      this.timeStamp,
      this.descriptionMaxLines = 7,
      this.titleMaxLines = 2});

  final Widget visual;
  final String subtext;
  final String title;
  final String? subtitle;
  final String? description;
  final String? timeStamp;
  final FmiAvatar? avatar;
  final List<Widget>? footerItems;
  final Function()? onTap;
  final int? descriptionMaxLines;
  final int? titleMaxLines;
  @override
  State<FmiVerticalCard> createState() => _FmiVerticalCardState();
}

class _FmiVerticalCardState extends State<FmiVerticalCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: const BorderRadius.all(
                  Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(
                        FMIThemeBase.baseBorderRadiusLarge),
                    child: AspectRatio(
                        aspectRatio: 193 / 158, child: widget.visual)),
                Padding(
                  padding: context.isMobileScreen
                      ? const EdgeInsets.symmetric(
                          horizontal: FMIThemeBase.basePadding7)
                      : EdgeInsets.zero,
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
                            crossAxisAlignment: WrapCrossAlignment.center,
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
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: widget.titleMaxLines,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurface)),
                                  if (widget.subtitle != null)
                                    Text(
                                      widget.subtitle!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurface),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
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
                  padding: context.isMobileScreen
                      ? const EdgeInsets.only(
                          left: FMIThemeBase.basePadding7,
                          right: FMIThemeBase.basePadding7,
                          bottom: FMIThemeBase.basePadding5)
                      : EdgeInsets.zero,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
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
            ),
          )),
    );
  }
}
