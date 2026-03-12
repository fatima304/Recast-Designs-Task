import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_images.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';

class LoyalityHeader extends StatelessWidget {
  const LoyalityHeader({super.key});

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
              style: AppTextStyles.font10BoldWhite.copyWith(fontSize: 9),
            ),
            Text(
              AppStrings.loyaltyPoints,
              style: AppTextStyles.font13BoldWhite,
            ),
          ],
        ),
        Image.asset(AppImages.user, width: 19, height: 19),
      ],
    );
  }
}
