import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_images.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';
import 'package:recast_design_task/core/utils/responsive_helper.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = ResponsiveHelper.getHorizontalPadding(context);
    final topPadding = ResponsiveHelper.getVerticalPadding(context);
    final avatarSize = ResponsiveHelper.getSize(context, 35);
    final iconSize = ResponsiveHelper.getSize(context, 19);
    
    return Padding(
      padding: EdgeInsets.only(top: topPadding, left: horizontalPadding, right: horizontalPadding * 0.65),
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
                style: AppTextStyles.font10BoldWhite.copyWith(
                  fontSize: ResponsiveHelper.getFontSize(context, 10),
                ),
              ),
              Text(
                AppStrings.profileName,
                style: AppTextStyles.font16BoldYellow.copyWith(
                  fontSize: ResponsiveHelper.getFontSize(context, 16),
                ),
              ),
            ],
          ),
          Container(
            width: avatarSize,
            height: avatarSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.lightgrey.withOpacity(0.2),
              border: Border.all(
                color: AppColors.borderGray.withOpacity(0.2),
                width: 1.5,
              ),
            ),
            child: Image.asset(AppImages.user, width: iconSize, height: iconSize),
          ),
        ],
      ),
    );
  }
}
