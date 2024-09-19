library text_style;

import 'package:flutter/material.dart';
import 'package:hnk_simple_weather_app/gen/fonts.gen.dart';
import 'package:hnk_simple_weather_app/src/core/constants/constants.dart';
import 'package:hnk_simple_weather_app/src/core/extensions/build_context.dart';

mixin Font {
  static FontWeight get r => FontWeight.w400;
  static FontWeight get m => FontWeight.w500;
  static FontWeight get b => FontWeight.w700;
}

class HAppStyle {
  const HAppStyle._();

  static Color _getPrimaryTextColor(BuildContext context) => context.isDarkMode
      ? HAppColor.darkPrimaryText
      : HAppColor.lightPrimaryText;

  static Color _getSecondaryTextColor(BuildContext context) =>
      context.isDarkMode
          ? HAppColor.darkSecondaryText
          : HAppColor.lightSecondaryText;

  static TextStyle heading1(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getPrimaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 70,
        fontWeight: Font.b,
      );

  static TextStyle heading2(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getPrimaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 24,
        fontWeight: Font.b,
      );

  static TextStyle heading3(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getPrimaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 18,
        fontWeight: Font.b,
      );

  static TextStyle heading4(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getPrimaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 16,
        fontWeight: Font.b,
      );

  static TextStyle heading5(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getPrimaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 14,
        fontWeight: Font.b,
      );

  static TextStyle paragraph1Bold(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getSecondaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 16,
        fontWeight: Font.m,
      );

  static TextStyle paragraph1Regular(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getSecondaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 16,
        fontWeight: Font.r,
      );

  static TextStyle paragraph2Bold(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getSecondaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 14,
        fontWeight: Font.m,
      );

  static TextStyle paragraph2Regular(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getSecondaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 14,
        fontWeight: Font.r,
      );

  static TextStyle paragraph3Bold(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getSecondaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 12,
        fontWeight: Font.m,
      );

  static TextStyle paragraph3Regular(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getSecondaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 12,
        fontWeight: Font.r,
      );

  static TextStyle label1Bold(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getPrimaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 20,
        fontWeight: Font.m,
      );

  static TextStyle label1Regular(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getPrimaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 20,
        fontWeight: Font.r,
      );

  static TextStyle label2Bold(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getPrimaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 16,
        fontWeight: Font.m,
      );

  static TextStyle label2Regular(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getPrimaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 16,
        fontWeight: Font.r,
      );

  static TextStyle label3Bold(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getPrimaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 14,
        fontWeight: Font.m,
      );

  static TextStyle label3Regular(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getPrimaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 14,
        fontWeight: Font.r,
      );

  static TextStyle label4Bold(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getPrimaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 12,
        fontWeight: Font.m,
      );

  static TextStyle label4Regular(BuildContext context) => TextStyle(
        fontStyle: FontStyle.normal,
        color: _getPrimaryTextColor(context),
        fontFamily: FontFamily.sf,
        fontSize: 12,
        fontWeight: Font.r,
      );
}
