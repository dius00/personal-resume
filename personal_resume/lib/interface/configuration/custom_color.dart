import 'package:flutter/material.dart';

@immutable
class CustomColor<T> extends ThemeExtension<CustomColor<T>> {
  const CustomColor({
    required this.customColor,
    required this.onCustomColor,
    required this.customColorContainer,
    required this.onCustomColorContainer,
  });

  final Color? customColor;
  final Color? onCustomColor;
  final Color? customColorContainer;
  final Color? onCustomColorContainer;

  @override
  CustomColor<T> copyWith({
    Color? customColor,
    Color? onCustomColor,
    Color? customColorContainer,
    Color? onCustomColorContainer,
  }) {
    return CustomColor<T>(
      customColor: customColor ?? this.customColor,
      onCustomColor: onCustomColor ?? this.onCustomColor,
      customColorContainer: customColorContainer ?? this.customColorContainer,
      onCustomColorContainer:
          onCustomColorContainer ?? this.onCustomColorContainer,
    );
  }

  @override
  CustomColor<T> lerp(ThemeExtension<CustomColor<T>>? other, double t) {
    if (other is! CustomColor<T>) {
      return this;
    }
    return CustomColor<T>(
      customColor: Color.lerp(customColor, other.customColor, t),
      onCustomColor: Color.lerp(onCustomColor, other.onCustomColor, t),
      customColorContainer:
          Color.lerp(customColorContainer, other.customColorContainer, t),
      onCustomColorContainer:
          Color.lerp(onCustomColorContainer, other.onCustomColorContainer, t),
    );
  }
}
