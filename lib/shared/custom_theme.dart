import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTheme{

  final lightThemeData=ThemeData(
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      color: Colors.white
    ),
  );
}