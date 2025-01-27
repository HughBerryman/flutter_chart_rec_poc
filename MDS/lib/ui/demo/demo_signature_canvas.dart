import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';
import 'package:signature/signature.dart';

class DemoSignatureCanvas extends StatefulWidget {
  const DemoSignatureCanvas({Key? key}) : super(key: key);

  @override
  State<DemoSignatureCanvas> createState() => _DemoSignatureCanvasState();
}

class _DemoSignatureCanvasState extends State<DemoSignatureCanvas> {
  bool isSelected = false;
  SvgPicture? svg;
  Uint8List? png;
  List<Point>? points;
  bool enabled = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Signature Canvas'),
        Padding(
          padding: const EdgeInsets.only(
              top: FMIThemeBase.basePaddingLarge,
              bottom: FMIThemeBase.basePaddingLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: enabled,
                      onChanged: (bool? value) {
                        setState(() {
                          enabled = value!;
                        });
                      },
                    ),
                    const Text("Enabled")
                  ],
                ),
              ),
              FmiSignatureCanvas(
                enabled: enabled,
                context: context,
                canvasHeight: 300,
                onSignatureChanged: (updatedPoints) async {
                  png = await SignatureHelper.getPng(updatedPoints);

                  setState(() {
                    points = points;
                  });
                },
              ),
              if (png != null) ...[
                const Padding(
                  padding: EdgeInsets.only(
                      top: FMIThemeBase.basePaddingLarge,
                      bottom: FMIThemeBase.basePaddingLarge),
                  child: ComponentSubheader(title: "PNG Output"),
                ),
                Image.memory(png!)
              ],
              if (points != null && points!.isNotEmpty) ...[
                const Padding(
                  padding: EdgeInsets.only(
                      top: FMIThemeBase.basePaddingLarge,
                      bottom: FMIThemeBase.basePaddingLarge),
                  child: ComponentSubheader(title: "Points Output"),
                ),
                ElevatedButton(
                    child: const Text("Show Points"),
                    onPressed: () => showDialog(
                        context: context,
                        builder: (_) => ConfirmationDialog(
                              title: "Signature Points",
                              message: points!
                                  .map((point) => getPointsText(point))
                                  .toList()
                                  .join("\n"),
                            )))
              ]
            ],
          ),
        ),
      ],
    );
  }

  String getPointsText(Point point) =>
      "Offset: ${point.offset.toString()}, Pressure: ${point.pressure.toString()}, Type: ${point.type.name}";
}
