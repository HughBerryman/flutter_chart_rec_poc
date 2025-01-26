import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel/flutter_custom_carousel.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FmiCarouselWidget extends StatefulWidget {
  const FmiCarouselWidget({
    super.key,
    required this.carouselItems,
    required this.height,
    required this.widthOfItem,
    required this.spacing,
    this.reverse = false,
    this.loop = false,
    this.tapToSelect = false,
    this.physics,
    this.scrollBehavior,
  });

  final List<Widget> carouselItems;
  final bool reverse;
  final bool loop;
  final double spacing;
  final bool tapToSelect;
  final ScrollPhysics? physics;
  final ScrollBehavior? scrollBehavior;
  final double height;
  final double widthOfItem;

  @override
  State<FmiCarouselWidget> createState() => _FmiCarouselWidgetState();
}

class _FmiCarouselWidgetState extends State<FmiCarouselWidget> {
  CustomCarouselScrollController controller = CustomCarouselScrollController();

  bool isLeftButtonVisible = false;
  bool isRightButtonVisible = true;
  int selectedItem = 0;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      setState(() {
        selectedItem = controller.selectedItem;
        isLeftButtonVisible = controller.selectedItem != 0;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int itemCountBefore = 0;

    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth = constraints.maxWidth;

      double padding = FMIThemeBase.basePadding7;

      double start = padding / maxWidth;
      double end = (maxWidth - padding) / maxWidth;

      int visibleItems =
          ((maxWidth + widget.spacing) / (widget.widthOfItem + widget.spacing))
              .floor();

      if (visibleItems == 0) {
        visibleItems++;
      }

      int numVisibleItemsAfter() {
        if (visibleItems >= widget.carouselItems.length) {
          if (widget.carouselItems.length <= 1) {
            return 0;
          } else {
            return widget.carouselItems.length - 1;
          }
        } else {
          return visibleItems;
        }
      }

      int totalItems = numVisibleItemsAfter() + 1;
      List<Widget> items = [Container()];

      _effectsBuilder(_, ratio, child) {
        return Transform.translate(
          offset: Offset(
              ratio * (widget.widthOfItem + widget.spacing) * (totalItems - .5),
              0),
          child: child,
        );
      }

      int result = (widget.carouselItems.length - numVisibleItemsAfter());

      if (widget.loop) {
        isRightButtonVisible = true;
        isLeftButtonVisible = true;
      } else if (widget.carouselItems.length <= visibleItems &&
          selectedItem == 0) {
        isRightButtonVisible = false;
        isLeftButtonVisible = false;
      } else {
        isRightButtonVisible = selectedItem < result;
      }

      return ClipRRect(
        child: Wrap(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [
                        isLeftButtonVisible
                            ? Colors.transparent
                            : Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withOpacity(FMIThemeBase.baseOpacity100),
                        Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(FMIThemeBase.baseOpacity100),
                        Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(FMIThemeBase.baseOpacity100),
                        isRightButtonVisible
                            ? Colors.transparent
                            : Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withOpacity(FMIThemeBase.baseOpacity100),
                      ],
                      stops: [0.0, start, end, 1.0],
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.dstIn,
                  child: SizedBox(
                    height: widget.height,
                    child: CustomCarousel(
                      scrollBehavior: widget.scrollBehavior,
                      reverse: widget.reverse,
                      scrollDirection: Axis.horizontal,
                      loop: widget.loop,
                      physics: widget.physics,
                      tapToSelect: widget.tapToSelect,
                      itemCountAfter: numVisibleItemsAfter(),
                      itemCountBefore: itemCountBefore,
                      alignment: Alignment.centerLeft,
                      controller: controller,
                      effectsBuilder: _effectsBuilder,
                      children: widget.carouselItems.isEmpty
                          ? items
                          : widget.carouselItems,
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Visibility(
                        visible: isLeftButtonVisible,
                        child: IconButton(
                          onPressed: () {
                            controller.previousItem();
                          },
                          icon: FaIcon(
                            FontAwesomeIcons.arrowLeft,
                            size: FMIThemeBase.baseIconXSmall,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          style: IconButton.styleFrom(
                            elevation: FMIThemeBase.baseElevationDouble3,
                            shadowColor: Theme.of(context).colorScheme.shadow,
                            backgroundColor: Theme.of(context)
                                .colorScheme
                                .fmiButtonOutlineEnabled,
                            shape: const CircleBorder(),
                            padding:
                                const EdgeInsets.all(FMIThemeBase.basePadding2),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: isRightButtonVisible,
                        child: IconButton(
                          onPressed: () {
                            controller.nextItem();
                          },
                          icon: FaIcon(
                            FontAwesomeIcons.arrowRight,
                            size: FMIThemeBase.baseIconXSmall,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          style: IconButton.styleFrom(
                            elevation: FMIThemeBase.baseElevationDouble3,
                            shadowColor: Theme.of(context).colorScheme.shadow,
                            backgroundColor: Theme.of(context)
                                .colorScheme
                                .fmiButtonOutlineEnabled,
                            shape: const CircleBorder(),
                            padding:
                                const EdgeInsets.all(FMIThemeBase.basePadding2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
