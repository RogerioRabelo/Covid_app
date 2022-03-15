import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CampusSettings extends ChangeNotifier {
  late SharedPreferences _campusPrefs;
  Map<String, int?> campusIndex = {
    'indexUrl': null,
  };

  CampusSettings() {
    _startSettings();
  }

  _startSettings() async {
    await _startPreferences();
    await _readUrlCampus();
  }

  Future<void> _startPreferences() async {
    _campusPrefs = await SharedPreferences.getInstance();
  }

  _readUrlCampus() async {
    final indexUrl = _campusPrefs.getInt('indexUrl');
    campusIndex = {'indexUrl': indexUrl};

    notifyListeners();
  }

  setCampusPrefs(int indexUrl) async {
    await _campusPrefs.setInt('indexUrl', indexUrl);
    _readUrlCampus();
  }
}