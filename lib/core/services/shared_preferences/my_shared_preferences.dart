import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences {
  Future<void> setBooleanValue({
    required String key,
    required bool value,
  }) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    myPrefs.setBool(key, value);
  }

  Future<bool> getBooleanValue(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getBool(key) ?? false;
  }

  Future<int> getIntValue(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getInt(key) ?? 0;
  }

  Future<String> getStringValue(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getString(key) ?? '';
  }

  Future<void> setStringValue({
    required String key,
    required String? value,
  }) async {
    if (value != null) {
      SharedPreferences myPrefs = await SharedPreferences.getInstance();
      myPrefs.setString(key, value);
    }
  }

  Future<void> setIntValue({
    required String key,
    required int? value,
  }) async {
    if (value != null) {
      SharedPreferences myPrefs = await SharedPreferences.getInstance();
      myPrefs.setInt(key, value);
    }
  }
}
