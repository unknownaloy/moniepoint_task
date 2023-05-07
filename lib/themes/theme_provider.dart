import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;

  Future<void> initializeTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final savedTheme = prefs.getString("theme");

    if (savedTheme != null) {
      _themeMode = ThemeMode.values.byName(savedTheme);
      notifyListeners();
    }
  }

  Future<void> updateThemeMode(ThemeMode mode) async {
    if (_themeMode != mode) {
      _themeMode = mode;
      notifyListeners();

      final SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.setString("theme", _themeMode.name);
    }
  }
}
