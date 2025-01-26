import 'package:flutter/widgets.dart';
import 'package:fmi_core/fmi_core.dart';

import 'component_header.dart';

class DemoSignatureViewer extends StatelessWidget {
  const DemoSignatureViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Fmi Signature Viewer'),
        Padding(
          padding: const EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
          child: FmiSignatureViewer(
            url: "https://images.services-dev.fmi.com/publishedimages/0060064147.jpg",
            signerName: "Bob Jancoski",
            signedDate: DateTime.now(),
          ),
        )
      ],
    );
  }
}
