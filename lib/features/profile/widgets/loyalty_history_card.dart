
import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/features/profile/data/models/loyalty_transaction_model.dart';
import 'package:recast_design_task/features/profile/widgets/loyalty_history_items.dart';

class LoyaltyHistoryCard extends StatelessWidget {
  final LoyaltyTransactionModel transaction;

  const LoyaltyHistoryCard({super.key, required this.transaction});

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
      child: LoyaltyHistoryItem(transaction: transaction),
    );
  }
}
