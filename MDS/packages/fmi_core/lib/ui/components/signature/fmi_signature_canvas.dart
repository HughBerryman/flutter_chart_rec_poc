import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signature/signature.dart';

class FmiSignatureCanvas extends StatefulWidget {
  const FmiSignatureCanvas(
      {Key? key,
      required this.context,
      this.canvasHeight,
      this.onSignatureChanged,
      this.enabled = true,
      this.initialPoints})
      : super(key: key);

  final BuildContext context;
  final double? canvasHeight;
  final Function(List<Point>? points)? onSignatureChanged;
  final bool enabled;
  final List<Point>? initialPoints;

  @override
  State<FmiSignatureCanvas> createState() => _FmiSignatureCanvasState();
}

class _FmiSignatureCanvasState extends State<FmiSignatureCanvas> {
  bool isSigning = false;
  late SignatureController _controller;
  bool mustClear = false;

  @override
  void initState() {
    if (widget.initialPoints != null) {
      mustClear = true;
    }

    _controller = SignatureController(
        points: widget.initialPoints,
        penColor: Theme.of(widget.context).colorScheme.onSecondaryContainer,
        exportBackgroundColor: Colors.transparent,
        exportPenColor: Colors.black,
        onDrawStart: () {
          setState(() {
            isSigning = true;
          });
        },
        onDrawEnd: () {
          setState(() {
            isSigning = false;
          });

          if (widget.onSignatureChanged != null) {
            widget.onSignatureChanged!(_controller.points);
          }
        });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IgnorePointer(
          ignoring: !widget.enabled || mustClear,
          child: Stack(
            children: [
              Signature(
                height: widget.canvasHeight,
                controller: _controller,
                backgroundColor: widget.enabled
                    ? Theme.of(context).colorScheme.surface
                    : Theme.of(context).colorScheme.secondaryContainer,
              ),
              if (_controller.points.isEmpty && widget.enabled && !isSigning)
                Positioned.fill(
                    child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: IgnorePointer(
                            child: Center(
                                child: Text(
                          context.coreLocalize.signHere,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .fmiBaseThemeAltSurfaceAltSurface),
                        )))))
            ],
          ),
        ),
        if (widget.enabled) ...[
          Padding(
            padding: const EdgeInsets.only(top: FMIThemeBase.baseGapLarge),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  icon: const FaIcon(
                    FontAwesomeIcons.xmark,
                  ),
                  label: Text(context.coreLocalize.clear),
                  onPressed: () {
                    setState(() {
                      mustClear = false;
                      _controller.clear();
                    });

                    if (widget.onSignatureChanged != null) {
                      widget.onSignatureChanged!(_controller.points);
                    }
                  },
                ),
              ],
            ),
          )
        ]
      ],
    );
  }
}
