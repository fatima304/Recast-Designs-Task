import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_images.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';

class VenueSelectionItems extends StatelessWidget {
  const VenueSelectionItems({super.key});

  @override
  Widget build(BuildContext context) {
    final List<double> itemHeights = [170, 200, 210, 220];
    final List<String> subTitles = ['Nikkei', 'Restaurant', 'Casual', 'Bakery'];
    final List<String> titles = ['Ceano', 'Nobiko', 'Dovely', 'Olivestree'];
    final List<String> images = [
      AppImages.ceano,
      AppImages.nobiko,
      AppImages.dovely,
      AppImages.oliverstree,
    ];

    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      crossAxisCount: 2,
      mainAxisSpacing: 7,
      crossAxisSpacing: 7,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          height: itemHeights[index],
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(images[index]),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFF222222).withOpacity(0.0),
                          const Color(0xFF222222).withOpacity(0.54),
                          const Color(0xFF222222).withOpacity(0.8),
                        ],
                        stops: const [0.0, 0.54, 1.0],
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 10,
                      bottom: 12,
                      top: 20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  subTitles[index],
                                  style: AppTextStyles.font10BoldWhite.copyWith(
                                    fontSize: 9,
                                    color: AppColors.white.withOpacity(0.7),
                                  ),
                                ),
                                Text(
                                  titles[index],
                                  style: AppTextStyles.font16BoldYellow
                                      .copyWith(fontSize: 15),
                                ),
                              ],
                            ),
                            _buildGlassArrow(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildGlassArrow() {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.black.withOpacity(0.4),
        border: Border.all(color: AppColors.white.withOpacity(0.4), width: 0.5),
      ),
      child: ClipOval(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: const Center(
            child: Icon(
              Icons.arrow_forward_ios,
              size: 10,
              color: Color(0xFFEDC692),
            ),
          ),
        ),
      ),
    );
  }
}
