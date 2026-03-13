import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_images.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImages.profile, width: 60, height: 60),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.profileName,
                style: AppTextStyles.font13BoldWhite.copyWith(
                  fontSize: 14,
                  color: AppColors.white.withOpacity(0.9),
                ),
              ),
              Text(
                AppStrings.profileNumber,
                style: AppTextStyles.font9BoldDarkYellow.copyWith(
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        Text(
          AppStrings.edit,
          style: AppTextStyles.font9BoldDarkYellow.copyWith(
            fontSize: 12,
            color: AppColors.lightYellow,
          ),
        ),
      ],
    );
  }
}
