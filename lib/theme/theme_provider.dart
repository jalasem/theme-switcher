import 'package:flutter/material.dart';
import 'theme.dart';

class ThemeModel extends ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeMode => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    themeData = _themeData == lightMode ? darkMode : lightMode;
  }
}
