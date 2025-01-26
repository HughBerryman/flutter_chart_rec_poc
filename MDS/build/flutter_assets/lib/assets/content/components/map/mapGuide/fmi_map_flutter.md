##### Examples

```dart 
List<Marker> getMarkers(BuildContext context) {
    List<Marker> markers = [];

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
```

```dart
  void onMarkerSelect(BuildContext context, String id, bool isSelected) {
    showDialogAlert(context, "Marker $id Selected? $isSelected");
  }
```

```dart
  void onMapClick(BuildContext context, LatLng latLng) {
    showDialogAlert(context, "Map Clicked: ${latLng.latitude}, ${latLng.longitude}");
  }
```

```dart
    FmiMap(initialPosition: const LatLng(34.586972, -113.218915),
      markers: getMarkers(context), baseLayerType: BaseLayerType.satellite,
      onTap: onMapClick,
    ),
```