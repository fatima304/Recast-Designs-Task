import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/features/home/widgets/home_header.dart';
import 'package:recast_design_task/features/home/widgets/loyality_card.dart';
import 'package:recast_design_task/features/home/widgets/venue_selection_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            HomeHeader(),
            SizedBox(height: 10),
            LoyalityCard(),
            SizedBox(height: 10),
            VenueSelectionSection(),
          ],
        ),
      ),
    );
  }
}
