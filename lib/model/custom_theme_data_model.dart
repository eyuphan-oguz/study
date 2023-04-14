import 'package:flutter/material.dart';


class CustomThemeDataModel extends ChangeNotifier{
   ThemeData _themeData=ThemeData.light();

  ThemeData get getThemeData => _themeData;

  void setThemeData({required ThemeData data}){
    _themeData = data;
    notifyListeners();
  }
}