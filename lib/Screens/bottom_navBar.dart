import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabTapped;

  const BottomNavBar({super.key, 
    required this.selectedIndex,
    required this.onTabTapped,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: [
        Icon(
          Icons.home,
          size: 25,
          color: selectedIndex == 0
              ? Color.fromRGBO(98, 71, 170, 1)
              : Colors.white,
        ),
        Icon(
          Icons.query_stats_sharp,
          size: 25,
          color: selectedIndex == 1
              ? Color.fromRGBO(98, 71, 170, 1)
              : Colors.white,
        ),
        Icon(
          Icons.mobile_friendly_outlined,
          size: 25,
          color: selectedIndex == 2
              ? Color.fromRGBO(98, 71, 170, 1)
              : Colors.white,
        ),
        Icon(
          Icons.feed_outlined,
          size: 25,
          color: selectedIndex == 3
              ? Color.fromRGBO(98, 71, 170, 1)
              : Colors.white,
        ),
      ],
      index: selectedIndex,
      onTap: onTabTapped,
      height: 50,
      backgroundColor: Colors.white,
      buttonBackgroundColor: Color.fromRGBO(238, 238, 238, 1),
      color: Color.fromRGBO(57, 37, 110, 1),

    animationDuration: const Duration(milliseconds: 300),
    );
  }
}
