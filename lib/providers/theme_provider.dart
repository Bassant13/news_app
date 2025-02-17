import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.light;
  String selectedThemeText = 'Light';
  void changeTheme(ThemeMode newTheme, String newText){
    currentTheme = newTheme;
    selectedThemeText = newText;
    notifyListeners();
  }
}