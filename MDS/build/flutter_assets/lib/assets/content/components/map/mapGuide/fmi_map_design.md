### Fmi Map

##### Usage

Displays a Map View in the specified location. Markers can be added with callback events to enhance the user experience.

##### Parameters

* initialPosition - LatLng, required,
* initialZoom - double, optional (default = 15.0)
* markers - List<FmiMarker>, optional
* baseLayerType - BaseLayerType, required
* onTap - Function(BuildContext, LatLng), optional
* mapController - MapController, optional
* enableFloatingControls - bool (default = true)
* onPositionChanged - Function(LatLng), optional
* showCurrentPosition - bool (default = true)

##### Models
 
FmiMarker
* id - String, required
* backgroundColor - Color, required
* icon - FaIcon, required
* selectedBackgroundColor - Color, optional
* selectedIcon - FaIcon, optional
* onTap - Function(BuildContext, String, bool), optional
* isSelected - bool, optional (default = false)

MapZoomButtons
* minZoom - double, optional (default = 1)
* maxZoom - double, optional (default = 18)
* alignment - Alignment, optional (default = Alignment.topRight)

**Enums**

BaseLayerType
* satellite
* street
* terrain

`  `