import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong2/latlong.dart';

class DemoMap extends StatelessWidget {
  const DemoMap({super.key});

  List<FmiMarker> getMarkers(BuildContext context) {
    List<FmiMarker> markers = [];

    markers.add(FmiMarker(
      point: const LatLng(34.595045, -113.227733),
      id: "1",
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .fmiAdverseTaskContainer,
      icon: FaIcon(FontAwesomeIcons.solidTriangleExclamation,
          color: Theme
              .of(context)
              .colorScheme
              .fmiAdverseTask,
          size: FMIThemeBase.baseIconMedium
      ),
      selectedIcon: FaIcon(FontAwesomeIcons.check,
          color: Theme
              .of(context)
              .colorScheme
              .onPrimary,
          size: FMIThemeBase.baseIconMedium
      ),
      onTap: onMarkerSelect,
    ));

    markers.add(FmiMarker(
      point: const LatLng(34.586787, -113.212829),
      id: "2",
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .fmiNonAdverseTaskContainer,
      icon: FaIcon(FontAwesomeIcons.solidWrench,
          color: Theme
              .of(context)
              .colorScheme
              .fmiNonAdverseTask,
          size: FMIThemeBase.baseIconMedium
      ),
      selectedBackgroundColor: Theme
          .of(context)
          .colorScheme
          .fmiNonAdverseTaskContainer,
      selectedIcon: FaIcon(FontAwesomeIcons.check,
        color: Theme
            .of(context)
            .colorScheme
            .onPrimary,
      ),
      onTap: onMarkerSelect,
    ));

    return markers;
  }

  void onMarkerSelect(BuildContext context, String id, bool isSelected) {
    showDialogAlert(context, "Marker $id Selected? $isSelected");
  }

  void onMapClick(BuildContext context, LatLng latLng) {
    showDialogAlert(context, "Map Clicked: ${latLng.latitude}, ${latLng.longitude}");
  }

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 650,
        child: Column(
          children: [
            FmiMap(initialPosition: const LatLng(34.586972, -113.218915),
              markers: getMarkers(context), baseLayerType: BaseLayerType.satellite,
              onTap: onMapClick,
            ),
          ],
        ),
      );
  }

  Future<dynamic> showDialogAlert(BuildContext context, String title) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
            title: Text(title),
            content: const Text('Click the OK button to close'),
            actions: [
              TextButton(
                child: const Text("OK"),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                },
              )
            ]));
  }
}