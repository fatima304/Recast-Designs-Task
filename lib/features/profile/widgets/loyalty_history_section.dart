import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';
import 'package:recast_design_task/features/profile/widgets/loyalty_history_items.dart';

class LoyaltyHistorySection extends StatelessWidget {
  const LoyaltyHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.loyaltyHistory,
          style: AppTextStyles.font13BoldWhite.copyWith(
            fontSize: 14,
            color: AppColors.white.withOpacity(0.82),
          ),
        ),
        LoyaltyHistoryItems(),
      ],
    );
  }
}
