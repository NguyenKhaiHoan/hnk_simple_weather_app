import 'package:flutter/material.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/core/extensions/build_context.dart';

class ColorUtil {
  const ColorUtil._();

  static Color createSectionIconColor(BuildContext context, int index) {
    return index == 0
        ? HAppColor.darkIcon
        : context.isDarkMode
            ? HAppColor.darkIcon
            : HAppColor.lightIcon;
  }

  static Color createSectionTextColor(BuildContext context, int index) {
    return index == 0
        ? HAppColor.darkPrimaryText
        : context.isDarkMode
            ? HAppColor.darkPrimaryText
            : HAppColor.lightPrimaryText;
  }
}
