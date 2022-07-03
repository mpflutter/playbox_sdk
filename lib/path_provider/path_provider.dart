// ignore: depend_on_referenced_packages
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
// ignore: depend_on_referenced_packages
import 'package:path_provider_ios/path_provider_ios.dart';
// ignore: depend_on_referenced_packages
import 'package:mpcore/mpcore.dart';

class PBPathProvider extends PathProviderPlatform {
  static Future<PathProviderPlatform> getInstance() async {
    switch (await MPEnv.envOperationSystem()) {
      case MPEnvHostOperationSystemType.ios:
        return PathProviderIOS();
      case MPEnvHostOperationSystemType.android:
        return PathProviderPlatform.instance;
      default:
        return PBPathProvider();
    }
  }
}
