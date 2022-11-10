import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Picture with ChangeNotifier {
  final String name;
  final String id;
  final String image;
  final String imageGrad;
  final String department;
  final String lastWord;
  bool _isFavorite = false;

  SharedPreferences? _preferences;

  bool get isFavorite => _isFavorite;

  _initializePref() async {
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }
  }

  _loadPrefsFromSetting() async {
    await _initializePref();
    _isFavorite = _preferences?.getBool('favorite') ?? false;
    notifyListeners();
  }

  _saveSettingsToPref() async {
    await _initializePref();
    _preferences?.setBool('favorite', _isFavorite);
  }

  void toggleFavorite() {
    _isFavorite = !_isFavorite;
    _saveSettingsToPref();
    notifyListeners();
  }

  Picture({
    required this.name,
    required this.department,
    required this.id,
    required this.image,
    required this.imageGrad,
    required this.lastWord,
    // this._isFavorite,
  }) {
    _loadPrefsFromSetting();
  }
}
