import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';
import 'package:recast_design_task/features/profile/data/loyalty_transaction_data.dart';
import 'package:recast_design_task/features/profile/data/models/loyalty_transaction_model.dart';
import 'package:recast_design_task/features/profile/widgets/loyalty_history_card.dart';

class LoyaltyHistoryItems extends StatelessWidget {
  const LoyaltyHistoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = LoyaltyTransactionData.transactions;

    return Column(
      children: transactions.map((transaction) {
        return LoyaltyHistoryCard(transaction: transaction);
      }).toList(),
    );
  }
}

class LoyaltyHistoryItem extends StatelessWidget {
  final LoyaltyTransactionModel transaction;

  const LoyaltyHistoryItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 60,
          height: 65,
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(transaction.image),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(transaction.title, style: AppTextStyles.font13BoldWhite),
            const SizedBox(height: 2),
            Text(
              transaction.date,
              style: AppTextStyles.font9BoldDarkYellow.copyWith(
                fontSize: 11,
                color: AppColors.white.withOpacity(0.34),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              '${transaction.amount} • ${transaction.credits}',
              style: AppTextStyles.font22BoldYellow.copyWith(fontSize: 12),
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
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
              child: Text(
                transaction.credits,
                style: AppTextStyles.font10BoldBlack,
              ),
            ),
            const SizedBox(height: 20),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
              color: AppColors.lightYellow.withOpacity(0.28),
            ),
          ],
        ),
      ],
    );
  }
}
