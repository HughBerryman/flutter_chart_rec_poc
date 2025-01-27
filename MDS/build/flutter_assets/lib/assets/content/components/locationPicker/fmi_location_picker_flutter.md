##### Examples

```dart
    FmiLocationPicker(
        mapInitialLocation: const LatLng(34.586972, -113.218915),
        enabled: true,
        onLocationChanged: _onLocationChanged,
    ),
```

```dart
    FmiLocationPicker(
        initialLocation: const LatLng(34.586972, -113.218915),
        enabled: true,
        onLocationChanged: _onLocationChanged
    ),
```

```dart
    FmiLocationPicker(
        initialLocation: const LatLng(34.586972, -113.218915),
        enabled: true,
        onLocationChanged: _onLocationChanged,
        fieldTitle: "Custom Title Location Picker",
  ),
```

```dart
    FmiLocationPicker(
        initialLocation: const LatLng(34.586972, -113.218915),
        enabled: true,
        onLocationChanged: _onLocationChanged,
        errorText: "Required",
    ),
```

```dart
    FmiLocationPicker(
      initialLocation: LatLng(34.586972, -113.218915), 
      enabled: false
    ),
```