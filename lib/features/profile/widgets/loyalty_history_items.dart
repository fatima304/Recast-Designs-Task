import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_images.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';

class LoyaltyHistoryItems extends StatelessWidget {
  const LoyaltyHistoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoyaltyHistoryCard(),
        LoyaltyHistoryCard(),
        LoyaltyHistoryCard(),
        LoyaltyHistoryCard(),
      ],
    );
  }
}

class LoyaltyHistoryCard extends StatelessWidget {
  const LoyaltyHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.darkgrey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.15),
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: LoyaltyHistoryItem(),
    );
  }
}

class LoyaltyHistoryItem extends StatelessWidget {
  const LoyaltyHistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Image.asset(AppImages.odeyssy),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.nobikoBistro,
              style: AppTextStyles.font13BoldWhite.copyWith(fontSize: 10),
            ),
            Text(
              AppStrings.jan2025,
              style: AppTextStyles.font9BoldDarkYellow.copyWith(
                color: AppColors.white.withOpacity(0.34),
              ),
            ),
            const SizedBox(height: 7),
            Text(
              AppStrings.credits,
              style: AppTextStyles.font16BoldYellow.copyWith(fontSize: 9),
            ),
          ],
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      color: AppColors.white.withOpacity(0.3),
                      width: 1,
                    ),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [AppColors.lightYellow, AppColors.darkYellow],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      AppStrings.threeTwentyFiveCredits,
                      style: AppTextStyles.font8BoldBlack,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
              color: AppColors.lightYellow.withOpacity(0.28),
            ),
          ],
        ),
      ],
    );
  }
}
