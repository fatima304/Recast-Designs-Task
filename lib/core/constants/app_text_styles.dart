import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/font_family_helper.dart';
import 'package:recast_design_task/core/constants/font_weight_helper.dart';

class AppTextStyles {
  static TextStyle font10BoldWhite = TextStyle(
    fontFamily: FontFamilyHelper.satoshiFamily,
    fontWeight: FontWeightHelper.bold,
    fontSize: 10,
    color: AppColors.white.withOpacity(0.5),
  );

  static TextStyle font16BoldYellow = TextStyle(
    fontFamily: FontFamilyHelper.satoshiFamily,
    fontWeight: FontWeightHelper.bold,
    fontSize: 16,
    foreground: Paint()
      ..shader = LinearGradient(
        colors: [AppColors.lightYellow, AppColors.darkYellow],
      ).createShader(const Rect.fromLTWH(0, 0, 200, 20)),
  );

  static TextStyle font13BoldWhite = TextStyle(
    fontFamily: FontFamilyHelper.satoshiFamily,
    fontWeight: FontWeightHelper.bold,
    fontSize: 13,
    color: AppColors.white,
  );
  static TextStyle font7MediumWhite = TextStyle(
    fontFamily: FontFamilyHelper.satoshiFamily,
    fontWeight: FontWeightHelper.medium,
    fontSize: 7,
    color: AppColors.white,
  );

  static TextStyle font9BoldDarkYellow = TextStyle(
    fontFamily: FontFamilyHelper.satoshiFamily,
    fontWeight: FontWeightHelper.bold,
    fontSize: 9,
    color: AppColors.darkYellow,
  );

    static TextStyle font8BoldBlack = TextStyle(
    fontFamily: FontFamilyHelper.satoshiFamily,
    fontWeight: FontWeightHelper.bold,
    fontSize: 8,
    color: AppColors.black,
  );
}
