import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_strings.dart';
import 'package:recast_design_task/core/constants/app_text_styles.dart';
import 'package:recast_design_task/features/home/widgets/venue_selection_items.dart';

class VenueSelectionSection extends StatelessWidget {
  const VenueSelectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.venueSelection,
            style: AppTextStyles.font14BoldWhite.copyWith(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 16),
          VenueSelectionItems(),
        ],
      ),
    );
  }
}
