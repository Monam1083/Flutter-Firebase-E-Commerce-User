import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  static const THEME_STATUS = "THEME_STATUS";
  bool _darktheme = false;
  bool get getisDarktheme => _darktheme;

  ThemeProvider() {
    getTheme();
  }

  Future<void> setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(THEME_STATUS, value);
    _darktheme = value;
    notifyListeners();
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _darktheme = prefs.getBool(THEME_STATUS) ?? false;
    notifyListeners();
    return _darktheme;
  }
}
