import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

///  If you want to use this class in Web platform, it is REQUIRED to add these references below in your /web/index.html file.
///  <script src="https://cdn.jsdelivr.net/npm/jsqr@1.4.0/dist/jsQR.min.js"></script>

/// if you want to use this class in IOS platform, it is REQUIRED to add these configurations below in your /ios/Runner/Info.plist file.
/// <key>NSCameraUsageDescription</key>
/// <string>This app requires access to the camera</string>

///  Reference : https://pub.dev/packages/mobile_scanner

class FmiQRScannerDialog extends StatelessWidget {
  const FmiQRScannerDialog({
    Key? key,
    required this.onScan,
  }) : super(key: key);

  final Function(String result) onScan;

  @override
  Widget build(BuildContext context) {
    MobileScannerController cameraController = MobileScannerController();
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: FMIThemeBase.basePaddingLarge),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(right: FMIThemeBase.basePaddingXLarge),
              child: FloatingActionButton(
                heroTag: null,
                shape: const CircleBorder(),
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .fmiBaseThemeAltSurfaceAltSurface,
                foregroundColor: Theme.of(context)
                    .colorScheme
                    .fmiBaseThemeAltSurfaceOnAltSurface,
                onPressed: () => cameraController.switchCamera(),
                child: ValueListenableBuilder(
                  valueListenable: cameraController.cameraFacingState,
                  builder: (context, state, child) {
                    return const FaIcon(FontAwesomeIcons.solidRotate);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: FMIThemeBase.basePaddingXLarge,
                  right: FMIThemeBase.basePaddingXLarge),
              child: FloatingActionButton(
                heroTag: null,
                shape: const CircleBorder(),
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .fmiBaseThemeAltSurfaceAltSurface,
                foregroundColor: Theme.of(context)
                    .colorScheme
                    .fmiBaseThemeAltSurfaceOnAltSurface,
                onPressed: () {
                  cameraController.dispose();
                  Navigator.pop(context);
                },
                child: const FaIcon(FontAwesomeIcons.xmark),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: FMIThemeBase.basePaddingXLarge),
              child: FloatingActionButton(
                heroTag: null,
                shape: const CircleBorder(),
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .fmiBaseThemeAltSurfaceAltSurface,
                foregroundColor: Theme.of(context)
                    .colorScheme
                    .fmiBaseThemeAltSurfaceOnAltSurface,
                onPressed: () => cameraController.toggleTorch(),
                child: ValueListenableBuilder(
                  valueListenable: cameraController.torchState,
                  builder: (context, state, child) {
                    switch (state) {
                      case TorchState.off:
                        return const FaIcon(FontAwesomeIcons.solidBoltSlash);
                      case TorchState.on:
                        return const FaIcon(FontAwesomeIcons.solidBolt);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: MobileScanner(
        controller: cameraController,
        onDetect: (capture) {
          if (capture.barcodes.isNotEmpty &&
              capture.barcodes.first.rawValue != null) {
            onScan(capture.barcodes.first.rawValue!);
            cameraController.dispose();
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
