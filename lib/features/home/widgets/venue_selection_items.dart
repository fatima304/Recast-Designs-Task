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
    final List<double> itemHeights = [170, 200, 210, 220];

    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      crossAxisCount: 2,
      mainAxisSpacing: 7,
      crossAxisSpacing: 7,
      itemCount: venues.length,
      itemBuilder: (context, index) {
        return Container(
          height: itemHeights[index],
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(venues[index].imageUrl),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  venues[index].subTitle,
                                  style: AppTextStyles.font10BoldWhite.copyWith(
                                    fontSize: ResponsiveHelper.getFontSize(
                                      context,
                                      9,
                                    ),
                                    color: AppColors.white.withOpacity(0.7),
                                  ),
                                ),
                                Text(
                                  venues[index].title,
                                  style: AppTextStyles.font16BoldYellow
                                      .copyWith(
                                        fontSize: ResponsiveHelper.getFontSize(
                                          context,
                                          15,
                                        ),
                                      ),
                                ),
                              ],
                            ),
                            GlassIconButton(
                              icon: Icons.arrow_forward_ios,
                              containerSize: 30,
                              iconSize: 10,
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
