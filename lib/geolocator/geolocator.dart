import 'package:geolocator/geolocator.dart';
// ignore: depend_on_referenced_packages
import 'package:geolocator_apple/geolocator_apple.dart';
// ignore: depend_on_referenced_packages
import 'package:geolocator_android/geolocator_android.dart';
// ignore: depend_on_referenced_packages
import 'package:mpcore/mpcore.dart';

class PBGeolocator {
  static Future<GeolocatorPlatform> getInstance() async {
    switch (await MPEnv.envOperationSystem()) {
      case MPEnvHostOperationSystemType.ios:
        return GeolocatorApple();
      case MPEnvHostOperationSystemType.android:
        return GeolocatorAndroid();
      case MPEnvHostOperationSystemType.macos:
        return GeolocatorApple();
      default:
        throw 'no implementation';
    }
  }
}
