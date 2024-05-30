import 'package:flutter/material.dart';
import 'package:sport_coach/navigation/app_router.dart';
import 'package:sport_coach/theme/app_theme.dart';

void main() {
  runApp(const SportCoach());
}

class SportCoach extends StatelessWidget {
  const SportCoach({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      routerConfig: appRouter.config(),
    );
  }
}
