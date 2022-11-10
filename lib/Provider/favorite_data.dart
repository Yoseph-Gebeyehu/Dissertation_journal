import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteData with ChangeNotifier {
  bool _favorite = false;
  SharedPreferences? _preferences;
  bool get favorite => _favorite;

  FavoriteData() {
    _loadPrefsFromSetting();
  }
  _initializePref() async {
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }
  }

  _loadPrefsFromSetting() async {
    await _initializePref();
    _favorite = _preferences?.getBool('favorite') ?? false;
    notifyListeners();
  }

  _saveSettingsToPref() async {
    await _initializePref();
    _preferences?.setBool('favorite', _favorite);
  }

  void toggleFavorite() {
    _favorite = !_favorite;
    _saveSettingsToPref();
    notifyListeners();
  }
}
