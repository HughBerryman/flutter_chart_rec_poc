import 'package:geolocator/geolocator.dart';

abstract class LocationService {
  Future<Position?> determinePosition();
  Stream<Position?> get onPositionChanged;
}