import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier{
  String currentLocale = 'en';
  String selectedLocaleText = 'English';

  void changeLocale(String newLocale, String newText){
    currentLocale = newLocale;
    selectedLocaleText = newText;
    notifyListeners();
  }

}