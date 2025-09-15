import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_font_weight.dart';

abstract class AppTextStyle {
  static TextStyle black(
      {String? fontFamily,
        required double size,
        Color color = AppColor.black}) =>
      TextStyle(
        fontWeight: AppFontWeight.black,
        fontFamily: fontFamily,
        fontSize: size,
        color: color,
      );

  static TextStyle medium(
      {String? fontFamily,
        required double size,
        Color color = AppColor.black,
        double? height}) =>
      TextStyle(
        fontWeight: AppFontWeight.meduim,
        fontFamily: fontFamily,
        fontSize: size,
        color: color,
        height: height,
      );

  static TextStyle semiBold(
      {String? fontFamily,
        required double size,
        Color color = AppColor.black,
        double? height}) =>
      TextStyle(
        fontWeight: AppFontWeight.semiBold,
        fontFamily: fontFamily,
        fontSize: size,
        color: color,
        height: height,
      );

  static TextStyle extraBold(
      {String? fontFamily,
        required double size,
        Color color = AppColor.black}) =>
      TextStyle(
        fontWeight: AppFontWeight.extraBold,
        fontFamily: fontFamily,
        fontSize: size,
        color: color,
      );

  static TextStyle bold(
      {String? fontFamily,
        required double size,
        Color color = AppColor.black,
        double? height}) =>
      TextStyle(
        fontWeight: AppFontWeight.bold,
        fontFamily: fontFamily,
        fontSize: size,
        color: color,
        height: height,
      );

  static TextStyle thin(
      {String? fontFamily,
        required double size,
        Color color = AppColor.black,
        TextOverflow? overFow}) =>
      TextStyle(
        fontWeight: AppFontWeight.thin,
        fontFamily: fontFamily,
        fontSize: size,
        color: color,
        overflow: overFow,
      );

  static TextStyle regular({
    String? fontFamily,
    required double size,
    Color color = AppColor.black,
    double? height,
  }) =>
      TextStyle(
        fontWeight: AppFontWeight.regular,
        fontFamily: fontFamily,
        fontSize: size,
        color: color,
        height: height,
      );

  static TextStyle light({
    String? fontFamily,
    required double size,
    Color color = AppColor.black,
    double? height,
  }) =>
      TextStyle(
        fontWeight: AppFontWeight.light,
        fontFamily: fontFamily,
        fontSize: size,
        color: color,
        height: height,
      );
}
