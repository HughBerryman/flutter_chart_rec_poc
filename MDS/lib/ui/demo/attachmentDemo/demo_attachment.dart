import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoAttachment extends StatefulWidget {
  const DemoAttachment({super.key});

  @override
  State<DemoAttachment> createState() => _DemoAttachmentState();
}

class _DemoAttachmentState extends State<DemoAttachment> {
  bool _stretch = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Attachment Widget'),
        Padding(
          padding: const EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Checkbox(
                value: _stretch,
                onChanged: (bool? value) {
                  setState(() {
                    _stretch = value!;
                  });
                },
              ),
              const Text("Stretch")
            ],
          ),
        ),
        FmiAttachmentWidget(
          onAttachmentsChanged: (_) => debugPrint('Attachment Changed'),
          stretch: _stretch,
        ),
        const ComponentHeader(title: 'Fmi Attachment Widget - With Download'),
        Padding(
          padding: const EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Checkbox(
                value: _stretch,
                onChanged: (bool? value) {
                  setState(() {
                    _stretch = value!;
                  });
                },
              ),
              const Text("Stretch")
            ],
          ),
        ),
        FmiAttachmentWidget(
          onAttachmentsChanged: (_) => debugPrint('Attachment Changed'),
          stretch: _stretch,
          canDownload: true,
        ),
      ],
    );
  }
}
