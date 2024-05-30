import 'package:flutter/material.dart';
import 'package:sport_coach/screens/onboarding/splash_screen.dart';
import 'package:sport_coach/theme/app_theme.dart';

void main() {
  runApp(const SportCoach());
}

class SportCoach extends StatelessWidget {
  const SportCoach({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
