import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:recast_design_task/core/constants/app_colors.dart';
import 'package:recast_design_task/core/utils/responsive_helper.dart';

class GlassIconButton extends StatelessWidget {
  final IconData icon;
  final double containerSize;
  final double iconSize;
  final VoidCallback? onTap;
  final Color iconColor;

  const GlassIconButton({
    super.key,
    required this.icon,
    required this.containerSize,
    required this.iconSize,
    this.onTap,
    this.iconColor = const Color(0xFFEDC692),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                icon,
                size: iconSize,
                color: iconColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
