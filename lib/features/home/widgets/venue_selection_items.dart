import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_images.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';
import 'package:recast_design_task/core/utils/responsive_helper.dart';

class VenueSelectionItems extends StatelessWidget {
  const VenueSelectionItems({super.key});

  @override
  Widget build(BuildContext context) {
     final List<double> itemHeights = [
      ResponsiveHelper.getSize(context, 170),
      ResponsiveHelper.getSize(context, 200),
      ResponsiveHelper.getSize(context, 210),
      ResponsiveHelper.getSize(context, 220),
    ];
    final List<String> subTitles = ['Nikkei', 'Restaurant', 'Casual', 'Bakery'];
    final List<String> titles = ['Ceano', 'Nobiko', 'Dovely', 'Olivestree'];
    final List<String> images = [
      AppImages.ceano,
      AppImages.nobiko,
      AppImages.dovely,
      AppImages.oliverstree,
    ];
    
    final gridPadding = ResponsiveHelper.getSize(context, 16);
    final verticalPadding = ResponsiveHelper.getSize(context, 10);
    final spacing = ResponsiveHelper.getSize(context, 7);
    final borderRadius = ResponsiveHelper.getBorderRadius(context, 15);
    final arrowSize = ResponsiveHelper.getSize(context, 30);
    final arrowIconSize = ResponsiveHelper.getSize(context, 10);

    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: gridPadding, vertical: verticalPadding),
      crossAxisCount: 2,
      mainAxisSpacing: spacing,
      crossAxisSpacing: spacing,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          height: itemHeights[index],
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            image: DecorationImage(
              image: AssetImage(images[index]),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(borderRadius),
                  bottomRight: Radius.circular(borderRadius),
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
                    padding: EdgeInsets.only(
                      left: ResponsiveHelper.getSize(context, 15),
                      right: ResponsiveHelper.getSize(context, 10),
                      bottom: ResponsiveHelper.getSize(context, 12),
                      top: ResponsiveHelper.getSize(context, 20),
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
                                    fontSize: ResponsiveHelper.getFontSize(context, 9),
                                    color: AppColors.white.withOpacity(0.7),
                                  ),
                                ),
                                Text(
                                  titles[index],
                                  style: AppTextStyles.font16BoldYellow.copyWith(
                                    fontSize: ResponsiveHelper.getFontSize(context, 15),
                                  ),
                                ),
                              ],
                            ),
                            _buildGlassArrow(arrowSize, arrowIconSize),
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

  Widget _buildGlassArrow(double containerSize, double iconSize) {
    return Container(
      width: containerSize,
      height: containerSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.black.withOpacity(0.4),
        border: Border.all(color: AppColors.white.withOpacity(0.4), width: 0.5),
      ),
      child: ClipOval(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Center(
            child: Icon(
              Icons.arrow_forward_ios,
              size: iconSize,
              color: const Color(0xFFEDC692),
            ),
          ),
        ),
      ),
    );
  }
}
