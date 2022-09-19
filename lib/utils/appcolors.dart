import 'package:flutter/material.dart';

class AppColors {
  static getColor(String value) {
    return Color(int.parse("0xff$value"));
  }

  static Color customwhite = getColor("F5F5F5");
}
