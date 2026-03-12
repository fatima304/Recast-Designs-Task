import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_images.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 17, right: 11),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.welcomeBack,
                style: AppTextStyles.font10BoldWhite,
              ),
              Text(
                AppStrings.profileName,
                style: AppTextStyles.font16BoldYellow,
              ),
            ],
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.lightgrey.withOpacity(0.2),
              border: Border.all(
                color: AppColors.borderGray.withOpacity(0.2),
                width: 1.5,
              ),
            ),
            child: Image.asset(AppImages.user, width: 19, height: 19),
          ),
        ],
      ),
    );
  }
}
