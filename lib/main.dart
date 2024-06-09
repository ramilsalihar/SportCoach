import 'package:apphud/apphud.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_coach/navigation/app_router.dart';
import 'package:sport_coach/providers/athlete_notifier.dart';
import 'package:sport_coach/providers/event_notifier.dart';
import 'package:sport_coach/providers/rating_notifier.dart';
import 'package:sport_coach/providers/training_notifier.dart';
import 'package:sport_coach/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Apphud.start(apiKey: "app_Ne3zAwZ9SYYzjSAPv8gUi5Fhk1CFEH");

  // YMMYandexMetrica.reportEvent("did_show_main_screen");

  await Firebase.initializeApp();

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
        ChangeNotifierProvider(
          create: (_) => RatingNotifier(),
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
