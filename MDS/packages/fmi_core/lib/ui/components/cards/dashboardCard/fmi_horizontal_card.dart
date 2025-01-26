import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

@Deprecated('Deprecated - Replace with OOB Components to be removed in the next 30 days')
class FmiHorizontalCard extends StatefulWidget {
  const FmiHorizontalCard(
      {super.key,
      this.subtitle,
      required this.title,
      this.titleMaxLines = 1,
      required this.subtext,
      this.description,
      this.descriptionMaxLines = 3,
      this.avatar,
      this.timeStamp,
      this.footerItems,
      this.visual,
      this.onTap});

  final Widget? visual;
  final String? subtitle;
  final String title;
  final int titleMaxLines;
  final String subtext;
  final String? description;
  final int descriptionMaxLines;
  final FmiAvatar? avatar;
  final String? timeStamp;
  final List<Widget>? footerItems;
  final Function()? onTap;
  @override
  State<FmiHorizontalCard> createState() => _FmiHorizontalCardState();
}

class _FmiHorizontalCardState extends State<FmiHorizontalCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: const BorderRadius.all(
                Radius.circular(FMIThemeBase.baseBorderRadiusLarge))),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: FMIThemeBase.basePadding7,
              vertical: FMIThemeBase.basePadding5),
          child: IntrinsicHeight(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: widget.visual != null
                            ? const EdgeInsets.only(
                                right: FMIThemeBase.basePadding3)
                            : EdgeInsets.zero,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.subtext,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
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
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Visibility(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: FMIThemeBase.basePadding4),
                                      child: widget.avatar ?? const SizedBox(),
                                    ),
                                    visible: widget.avatar != null),
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
                            if (widget.description != null)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: FMIThemeBase.basePaddingMedium),
                                child: Text(
                                  widget.description!,
                                  maxLines: widget.descriptionMaxLines,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: widget.visual != null,
                      child: Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  FMIThemeBase.baseBorderRadiusLarge),
                              child: AspectRatio(
                                  aspectRatio: 86 / 83, child: widget.visual)),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.timeStamp ?? '',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
