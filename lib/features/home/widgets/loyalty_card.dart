import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/features/home/widgets/loyalty_items.dart';

class LoyaltyCard extends StatelessWidget {
  const LoyaltyCard({super.key});

  @override
  Widget build(BuildContext context) {

    
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(16),
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
      child: LoyaltyItems(),
    );
  }
}
