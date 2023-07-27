import 'package:flutter/material.dart';
import 'package:personal_resume/interface/configuration/custom_color.dart';

ThemeData appTheme = ThemeData(
  elevatedButtonTheme: _elevatedButtonThemeData,
  colorScheme: _appColorScheme,
  useMaterial3: true,
  extensions: [_purpleCustomColor],
);

ElevatedButtonThemeData _elevatedButtonThemeData = ElevatedButtonThemeData(
  style: _buttonStyle.copyWith(
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    elevation: MaterialStateProperty.all(3),
    shadowColor: MaterialStateProperty.all(
      const Color(0xFF333333).withOpacity(0.4),
    ),
    enableFeedback: true,
  ),
);

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

ButtonStyle _buttonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(const Color(0xFF333333)),
  foregroundColor: MaterialStateProperty.all(Colors.white),
  alignment: Alignment.center,
);

abstract class Purple {}

CustomColor<Purple> _purpleCustomColor = const CustomColor<Purple>(
  customColor: Color(0xFFbc62ff),
  onCustomColor: Colors.white,
  customColorContainer: Color(0xFFbc62ff),
  onCustomColorContainer: Colors.white,
);
