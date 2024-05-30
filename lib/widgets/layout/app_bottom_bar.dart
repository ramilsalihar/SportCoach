import 'package:flutter/material.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final int selectedIndex;
  final void Function(int) onItemTapped;

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      showUnselectedLabels: true,
      currentIndex: widget.selectedIndex,
      items: [
        customNavBarItem('assets/icons/athletes.png', 'Athletes', 0),
        customNavBarItem('assets/icons/training.png', 'Training', 1),
        customNavBarItem('assets/icons/calendar.png', 'Calendar', 2),
        customNavBarItem('assets/icons/rating.png', 'Rating', 3),
        customNavBarItem('assets/icons/settings.png', 'Settings', 4),
      ],
      onTap: widget.onItemTapped,
    );
  }

  BottomNavigationBarItem customNavBarItem(
      String path, String label, int index) {
    return BottomNavigationBarItem(
      label: label,
      icon: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 30,
            width: 30,
            child: widget.selectedIndex == index
                ? Image.asset(
                    path,
                    color: Colors.blue,
                  )
                : Image.asset(
                    path,
                  ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
