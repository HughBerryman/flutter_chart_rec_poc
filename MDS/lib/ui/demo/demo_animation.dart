import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoAnimation extends StatefulWidget {
  const DemoAnimation({
    Key? key,
  }) : super(key: key);

  @override
  State<DemoAnimation> createState() => _DemoAnimationState();
}

class _DemoAnimationState extends State<DemoAnimation> {
  bool isVisible = false;
  String direction = 'Going Down';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ComponentHeader(title: 'Sliding Visibility Widget'),
          Padding(
            padding: const EdgeInsets.all(FMIThemeBase.basePaddingXLarge),
            child: SlidingVisibilityWidget(
                child: PreferredSize(
                  preferredSize: const Size.fromHeight(
                      FMIThemeBase.baseContainerDimension100),
                  child: TextButton(
                      child: isVisible
                          ? const Text(
                              'Click to go down',
                            )
                          : const Text(
                              'Click to go up',
                            ),
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      }),
                ),
                visible: isVisible,
                slidingVisibilityDirection: SlidingVisibilityDirection.down),
          ),
        ],
      ),
    );
  }
}
