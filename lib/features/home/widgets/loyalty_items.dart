import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';
import 'package:recast_design_task/features/home/widgets/loyalty_header.dart';
import 'package:recast_design_task/features/home/widgets/progress_bar.dart';
import 'package:recast_design_task/features/home/widgets/total_orders_widget.dart';

class LoyaltyItems extends StatelessWidget {
  const LoyaltyItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LoyaltyHeader(),
        SizedBox(height: 12),
        Text(
          AppStrings.points,
          style: AppTextStyles.font22BoldYellow.copyWith(fontSize: 28),
        ),
        SizedBox(height: 8),
        CustomProgressBar(progress: 0.7),
        SizedBox(height: 20),
        TotalOrdersWidget(),
      ],
    );
  }
}
