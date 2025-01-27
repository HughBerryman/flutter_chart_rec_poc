import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoPhotoAttachment extends StatefulWidget {
  const DemoPhotoAttachment({Key? key}) : super(key: key);

  @override
  State<DemoPhotoAttachment> createState() => _DemoPhotoAttachmentState();
}

class _DemoPhotoAttachmentState extends State<DemoPhotoAttachment> {
  bool _stretch = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Photo Attachment Widget'),
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
        PhotoAttachmentWidget(
          onAttachmentsChanged: (_) => debugPrint('Attachment Changed'),
          stretch: _stretch,
        ),
        const ComponentHeader(title: 'Photo Attachment Widget - With Download'),
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
        PhotoAttachmentWidget(
          onAttachmentsChanged: (_) => debugPrint('Attachment Changed'),
          stretch: _stretch,
          canDownload: true,
        ),
      ],
    );
  }
}
