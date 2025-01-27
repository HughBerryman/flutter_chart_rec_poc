import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:latlong2/latlong.dart';

class MapZoomButtons extends StatelessWidget {
  final double minZoom;
  final double maxZoom;
  final Alignment alignment;

  static const _fitBoundsPadding = EdgeInsets.all(FMIThemeBase.basePadding6);

  MapZoomButtons({
    super.key,
    this.minZoom = 1,
    this.maxZoom = 18,
    this.alignment = Alignment.topRight,
  });

  final LocationService _locationService = GetIt.instance<LocationService>();

  @override
  Widget build(BuildContext context) {
    final map = MapCamera.of(context);
    return Align(
      alignment: alignment,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: FMIThemeBase.basePaddingMedium,
              right: FMIThemeBase.basePaddingLarge,
            ),
            child: FloatingActionButton(
              backgroundColor: Theme
                  .of(context)
                  .colorScheme
                  .surface,
              hoverColor: Theme.of(context).highlightColor,
              onPressed: () async {
                var location = await _locationService.determinePosition();

                if(location != null) {
                  MapController.of(context).move(
                      LatLng(location.latitude, location.longitude),
                      MapController.of(context).camera.zoom);
                }
              },
              child: Icon(FontAwesomeIcons.locationCrosshairs,
                color: Theme
                    .of(context)
                    .colorScheme
                    .onSurface,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: FMIThemeBase.basePaddingMedium,
              right: FMIThemeBase.basePaddingLarge,
            ),
            child: ToggleButtons(
              constraints: BoxConstraints.tight(const Size(
                FMIThemeBase.baseContainerDimension50,
                FMIThemeBase.baseContainerDimension50,
              )),
              children: [
                Ink(
                  color: Theme.of(context).colorScheme.surface,
                  width: FMIThemeBase.baseContainerDimension50,
                  height: FMIThemeBase.baseContainerDimension50,
                  child: InkWell(
                    child: Icon(FontAwesomeIcons.plus,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    hoverColor: Theme.of(context).highlightColor,
                    onTap: () {
                      final paddedMapCamera = CameraFit.bounds(
                        bounds: map.visibleBounds,
                        padding: _fitBoundsPadding,
                      ).fit(map);

                      var zoom = paddedMapCamera.zoom + 1;
                      if (zoom > maxZoom) {
                        zoom = maxZoom;
                      }

                      MapController.of(context).move(paddedMapCamera.center, zoom);
                    },
                  ),
                ),
                Ink(
                  color: Theme.of(context).colorScheme.surface,
                  width: FMIThemeBase.baseContainerDimension50,
                  height: FMIThemeBase.baseContainerDimension50,
                  child: InkWell(
                    child: Icon(FontAwesomeIcons.minus,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    hoverColor: Theme.of(context).highlightColor,
                    onTap: () {
                      final paddedMapCamera = CameraFit.bounds(
                        bounds: map.visibleBounds,
                        padding: _fitBoundsPadding,
                      ).fit(map);

                      var zoom = paddedMapCamera.zoom - 1;
                      if (zoom < minZoom) {
                        zoom = minZoom;
                      }

                      MapController.of(context).move(paddedMapCamera.center, zoom);
                    },
                  ),
                ),
              ],
              borderRadius: BorderRadius.circular(
                  FMIThemeBase.baseBorderRadiusLarge),
              isSelected: const [false, false],
              direction: Axis.vertical,
            ),
          ),
        ],
      ),
    );
  }
}