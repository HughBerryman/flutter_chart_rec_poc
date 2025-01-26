import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:collection/collection.dart';

///  If you want to use this class in Web platform, it is REQUIRED to add these references below in your /web/index.html file.
///  <script src="https://cdn.jsdelivr.net/npm/jsqr@1.4.0/dist/jsQR.min.js"></script>

/// if you want to use this class in IOS platform, it is REQUIRED to add these configurations below in your /ios/Runner/Info.plist file.
/// <key>NSCameraUsageDescription</key>
/// <string>This app requires access to the camera</string>

///  Reference : https://pub.dev/packages/mobile_scanner

class FmiConnectedAssetLookupWidget extends StatefulWidget {
  const FmiConnectedAssetLookupWidget(
      {Key? key,
      this.fieldTitle,
      this.errorText,
      this.initialValue,
      this.enabled = true,
      this.onChanged,
      this.searchTerm})
      : super(key: key);

  final String? fieldTitle;
  final String? errorText;
  final bool enabled;
  final Function(Asset? asset)? onChanged;
  final Asset? initialValue;
  final String? searchTerm;

  @override
  State<FmiConnectedAssetLookupWidget> createState() =>
      _FmiConnectedAssetLookupWidgetState();
}

class _FmiConnectedAssetLookupWidgetState
    extends State<FmiConnectedAssetLookupWidget> {
  final TextEditingController _textEditingController = TextEditingController();
  static final ConnectedAssetService _connectedAssetService =
      GetIt.instance.get<ConnectedAssetService>();
  Asset? _selectedAsset;
  String? _errorText;
  late bool _enabled;
  late bool _isError;

  @override
  void initState() {
    setState(() {
      _isError = false;
      _selectedAsset = widget.initialValue;
      _enabled = widget.enabled;

      // Populate connected asset data by query string
      populateAssetByQueryParameters();

      if (_selectedAsset?.equipmentNo != null) {
        _enabled = false;
      }

      _textEditingController.text = _selectedAsset?.equipmentName ?? "";
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _errorText = widget.errorText;

    if (_isError) {
      _errorText = context.coreLocalize.scanNotValid;
    }

    return MouseRegion(
      cursor: _enabled
          ? SystemMouseCursors.click
          : SystemMouseCursors.forbidden,
      child: IgnorePointer(
        ignoring: !_enabled,
        child: Theme(
          data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
          child: TextField(
            onChanged: (String value) {
              _selectedAsset = null;

              if (value.isNotEmpty) {
                _selectedAsset = Asset(equipmentName: value);
              }

              setState(() {
                _isError = false;
              });

              if (widget.onChanged != null) {
                widget.onChanged!(_selectedAsset);
              }
            },
            controller: _textEditingController,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.apply(color: Theme.of(context).colorScheme.onSurface),
            decoration: InputDecoration(
              enabled: _enabled,
              label:
                  Text(widget.fieldTitle ?? context.coreLocalize.equipmentNumber),
              errorText: _errorText,
              suffixIcon: IconButton(
                hoverColor: Colors.transparent,
                onPressed: _enabled ? onPressed : null,
                icon: FaIcon(FontAwesomeIcons.solidBarcodeRead,
                    size: Theme.of(context).textTheme.bodyLarge?.fontSize,
                    color: _enabled
                        ? Theme.of(context)
                            .colorScheme
                            .fmiBaseThemeAltSurfaceOnAltSurface
                        : null),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onPressed() {
    if (!_enabled) {
      return;
    }

    launchDialog();
  }

  launchDialog() {
    var dialog = FmiQRScannerDialog(onScan: saveDialogResult);
    Navigator.push(context, MaterialPageRoute(builder: (context) => dialog));
  }

  void saveDialogResult(String dialogResult) async {
    if (!_enabled) {
      return;
    }

    bool errorAsset = true;
    bool enabled = true;
    _selectedAsset = null;
    _textEditingController.text = "";

    if (dialogResult.isNotEmpty) {
      List<String> rawLines = dialogResult.split('/');
      if (rawLines.isNotEmpty) {
        String assetName = rawLines[rawLines.length - 1];
        var asset = await _connectedAssetService.getAssetByAssetName(assetName);

        if (asset != null) {
          if (asset.equipmentNo != null &&
              asset.equipmentNo!.isNotEmpty &&
              asset.equipmentName != null &&
              asset.equipmentName!.isNotEmpty) {
            _textEditingController.text = asset.equipmentName!;
            enabled = false;
            _selectedAsset = asset;
            errorAsset = false;
          }
        }
      }
    }

    setState(() {
      _isError = errorAsset;
      _enabled = enabled;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(_selectedAsset);
    }
  }

  void populateAssetByQueryParameters() async {
    bool enabled = true;
    bool errorAsset = true;
    if (widget.initialValue == null &&
        (widget.searchTerm != null &&
            widget.searchTerm!.isNotEmpty)) {
      _selectedAsset = null;
      _textEditingController.text = "";

      var assetData = await _connectedAssetService.getAssets();
      var assetValue = assetData.firstWhereOrNull((e) => e.equipmentNo == widget.searchTerm! || e.assetID == widget.searchTerm!);
 
      if (assetValue != null) {
        if (assetValue.equipmentNo != null &&
            assetValue.equipmentNo!.isNotEmpty &&
            assetValue.equipmentName != null &&
            assetValue.equipmentName!.isNotEmpty) {
          _textEditingController.text = assetValue.equipmentName!;
          enabled = false;
          _selectedAsset = assetValue;
          errorAsset = false;
        }
      }

      setState(() {
        _isError = errorAsset;
        _enabled = enabled;
      });

      // Change textbox when _selectedAsset have data
      if (_selectedAsset != null) {
        widget.onChanged!(_selectedAsset);
      }
    }
  }
}
