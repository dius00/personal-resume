import 'package:flutter/material.dart';
import 'package:personal_resume/interface/configuration/custom_color.dart';

ThemeData appTheme = ThemeData(
    buttonTheme: _buttonTheme,
    colorScheme: _appColorScheme,
    useMaterial3: true,
    extensions: [_purpleCustomColor]);

const _appColorScheme = ColorScheme(
  primary: Color(0xFF1e90ff),
  secondary: Color(0xFFffab1e),
  tertiary: Color(0xFF7fff62),
  surface: Color(0xFF333333),
  background: Colors.black,
  error: Color(0xFFB00020),
  brightness: Brightness.dark,
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onError: Colors.white,
  onBackground: Colors.white,
  onSurface: Colors.white,
);

const _buttonTheme = ButtonThemeData(
  buttonColor: Color(0xFF333333),
  textTheme: ButtonTextTheme.normal,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  ),
);

abstract class Purple {}

CustomColor<Purple> _purpleCustomColor = const CustomColor<Purple>(
  customColor: Color(0xFFbc62ff),
  onCustomColor: Colors.white,
  customColorContainer: Color(0xFFbc62ff),
  onCustomColorContainer: Colors.white,
);
