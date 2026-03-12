import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';
import 'package:recast_design_task/features/home/widgets/venue_selection_items.dart';

class VenueSelectionSection extends StatelessWidget {
  const VenueSelectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.venueSelection,
            style: AppTextStyles.font13BoldWhite.copyWith(
              color: AppColors.white.withOpacity(0.82),
            ),
          ),
          SizedBox(height: 10),
          VenueSelectionItems(),
        ],
      ),
    );
  }
}
