import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class SlidingVisibilityWidget extends StatefulWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => child.preferredSize;

  const SlidingVisibilityWidget(
      {Key? key,
      required this.child,
      required this.visible,
      required this.slidingVisibilityDirection})
      : super(key: key);

  final PreferredSizeWidget child;
  final bool visible;
  final SlidingVisibilityDirection slidingVisibilityDirection;

  @override
  State<SlidingVisibilityWidget> createState() =>
      _SlidingVisibilityWidgetState();
}

class _SlidingVisibilityWidgetState extends State<SlidingVisibilityWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  Widget build(BuildContext context) {
    Offset offset =
        widget.slidingVisibilityDirection == SlidingVisibilityDirection.up
            ? const Offset(0, -1)
            : const Offset(0, 1);
    widget.visible ? controller.reverse() : controller.forward();
    return SlideTransition(
      position: Tween<Offset>(begin: Offset.zero, end: offset).animate(
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn),
      ),
      child: widget.child,
    );
  }
}
