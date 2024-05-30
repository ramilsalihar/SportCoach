import 'package:flutter/material.dart';
import 'package:sport_coach/theme/app_text.dart';
import 'package:sport_coach/theme/dimens.dart';

import 'app_colors.dart';

final dimens = Dimens();

class AppTheme {
  static const _lightColors = AppColors();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: _lightColors.primaryColor,
    cardColor: _lightColors.cardColor,
    colorScheme: ColorScheme.light(
      primary: _lightColors.primaryColor,
      secondary: _lightColors.secondaryColor,
    ),
    // fontFamily: GoogleFonts.openSans(
    //   fontWeight: FontWeight.w600,
    // ).fontFamily,
    textTheme: AppTextTheme(
      colors: _lightColors,
      dimens: dimens,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: _lightColors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _lightColors.navBarColor,
      unselectedItemColor: Colors.grey,
    ),
  );
}
