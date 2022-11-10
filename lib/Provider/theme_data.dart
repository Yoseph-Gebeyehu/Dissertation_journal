import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.purple,
  accentColor: Colors.black,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'QuickSand',
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 0, 15, 153),
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: Color.fromARGB(255, 0, 15, 153),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
  ),
  iconTheme: const IconThemeData(
    color: Color.fromARGB(255, 0, 15, 153),
  ),
);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.white,
  accentColor: Colors.white,
  scaffoldBackgroundColor: Colors.black,
  fontFamily: 'QuickSand',
  backgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      color: Colors.white,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
);

class ThemeSetting with ChangeNotifier {
  bool _darkTheme = false;

  SharedPreferences? _preferences;

  bool get darkTheme => _darkTheme;

  ThemeSetting() {
    _loadPrefsFromSetting();
  }
  _initializePref() async {
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }
  }

  _loadPrefsFromSetting() async {
    await _initializePref();
    _darkTheme = _preferences?.getBool('darkTheme') ?? false;
    notifyListeners();
  }

  _saveSettingsToPref() async {
    await _initializePref();
    _preferences?.setBool('darkTheme', _darkTheme);
  }

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    _saveSettingsToPref();
    notifyListeners();
  }
}
