import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({
    Key? key,
    required this.cameras,
    required this.onCapture,
    required this.imageNumber,
  }) : super(key: key);

  final List<CameraDescription> cameras;
  final Function(Attachment picture) onCapture;
  final int imageNumber;

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _cameraController;
  bool _isRearCameraSelected = true;

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (widget.cameras.isNotEmpty) {
      initCamera(widget.cameras[0]);
    } else {
      debugPrint('No available cameras');
      showCameraErrorDialog(
        context: context,
        popContext: true,
      );
    }
  }

  Future takePicture() async {
    if (!_cameraController.value.isInitialized ||
        _cameraController.value.isTakingPicture) {
      return null;
    }

    try {
      XFile picture = await _cameraController.takePicture();

      final name = "FMI_image_${widget.imageNumber}.jpg";
      final bytes = await picture.readAsBytes();
      final size = bytes.lengthInBytes;

      final attachment = Attachment(
        name: name,
        bytes: bytes,
        size: size,
      );

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => getConfirmationScreen(attachment, context),
        ),
      );
    } on CameraException catch (e) {
      debugPrint('Error occured while taking picture: $e');
      return null;
    }
  }

  Widget getConfirmationScreen(Attachment attachment, BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      FmiAttachmentDialog(attachment: attachment),
      Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(FMIThemeBase.basePadding12),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CameraButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: FontAwesomeIcons.camera),
              CameraButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    widget.onCapture(attachment);
                  },
                  icon: FontAwesomeIcons.check)
            ]),
          )),
    ]);
  }

  Future initCamera(CameraDescription cameraDescription) async {
    _cameraController =
        CameraController(cameraDescription, ResolutionPreset.high);
    try {
      await _cameraController.initialize().then((_) {
        if (!mounted) return;
        setState(() {});
      });
    } on CameraException catch (e) {
      debugPrint('Error occured while initalizing the camera: $e');
      showCameraErrorDialog(
        context: context,
        popContext: true,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        (_cameraController.value.isInitialized)
            ? _cameraController.buildPreview()
            : Container(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                child: const Center(child: CircularProgressIndicator())),
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePadding12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CameraButton(
                      onPressed: () {
                        setState(() =>
                            _isRearCameraSelected = !_isRearCameraSelected);
                        if ((widget.cameras.length) > 1) {
                          initCamera(
                              widget.cameras[_isRearCameraSelected ? 0 : 1]);
                        }
                      },
                      icon: FontAwesomeIcons.solidRotate),
                  CameraButton(
                      onPressed: takePicture, icon: FontAwesomeIcons.camera),
                  CameraButton(
                      onPressed: () {
                        setState(() {
                          try {
                            _cameraController.setFlashMode(
                                _cameraController.value.flashMode ==
                                        FlashMode.off
                                    ? FlashMode.always
                                    : FlashMode.off);
                          } on CameraException catch (e) {
                            debugPrint("Cannot change flash mode: $e");
                          }
                        });
                      },
                      icon: _cameraController.value.flashMode == FlashMode.off
                          ? FontAwesomeIcons.solidBoltSlash
                          : FontAwesomeIcons.solidBolt),
                  CameraButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: FontAwesomeIcons.xmark),
                ],
              ),
            )),
      ]),
    ));
  }
}

class CameraButton extends StatelessWidget {
  const CameraButton({super.key, required this.onPressed, required this.icon});

  final Function()? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final padding = context.isXSmall || context.isSmall
        ? FMIThemeBase.basePaddingLarge
        : FMIThemeBase.basePaddingXLarge;

    return Padding(
      padding: EdgeInsets.only(left: padding, right: padding),
      child: FloatingActionButton(
        heroTag: null,
        shape: const CircleBorder(),
        backgroundColor:
            Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceAltSurface,
        foregroundColor:
            Theme.of(context).colorScheme.fmiBaseThemeAltSurfaceOnAltSurface,
        onPressed: onPressed,
        child: FaIcon(icon),
      ),
    );
  }
}

void showCameraErrorDialog(
    {required BuildContext context, bool popContext = false}) {
  String title = context.coreLocalize.cameraErrorTitle;

  String message = context.coreLocalize.cameraError;

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext innerContext) {
      return WillPopScope(
          onWillPop: () async => false,
          child: ConfirmationDialog(
            title: title,
            message: message,
            confirmButtonTitle: (context.coreLocalize.okay),
            iconData: FontAwesomeIcons.camera,
            callback: popContext
                ? () {
                    Navigator.pop(innerContext);
                    Navigator.pop(context);
                  }
                : null,
          ));
    },
  );
}
