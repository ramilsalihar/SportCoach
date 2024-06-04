import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_coach/navigation/app_router.gr.dart';
import 'package:sport_coach/services/first_launch_service.dart';
import 'package:sport_coach/widgets/utils/app_loader.dart';

//TODO: Customize for Native Splash Screen
@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final FirstLaunchService _firstLaunchService = FirstLaunchService();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _controller.forward();

    Timer(const Duration(seconds: 2), () {
      navigate();
    });
  }

  Future<void> navigate() async {
    final isFirstLaunch = await _firstLaunchService.isFirstLaunch();

    if (isFirstLaunch) {
      await _firstLaunchService.setFirstLaunch();
      context.router.replaceAll(
        [const IntroRoutes()],
      );
    } else {
      context.router.replaceAll(
        [const HomeRoute()],
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 150,
              child: Image.asset(
                'assets/logo/logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: AppLoader(
                controller: _controller,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
