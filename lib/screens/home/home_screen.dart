import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/layout/app_bottom_bar.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final PageController _pageController = PageController();

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
            Center(
              child: Text('Medication'),
            ),
            Center(
              child: Text('Medication'),
            ),
            Center(
              child: Text('Medication'),
            ),
            Center(
              child: Text('Medication'),
            ),
            Center(
              child: Text('Medication'),
            ),
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
        floatingActionButton: SizedBox(
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
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      ),
    );
  }
}
