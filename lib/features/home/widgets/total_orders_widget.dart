import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_images.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';
import 'package:recast_design_task/features/home/widgets/view_details_button.dart';

class TotalOrdersWidget extends StatelessWidget {
  const TotalOrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        Row(
          spacing: 3,
          children: [
            Text(
              AppStrings.totalOrders,
              style: AppTextStyles.font10BoldWhite.copyWith(
                fontSize: 9,
                color: AppColors.white.withOpacity(0.57),
              ),
            ),
            Text(
              '24',
              style: AppTextStyles.font10BoldWhite.copyWith(
                fontSize: 9,
                color: AppColors.softYellow,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [imagesRow(), MoreDetailsButton()],
        ),
      ],
    );
  }
}

Row imagesRow() {
  return Row(
    spacing: 3,
    children: [
      Image.asset(AppImages.food1),
      Image.asset(AppImages.food2),
      Image.asset(AppImages.food3),
    ],
  );
}
