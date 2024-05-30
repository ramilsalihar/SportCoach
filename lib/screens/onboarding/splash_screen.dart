import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sport_coach/screens/onboarding/intro_screens.dart';

//TODO: Customize for Native Splash Screen
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();

    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const IntroScreens(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 190,
              width: 190,
              child: Image.asset('assets/logo/logo.png'),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: SizedBox(
                width: 190,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      backgroundColor: Colors.grey,
                      strokeWidth: 6.0,
                      value: 1,
                    ),
                    SizedBox(height: 20),
                    Text(
                      '%',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
