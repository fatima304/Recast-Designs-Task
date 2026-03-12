import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';
import 'package:recast_design_task/core/utils/responsive_helper.dart';
import 'package:recast_design_task/features/home/widgets/loyality_header.dart';
import 'package:recast_design_task/features/home/widgets/progress_bar.dart';
import 'package:recast_design_task/features/home/widgets/total_orders_widget.dart';

class LoyalityCard extends StatelessWidget {
  const LoyalityCard({super.key});

  @override
  Widget build(BuildContext context) {
    final horizontalMargin = ResponsiveHelper.getHorizontalPadding(context);
    final cardPadding = ResponsiveHelper.getCardPadding(context);
    final borderRadius = ResponsiveHelper.getBorderRadius(context, 13);
    
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
      padding: EdgeInsets.all(cardPadding),
      decoration: BoxDecoration(
        color: AppColors.darkgrey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.15),
            offset: Offset(0, ResponsiveHelper.getSize(context, 4)),
            blurRadius: ResponsiveHelper.getSize(context, 4),
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
    final spacing = ResponsiveHelper.getSmallSpacing(context);
    final largeSpacing = ResponsiveHelper.getLargeSpacing(context);
    final pointsFontSize = ResponsiveHelper.getFontSize(context, 22);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LoyalityHeader(),
        SizedBox(height: spacing),
        Text(
          AppStrings.points,
          style: AppTextStyles.font16BoldYellow.copyWith(fontSize: pointsFontSize),
        ),
        CustomProgressBar(progress: 0.7),
        SizedBox(height: largeSpacing),
        TotalOrdersWidget(),
      ],
    );
  }
}
