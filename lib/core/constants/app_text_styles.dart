import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/font_family_helper.dart';
import 'package:recast_design_task/core/constants/font_weight_helper.dart';

class AppTextStyles {
  static TextStyle font14BoldWhite = TextStyle(
    fontFamily: FontFamilyHelper.satoshiFamily,
    fontWeight: FontWeightHelper.bold,
    fontSize: 14,
    color: AppColors.white.withOpacity(0.8),
  );

  static TextStyle font22BoldYellow = TextStyle(
    fontFamily: FontFamilyHelper.satoshiFamily,
    fontWeight: FontWeightHelper.bold,
    fontSize: 22,
    foreground: Paint()
      ..shader = LinearGradient(
        colors: [AppColors.darkYellow, AppColors.lightYellow],
      ).createShader(const Rect.fromLTWH(0, 0, 200, 20)),
  );

  static TextStyle font13BoldWhite = TextStyle(
    fontFamily: FontFamilyHelper.satoshiFamily,
    fontWeight: FontWeightHelper.bold,
    fontSize: 13,
    color: AppColors.white,
  );
  static TextStyle font10MediumWhite = TextStyle(
    fontFamily: FontFamilyHelper.satoshiFamily,
    fontWeight: FontWeightHelper.medium,
    fontSize: 10,
    color: AppColors.white,
  );

  static TextStyle font9BoldDarkYellow = TextStyle(
    fontFamily: FontFamilyHelper.satoshiFamily,
    fontWeight: FontWeightHelper.bold,
    fontSize: 9,
    color: AppColors.darkYellow,
  );

  static TextStyle font10BoldBlack = TextStyle(
    fontFamily: FontFamilyHelper.satoshiFamily,
    fontWeight: FontWeightHelper.extraBold,
    fontSize: 10,
    color: AppColors.black,
  );
}
