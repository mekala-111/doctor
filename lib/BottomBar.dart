import 'package:demo2/page.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;

  const BottomNavBar({super.key, required this.currentIndex});

  void navigateTo(BuildContext context, int index) {
    if (index == currentIndex) return; // Avoid navigating to the same page

    Widget page;
    switch (index) {
      case 0:
        page = HomePage();
        break;
        case 1:
        page = ComingSoonPage();
        break;
        case 2:
        page = ComingSoonPage();
        break;
        case 3:
        page = ComingSoonPage();
        break;
      // Add more cases for other screens
      default:
        return;
    }

    // Use pushReplacement to avoid stacking pages
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF0055AA),
      unselectedItemColor: Colors.grey,
      onTap: (index) => navigateTo(context, index),
      items: [
       BottomNavigationBarItem(
  icon: Image.asset('assets/home.png',  ),
  label: 'Home', // Empty label
),
BottomNavigationBarItem(
  icon: Image.asset('assets/publish.png', ),
  label: 'Publish', // Empty label
),
BottomNavigationBarItem(
  icon: Image.asset('assets/visits.png', ),
  label: 'Visits', // Empty label
),
BottomNavigationBarItem(
  icon: Image.asset('assets/quries.png', ),
  label: 'Queries', // Empty label
),

      ],
    );
  }
}
