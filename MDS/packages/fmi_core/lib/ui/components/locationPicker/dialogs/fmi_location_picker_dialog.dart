import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'package:stacked/stacked.dart';

class FmiLocationPickerDialog extends BaseFmiDialog<
    FmiLocationPickerDialogResult, FmiLocationPickerDialogOptions> {
  const FmiLocationPickerDialog({
    Key? key,
    required Function(FmiLocationPickerDialogResult dialogResult) onSave,
    required bool isEditable,
    required FmiLocationPickerDialogResult? initValue,
    required FmiLocationPickerDialogOptions? dialogOptions,
  }) : super(
            key: key,
            onSave: onSave,
            isEditable: isEditable,
            initValue: initValue,
            dialogOptions: dialogOptions);

  @override
  State<FmiLocationPickerDialog> createState() =>
      _FmiLocationPickerDialogState();
}

class _FmiLocationPickerDialogState extends State<FmiLocationPickerDialog> {
  late LatLng _location;

  @override
  void initState() {
    _location = widget.initValue?.location ?? const LatLng(0, 0);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OfflineDetectableViewModel>.reactive(
        viewModelBuilder: () => OfflineDetectableViewModel(),
        onViewModelReady: (viewModel) => viewModel.initialize(),
        builder: (context, viewModel, child) {
          return Scaffold(
              appBar: ClosableAppBar(
                title: widget.dialogOptions != null &&
                        widget.dialogOptions!.title != null
                    ? widget.dialogOptions!.title!
                    : widget.isEditable
                        ? context.coreLocalize.modifyLocation
                        : context.coreLocalize.viewLocation,
                onClose: () {
                  Navigator.pop(context);
                },
                onSave:
                    widget.isEditable && viewModel.hasInternet ? _onSave : null,
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (viewModel.hasInternet) ...[
                    FmiMap(
                      showCurrentPosition: widget.isEditable,
                      markers: getMarkers(context),
                      initialPosition: _location,
                      baseLayerType: BaseLayerType.satellite,
                      onPositionChanged: (position) {
                        if (widget.isEditable) {
                          setState(() {
                            _location = position;
                          });
                        }
                      },
                    ),
                  ] else ...[
                    Center(
                      child: OfflineView(
                          message: widget.isEditable
                              ? context
                                  .coreLocalize.offlineUpdateLocationMessage
                              : context
                                  .coreLocalize.offlineViewLocationMessage),
                    )
                  ]
                ],
              ));
        });
  }

  List<FmiMarker> getMarkers(BuildContext context) {
    List<FmiMarker> markers = [];

    markers.add(FmiMarker(
      point: _location,
      id: "1",
      backgroundColor: Colors.transparent,
      icon: FaIcon(FontAwesomeIcons.solidLocationDot,
          color: Theme.of(context).colorScheme.fmiAdverseTask,
          size: FMIThemeBase.baseIcon48),
    ));

    return markers;
  }

  _onSave() {
    widget.onSave(FmiLocationPickerDialogResult(location: _location));
    Navigator.pop(context);
  }
}
