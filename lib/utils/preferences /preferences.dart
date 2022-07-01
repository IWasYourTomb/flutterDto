import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  String selectedThemeValue = "selected_theme_value";
  static Preferences? _instance;

  factory Preferences() => _instance ??= Preferences._();

  Preferences._();

  SharedPreferences? sharedPrefs;

  Future<void> init() async {
    sharedPrefs = await SharedPreferences.getInstance();
  }

  bool? get value => sharedPrefs?.getBool(selectedThemeValue);

  set themeBool(bool value) {
    sharedPrefs?.setBool(selectedThemeValue, value);
  }
}
