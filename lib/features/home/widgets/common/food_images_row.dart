import 'package:flutter/material.dart';
import 'package:recast_design_task/features/home/data/food_image_data.dart';

class FoodImagesRow extends StatelessWidget {
  const FoodImagesRow({super.key});

  @override
  Widget build(BuildContext context) {
    final foodImages = FoodImageData.foodImages;

    return Row(
      spacing: 5,
      children: foodImages.map((foodImage) {
        return Image.asset(foodImage.image);
      }).toList(),
    );
  }
}
