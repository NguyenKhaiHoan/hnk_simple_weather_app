library theme;

import 'package:flutter/material.dart';
import 'package:hnk_simple_weather_app/src/core/constants/colors.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';

class HAppTheme {
  const HAppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: HAppColor.lightBackground,
    iconTheme: const IconThemeData(color: HAppColor.lightIcon),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: HAppColor.darkBackground,
    iconTheme: const IconThemeData(color: HAppColor.darkIcon),
  );
}
