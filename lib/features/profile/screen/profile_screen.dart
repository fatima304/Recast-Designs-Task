import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/features/profile/widgets/loyality_section.dart';
import 'package:recast_design_task/features/profile/widgets/profile_app_bar.dart';
import 'package:recast_design_task/features/profile/widgets/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 50),
              ProfileAppBar(),
              SizedBox(height: 15),
              ProfileHeader(),
              SizedBox(height: 30),
              LoyalitySection(),
            ],
          ),
        ),
      ),
    );
  }
}
