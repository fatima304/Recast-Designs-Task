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
        Image.asset(AppImages.profile, width: 50, height: 50),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.profileName,
              style: AppTextStyles.font13BoldWhite.copyWith(fontSize: 11),
            ),
            Text(
              AppStrings.profileNumber,
              style: AppTextStyles.font9BoldDarkYellow,
            ),
          ],
        ),
        Spacer(),
        Text(
          AppStrings.edit,
          style: AppTextStyles.font9BoldDarkYellow.copyWith(
            color: AppColors.lightYellow,
          ),
        ),
      ],
    );
  }
}
