import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_images.dart';

class FoodImagesRow extends StatelessWidget {
  const FoodImagesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 3,
      children: [
        Image.asset(AppImages.food1),
        Image.asset(AppImages.food2),
        Image.asset(AppImages.food3),
      ],
    );
  }
}
