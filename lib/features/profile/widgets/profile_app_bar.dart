import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_images.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.yourProfile,
          style: AppTextStyles.font13BoldWhite.copyWith(
            fontSize: 16,
            color: AppColors.white.withOpacity(0.75),
          ),
        ),
        Image.asset(AppImages.setting),
      ],
    );
  }
}
