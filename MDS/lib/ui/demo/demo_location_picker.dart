import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

import 'component_header.dart';
import 'component_subheader.dart';
import 'package:latlong2/latlong.dart';

class DemoLocationPicker extends StatelessWidget {
  const DemoLocationPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentHeader(title: 'Location Picker'),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentSubheader(
              title: 'Location Picker - Editable - No Initial Location'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.baseGapLarge),
          child: FmiLocationPicker(
            mapInitialLocation: const LatLng(34.586972, -113.218915),
            enabled: true,
            onLocationChanged: _onLocationChanged,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentSubheader(
              title: 'Location Picker - Editable - Initial Location'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.baseGapLarge),
          child: FmiLocationPicker(
              initialLocation: const LatLng(34.586972, -113.218915),
              enabled: true,
              onLocationChanged: _onLocationChanged),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentSubheader(title: 'Location Picker - Custom Title'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.baseGapLarge),
          child: FmiLocationPicker(
            initialLocation: const LatLng(34.586972, -113.218915),
            enabled: true,
            onLocationChanged: _onLocationChanged,
            fieldTitle: "Custom Title Location Picker",
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentSubheader(title: 'Location Picker - Error Text'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.baseGapLarge),
          child: FmiLocationPicker(
            initialLocation: const LatLng(34.586972, -113.218915),
            enabled: true,
            onLocationChanged: _onLocationChanged,
            errorText: "Required",
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(title: 'Location Picker - Not Editable'),
        ),
        const FmiLocationPicker(
            initialLocation: LatLng(34.586972, -113.218915), enabled: false),
      ],
    );
  }

  _onLocationChanged(LatLng location) {
    debugPrint(
        "Location updated to ${location.latitude.toString()},${location.longitude.toString()}");
  }
}
