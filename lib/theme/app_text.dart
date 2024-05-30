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
        // displayLarge: TextStyle(
        //   fontSize: dimens.textDisplayLarge,
        //   color: colors.black,
        // ),
        );
}
