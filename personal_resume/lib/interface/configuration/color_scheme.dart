import 'package:flutter/material.dart';

import 'custom_color.dart';

const appColorScheme = ColorScheme(
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

abstract class Purple {}

CustomColor<Purple> purpleCustomColor = const CustomColor<Purple>(
  customColor: Color(0xFFbc62ff),
  onCustomColor: Colors.white,
  customColorContainer: Color(0xFFbc62ff),
  onCustomColorContainer: Colors.white,
);
