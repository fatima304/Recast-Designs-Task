import 'package:flutter/material.dart';

class ResponsiveHelper {
  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScaleFactor(BuildContext context) {
    return getWidth(context) / 375.0;
  }

  static double getSpacing(BuildContext context, double baseSpacing) {
    return baseSpacing * getScaleFactor(context);
  }

  static double getFontSize(BuildContext context, double baseFontSize) {
    return baseFontSize * getScaleFactor(context);
  }

  static double getSize(BuildContext context, double baseSize) {
    return baseSize * getScaleFactor(context);
  }

  static double getBorderRadius(BuildContext context, double baseRadius) {
    return baseRadius * getScaleFactor(context);
  }

  static double getHorizontalPadding(BuildContext context) {
    return getWidth(context) * 0.042; 
  }

  static double getVerticalPadding(BuildContext context) {
    return getHeight(context) * 0.025; 
  }

  static double getCardPadding(BuildContext context) {
    return getWidth(context) * 0.03;
  }

  static double getSmallSpacing(BuildContext context) {
    return getHeight(context) * 0.017;
  }

  static double getMediumSpacing(BuildContext context) {
    return getHeight(context) * 0.024; 
  }

  static double getLargeSpacing(BuildContext context) {
    return getHeight(context) * 0.036; 
  }
}
