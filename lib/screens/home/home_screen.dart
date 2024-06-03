import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
                    // if (selectedIndex == 0) {
                    //   Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //       builder: (context) => const NewArticlePage(),
                    //     ),
                    //   );
                    // } else if (selectedIndex == 1) {
                    //   Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //       builder: (context) => const NewEventPage(),
                    //     ),
                    //   );
                    // } else if (selectedIndex == 2) {
                    //   Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //       builder: (context) => const AddBudgetPage(),
                    //     ),
                    //   );
                    // }
                  },
                ),
              )
            : null,
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      ),
    );
  }
}
