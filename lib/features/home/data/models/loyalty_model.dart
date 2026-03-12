class LoyaltyModel {
  final int currentPoints;
  final int totalOrders;
  final double progress;
  final List<String> recentFoodImages;

  const LoyaltyModel({
    required this.currentPoints,
    required this.totalOrders,
    required this.progress,
    required this.recentFoodImages,
  });
}
