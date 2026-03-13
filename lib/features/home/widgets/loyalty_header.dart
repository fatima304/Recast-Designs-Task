import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_images.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';

class LoyaltyHeader extends StatelessWidget {
  const LoyaltyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.alterNow,
              style: AppTextStyles.font14BoldWhite.copyWith(
                color: AppColors.white.withOpacity(0.5),
              ),
            ),
            Text(
              AppStrings.loyaltyPoints,
              style: AppTextStyles.font13BoldWhite.copyWith(fontSize: 17),
            ),
          ],
        ),
        Image.asset(AppImages.user, width: 40, height: 40),
      ],
    );
  }
}
