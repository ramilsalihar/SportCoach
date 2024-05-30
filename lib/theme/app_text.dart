import 'package:flutter/material.dart';
import 'package:sport_coach/theme/app_colors.dart';
import 'package:sport_coach/theme/dimens.dart';

class AppTextTheme extends TextTheme {
  final AppColors colors;
  final Dimens dimens;

  AppTextTheme({
    required this.colors,
    required this.dimens,
  }) : super(
          displayLarge: TextStyle(
            fontSize: dimens.textDisplayLarge,
            color: colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'SF Pro',
          ),
          displayMedium: TextStyle(
            fontSize: dimens.textDisplayMedium,
            color: colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'SF Pro',
          ),
          displaySmall: TextStyle(
            fontSize: dimens.textDisplaySmall,
            color: colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'SF Pro',
          ),
        );
}
