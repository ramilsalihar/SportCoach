import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_coach/navigation/app_router.gr.dart';
import 'package:sport_coach/providers/athlete_notifier.dart';
import 'package:sport_coach/providers/event_notifier.dart';
import 'package:sport_coach/providers/rating_notifier.dart';
import 'package:sport_coach/providers/training_notifier.dart';
import 'package:sport_coach/screens/home/athletes/athletes_content.dart';
import 'package:sport_coach/screens/home/calendar/calendar_content.dart';
import 'package:sport_coach/screens/home/rating/rating_content.dart';
import 'package:sport_coach/screens/home/settings/settings_content.dart';
import 'package:sport_coach/screens/home/training/training_content.dart';
import 'package:sport_coach/widgets/layout/app_bottom_bar.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          children: const [
            AthletesContent(),
            TrainingContent(),
            CalendarContent(),
            RatingContent(),
            SettingsContent()
          ],
        ),
        bottomNavigationBar: AppBottomBar(
          selectedIndex: selectedIndex,
          onItemTapped: (int index) {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
        floatingActionButton: selectedIndex != 4
            ? SizedBox(
                height: 35,
                width: 35,
                child: IconButton(
                  icon: Image.asset('assets/icons/add.png'),
                  onPressed: () {
                    if (selectedIndex == 0) {
                      final athlete = context.read<AthleteNotifier>();
                      context.router.push(
                        AthleteEditRoute(
                          title: 'New Athlete',
                          index: athlete.athleteIndex,
                        ),
                      );
                    }
                    if (selectedIndex == 1) {
                      final training = context.read<TrainingNotifier>();
                      context.router.push(
                        NewTrainingProgram(
                          title: 'New Personal Program',
                          index: training.trainingIndex,
                        ),
                      );
                    }
                    if (selectedIndex == 2) {
                      final event = context.read<EventNotifier>();
                      context.router.push(EventEdit(
                        index: event.eventIndex,
                        title: 'New Event',
                      ));
                    }
                    if (selectedIndex == 3) {
                      final rating = context.read<RatingNotifier>();
                      context.router.push(
                        NewRating(
                          index: rating.ratingIndex,
                        ),
                      );
                    }
                  },
                ),
              )
            : null,
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      ),
    );
  }
}
