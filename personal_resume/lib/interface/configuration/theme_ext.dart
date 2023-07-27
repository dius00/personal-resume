import 'package:flutter/material.dart';
import 'package:personal_resume/interface/configuration/custom_color.dart';

abstract class GetCustomColor {
  static CustomColor<T> of<T>(BuildContext context) {
    return Theme.of(context).extensions[CustomColor<T>]! as CustomColor<T>;
  }
}
