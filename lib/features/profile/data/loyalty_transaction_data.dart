import 'package:recast_design_task/core/constants/app_images.dart';
import 'package:recast_design_task/features/profile/data/models/loyalty_transaction_model.dart';

class LoyaltyTransactionData {
  static const List<LoyaltyTransactionModel> transactions = [
    LoyaltyTransactionModel(
      title: 'Nobiko Bistro',
      date: '06 Jan, 2025',
      amount: '125.32 JD',
      credits: '230 Credits',
      image: AppImages.odeyssy,
    ),
    LoyaltyTransactionModel(
      title: 'Ceano Restaurant',
      date: '15 Jan, 2025',
      amount: '98.15 JD',
      credits: '280 Credits',
      image: AppImages.odeyssy,
    ),
    LoyaltyTransactionModel(
      title: 'Dovely Cafe',
      date: '22 Jan, 2025',
      amount: '76.50 JD',
      credits: '195 Credits',
      image: AppImages.odeyssy,
    ),
    LoyaltyTransactionModel(
      title: 'Olivestree Bakery',
      date: '30 Jan, 2025',
      amount: '145.80 JD',
      credits: '410 Credits',
      image: AppImages.odeyssy,
    ),
  ];
}
