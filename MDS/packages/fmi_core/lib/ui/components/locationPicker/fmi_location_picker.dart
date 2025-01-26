import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'package:stacked/stacked.dart';

class FmiLocationPicker extends StatefulWidget {
  const FmiLocationPicker(
      {Key? key,
      this.mapInitialLocation,
      this.initialLocation,
      this.enabled = true,
      this.onLocationChanged,
      this.fieldTitle,
      this.errorText})
      : super(key: key);

  @override
  State<FmiLocationPicker> createState() => _FmiLocationPickerState();

  /// Should initialLocation not be provided, the mapInitialLocation will
  /// be used by dialog to choose an initial location when opening
  /// location picker dialog.
  final LatLng? mapInitialLocation;
  final LatLng? initialLocation;
  final bool enabled;
  final Function(LatLng)? onLocationChanged;
  final String? fieldTitle;
  final String? errorText;
}

class _FmiLocationPickerState extends State<FmiLocationPicker> {
  final TextEditingController _textEditingController = TextEditingController();
  LatLng? _location;

  @override
  void initState() {
    setState(() {
      _location = widget.initialLocation;
      _setText();
    });

    super.initState();
  }

  void _setText() {
    if (_location != null) {
      _textEditingController.text =
          "${_location!.latitude.toString()},${_location!.longitude.toString()}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OfflineDetectableViewModel>.reactive(
        viewModelBuilder: () => OfflineDetectableViewModel(),
        onViewModelReady: (viewModel) => viewModel.initialize(),
        builder: (context, viewModel, child) {
          return IgnorePointer(
            ignoring: !widget.enabled && _location == null,
            child: Stack(
              children: [
                Theme(
                  data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
                  child: TextField(
                    controller: _textEditingController,
                    style: Theme.of(context).textTheme.bodyLarge?.apply(
                        color: widget.enabled
                            ? Theme.of(context).colorScheme.onSurface
                            : Theme.of(context).disabledColor),
                    decoration: InputDecoration(
                      enabled: widget.enabled,
                      label: Text(
                          widget.fieldTitle ?? context.coreLocalize.location),
                      errorText: widget.errorText,
                      suffixIcon: const Icon(
                          FontAwesomeIcons.solidLocationCrosshairs,
                          size: FMIThemeBase.baseIcon20),
                    ),
                  ),
                ),
                Positioned.fill(
                    child: InkWell(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(
                                FMIThemeBase.baseBorderRadiusSmall),
                            topRight: Radius.circular(
                                FMIThemeBase.baseBorderRadiusSmall)),
                        onTap: !widget.enabled && _location == null
                            ? null
                            : () => _openLocationPickerDialog(
                                viewModel.hasInternet),
                        child: Container(
                          color: Colors.transparent,
                        ))),
              ],
            ),
          );
        });
  }

  void _openLocationPickerDialog(bool hasInternet) {
    LatLng? initialLocation = _location ?? widget.mapInitialLocation;

    if (hasInternet) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FmiLocationPickerDialog(
                  onSave: (result) {
                    setState(() {
                      _location = result.location;
                      _setText();
                    });

                    if (widget.onLocationChanged != null) {
                      widget.onLocationChanged!(_location!);
                    }
                  },
                  isEditable: widget.enabled,
                  initValue: initialLocation != null
                      ? FmiLocationPickerDialogResult(location: initialLocation)
                      : null,
                  dialogOptions: FmiLocationPickerDialogOptions(
                      title: widget.fieldTitle?.toTitleCase()))));
    } else {
      showDialog(
          context: context,
          builder: (_) => ConfirmationDialog(
                iconData: FontAwesomeIcons.solidCloudXmark,
                title: context.coreLocalize.youAreOffline,
                message: widget.enabled
                    ? context.coreLocalize.offlineUpdateLocationMessage
                    : context.coreLocalize.offlineViewLocationMessage,
              ));
    }
  }
}
