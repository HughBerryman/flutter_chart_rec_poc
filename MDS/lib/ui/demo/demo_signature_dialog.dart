import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';
import 'package:signature/signature.dart';

class DemoSignatureDialog extends StatefulWidget {
  const DemoSignatureDialog({Key? key}) : super(key: key);

  @override
  State<DemoSignatureDialog> createState() => _DemoSignatureDialogState();
}

class _DemoSignatureDialogState extends State<DemoSignatureDialog> {
  FmiSignatureDialogResult? initValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Signature Dialog'),
        Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FilledButton(
                child: const Text("Launch Signature Dialog"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FmiSignatureDialog(
                              onSave: (result) {
                                setState(() {
                                  initValue = result;
                                });
                              },
                              showSaveAsSubmit: true,
                              isEditable: true,
                              initValue: initValue,
                              dialogOptions: FmiSignatureDialogOptions(
                                  title: "Sample Signature Dialog",
                                  collectComment: true,
                                  collectAttachment: true))));
                })),
        const ComponentHeader(title: 'Fmi Signature Dialog - With Download'),
        Padding(
            padding: const EdgeInsets.only(
                top: FMIThemeBase.basePaddingLarge,
                bottom: FMIThemeBase.basePaddingLarge),
            child: FilledButton(
                child: const Text("Launch Signature Dialog"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FmiSignatureDialog(
                              onSave: (result) {
                                setState(() {
                                  initValue = result;
                                });
                              },
                              showSaveAsSubmit: true,
                              isEditable: true,
                              initValue: initValue,
                              dialogOptions: FmiSignatureDialogOptions(
                                  title: "Sample Signature Dialog",
                                  collectComment: true,
                                  collectAttachment: true),
                              canDownload: true)));
                })),
      ],
    );
  }

  String getPointsText(Point point) =>
      "Offset: ${point.offset.toString()}, Pressure: ${point.pressure.toString()}, Type: ${point.type.name}";
}
