import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';
import 'package:recast_design_task/core/utils/responsive_helper.dart';
import 'package:recast_design_task/features/home/data/venue_data.dart';
import 'package:recast_design_task/features/home/widgets/common/glass_icon_button.dart';

class VenueSelectionItems extends StatelessWidget {
  const VenueSelectionItems({super.key});

  @override
  Widget build(BuildContext context) {
    final venues = VenueData.venues;
    final List<double> itemHeights = [150, 180, 190, 170];

    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemCount: venues.length,
      itemBuilder: (context, index) {
        return Container(
          height: itemHeights[index],
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(venues[index].image),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      top: ResponsiveHelper.getSize(context, 8),
                      left: ResponsiveHelper.getSize(context, 16),
                      right: ResponsiveHelper.getSize(context, 12),
                      bottom: ResponsiveHelper.getSize(context, 8),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  venues[index].subTitle,
                                  style: AppTextStyles.font14BoldWhite
                                      .copyWith(
                                        fontSize: 9,
                                        color: AppColors.white.withOpacity(
                                          0.8,
                                        ),
                                      ),
                                ),
                                Text(
                                  venues[index].title,
                                  style: AppTextStyles.font22BoldYellow
                                      .copyWith(fontSize: 15),
                                ),
                              ],
                            ),
                            GlassIconButton(
                              icon: Icons.arrow_forward_ios,
                              containerSize: 40,
                              iconSize: 15,
                            ),
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
}
