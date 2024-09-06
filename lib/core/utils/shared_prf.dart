import 'package:musamimuk_admin/core/utils/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  final log = Logger();
  static SharedPreferences? _preferences;

  ///
  /// List of const keys
  ///
  static const String onboardingCountKey = 'onBoardingCount';
  static const String notificationsCountKey = 'notificationsCount';
  static const String accessTokenKey = 'accessToken';
  static const String refreshTokenKey = 'refreshToken';
  static const String userDataKey = 'userData';

  ///
  /// Setters and getters
  ///
  int get onBoardingPageCount => getFromDisk(onboardingCountKey) ?? 0;
  set onBoardingPageCount(int count) => saveToDisk(onboardingCountKey, count);

  int get notificationsCount => getFromDisk(notificationsCountKey) ?? 0;
  set notificationsCount(int count) => saveToDisk(notificationsCountKey, count);

  String? get accessToken => getFromDisk(accessTokenKey);
  set accessToken(String? token) => saveToDisk(accessTokenKey, token);

  String? get refreshToken => getFromDisk(refreshTokenKey);
  set refreshToken(String? token) => saveToDisk(refreshTokenKey, token);

  String? get userData => getFromDisk(userDataKey);
  set userData(String? data) => saveToDisk(userDataKey, data);

  ///
  ///initializing instance
  ///
  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  dynamic getFromDisk(String key) {
    var value = _preferences?.get(key);
    return value;
  }

  void saveToDisk<T>(String key, T? content) {
    if (content is String) {
      _preferences?.setString(key, content);
    } else if (content is bool) {
      _preferences?.setBool(key, content);
    } else if (content is int) {
      _preferences?.setInt(key, content);
    } else if (content is double) {
      _preferences?.setDouble(key, content);
    } else if (content is List<String>) {
      _preferences?.setStringList(key, content);
    } else if (content == null) {
      _preferences?.remove(key);
    }
  }
}
