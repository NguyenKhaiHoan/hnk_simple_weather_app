import 'package:geolocator/geolocator.dart';
import 'package:hnk_simple_weather_app/src/core/error/location_exception.dart';

class LocationService {
  static final LocationService _instance = LocationService._();
  LocationService._();
  factory LocationService() => _instance;

  Future<bool> checkPermission() async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          throw LocationServiceException('Location permissions are denied.');
        }
      }
      if (permission == LocationPermission.deniedForever) {
        throw LocationServiceException(
            'Location permissions are permanently denied.');
      }
      return true;
    } catch (e) {
      print('Error checking location permission: $e');
      return false;
    }
  }

  Future<Position> getCurrentPosition() async =>
      await Geolocator.getCurrentPosition();

  Future<bool> isLocationServiceEnabled() async =>
      await Geolocator.isLocationServiceEnabled();
  Future<void> openAppSettings() async => await Geolocator.openAppSettings();
  Future<void> openLocationSettings() async =>
      await Geolocator.openLocationSettings();
}
