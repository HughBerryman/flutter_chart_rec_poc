import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../interfaces/location_service.dart';
import 'package:geolocator/geolocator.dart';

class LocationServiceImpl implements LocationService {
  // Determine the current position of the device
  @override
  Future<Position?> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled) {
      return null;
    }

    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied) {
        return null;
      }
    }

    if(permission == LocationPermission.deniedForever) {
      return null;
    }

    Position? result;

    try {
      result = await Geolocator.getCurrentPosition(timeLimit: const Duration(seconds: 10));
    } catch(e){
      debugPrint("LocationService: ${e.toString()}");
    }

    return result;
  }

  @override
  Stream<Position?> get onPositionChanged {
    return Geolocator.getPositionStream();
  }
}