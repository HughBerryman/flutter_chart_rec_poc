import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:latlong2/latlong.dart';

class FmiMap extends StatefulWidget {
  LatLng initialPosition;
  double initialZoom;
  List<FmiMarker>? markers;
  BaseLayerType baseLayerType;
  Function(BuildContext, LatLng)? onTap;
  MapController? mapController;
  bool enableFloatingControls;
  Function(LatLng)? onPositionChanged;
  bool showCurrentPosition;

  FmiMap(
      {super.key,
      required this.initialPosition,
      this.initialZoom = 15.0,
      this.markers,
      required this.baseLayerType,
      this.onTap,
      this.mapController,
      this.enableFloatingControls = true,
      this.onPositionChanged,
      this.showCurrentPosition = true});

  @override
  State<FmiMap> createState() => _FmiMapState();

  void moveMap(
      {required double latitude, required double longitude, double zoom = 15}) {
    if (mapController != null) {
      mapController!.move(LatLng(latitude, longitude), zoom);
    }
  }
}

class _FmiMapState extends State<FmiMap> {
  final LocationService _locationService = GetIt.instance<LocationService>();
  Position? curLocation;
  late List<FmiMarker> fmiMarkers;
  late MapController _mapController;
  FmiMarker? _currentLocationMarker;

  @override
  void initState() {
    fmiMarkers = widget.markers != null ? List.from(widget.markers!) : [];

    if (widget.showCurrentPosition) {
      initializeCurrentPositionMarker();
    }

    _mapController = widget.mapController ?? MapController();

    super.initState();
  }

  @override
  void didUpdateWidget(FmiMap oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.markers != widget.markers) {
      fmiMarkers = widget.markers != null ? List.from(widget.markers!) : [];

      if (_currentLocationMarker != null) {
        fmiMarkers.insert(0, _currentLocationMarker!);
      }
    }
  }

  Future initializeCurrentPositionMarker() async {
    curLocation = await _locationService.determinePosition();

    if (curLocation != null) {
      _currentLocationMarker = FmiMarker(
        point: LatLng(curLocation!.latitude, curLocation!.longitude),
        id: "Self",
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        icon: FaIcon(
          FontAwesomeIcons.solidCircle,
          color: Theme.of(context).colorScheme.onPrimary,
          size: FMIThemeBase.baseIconMedium,
        ),
      );

      setState(() {
        fmiMarkers.insert(0, _currentLocationMarker!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlutterMap(
        options: MapOptions(
            initialCenter: widget.initialPosition,
            initialZoom: widget.initialZoom,
            onPositionChanged: widget.onPositionChanged != null
                ? (mapPosition, _) {
                    if (mapPosition.center != null) {
                      widget.onPositionChanged!(mapPosition.center!);
                    }
                  }
                : null,
            onTap: (TapPosition position, LatLng latLng) {
              if (widget.onTap != null) {
                widget.onTap!(context, latLng);
              }
            }),
        mapController: _mapController,
        nonRotatedChildren: [
          if (widget.enableFloatingControls) ...[
            MapZoomButtons(),
          ]
        ],
        children: [
          TileLayer(
            urlTemplate:
                'https://{s}.google.com/vt/lyrs=${widget.baseLayerType.getString()}&x={x}&y={y}&z={z}',
            subdomains: const ['mt0', 'mt1', 'mt2', 'mt3'],
          ),
          MarkerLayer(markers: fmiMarkers),
        ],
      ),
    );
  }
}
