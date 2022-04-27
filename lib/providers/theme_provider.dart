import 'package:flutter/material.dart';
import 'package:flutter_app_hellorelax/theme/apptheme.dart';
import 'package:flutter_app_hellorelax/theme/appthemedark.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  ThemeProvider({required bool isDarkmode})
      : currentTheme = isDarkmode ? AppThemeD.darktheme : AppTheme.lightheme;

  setLightMode() {
    currentTheme = AppTheme.lightheme;
    notifyListeners();
  }

  setDarkmode() {
    currentTheme = AppThemeD.darktheme;
    notifyListeners();
  }
}
