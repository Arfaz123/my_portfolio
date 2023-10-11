import 'package:package_info_plus/package_info_plus.dart';

class AppPackageInfo {
  static final AppPackageInfo _instance = AppPackageInfo._internal();
  late PackageInfo _prefs;

  factory AppPackageInfo() {
    return _instance;
  }

  AppPackageInfo._internal();

  Future<void> init() async {
    _prefs = await PackageInfo.fromPlatform();
    print("hello ${_prefs.version}");
    print("hello ${_prefs.buildNumber}");
  }

  // Define methods to read and write values to SharedPreferences
  String getVersion() {
    return _prefs.version;
  }

  String getBuildNumber() {
    return _prefs.buildNumber;
  }

}