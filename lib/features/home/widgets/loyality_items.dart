import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';
import 'package:recast_design_task/features/home/widgets/loyality_header.dart';
import 'package:recast_design_task/features/home/widgets/progress_bar.dart';
import 'package:recast_design_task/features/home/widgets/total_orders_widget.dart';

class LoyalityItems extends StatelessWidget {
  const LoyalityItems({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LoyalityHeader(),
        SizedBox(height: 8),
        Text(
          AppStrings.points,
          style: AppTextStyles.font16BoldYellow.copyWith(fontSize: 22),
        ),
        CustomProgressBar(progress: 0.7),
        SizedBox(height: 24),
        TotalOrdersWidget(),
      ],
    );
  }
}
