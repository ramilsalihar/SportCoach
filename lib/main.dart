import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_coach/navigation/app_router.dart';
import 'package:sport_coach/providers/athlete_notifier.dart';
import 'package:sport_coach/providers/event_notifier.dart';
import 'package:sport_coach/providers/training_notifier.dart';
import 'package:sport_coach/theme/app_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AthleteNotifier()..loadAthletes(),
        ),
        ChangeNotifierProvider(
          create: (_) => EventNotifier(),
        ),
        ChangeNotifierProvider(
          create: (_) => TrainingNotifier(),
        ),
      ],
      child: const SportCoach(),
    ),
  );
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
