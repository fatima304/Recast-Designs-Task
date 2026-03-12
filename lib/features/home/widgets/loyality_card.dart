import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';
import 'package:recast_design_task/features/home/widgets/loyality_header.dart';
import 'package:recast_design_task/features/home/widgets/progress_bar.dart';
import 'package:recast_design_task/features/home/widgets/total_orders_widget.dart';

class LoyalityCard extends StatelessWidget {
  const LoyalityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 17),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.darkgrey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.15),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: LoyalityItems(),
    );
  }
}

class LoyalityItems extends StatelessWidget {
  const LoyalityItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LoyalityHeader(),
        SizedBox(height: 7),
        Text(
          AppStrings.points,
          style: AppTextStyles.font16BoldYellow.copyWith(fontSize: 22),
        ),
        CustomProgressBar(progress: 0.7),
        SizedBox(height: 15),
        TotalOrdersWidget(),
      ],
    );
  }
}
