import 'package:flutter/material.dart';
import 'package:free_banking/screens/bottomnavbar/home_screen.dart';
import 'package:free_banking/screens/bottomnavbar/my_cards_screen.dart';
import 'package:free_banking/screens/bottomnavbar/settings_screen.dart';
import 'package:free_banking/screens/bottomnavbar/statistics_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    MyCardsScreen(),
    StatisticsScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: screens[currentIndex]),
      bottomNavigationBar: SizedBox(
        height: 86,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xffF4F4F4),
          selectedItemColor: Color(0xff0066FF),
          unselectedItemColor: Color(0xff8B8B94),
          // iconSize: 30,
          unselectedLabelStyle: TextStyle(fontSize: 15),
          selectedLabelStyle: TextStyle(fontSize: 17),
          selectedIconTheme: IconThemeData(size: 32),
          unselectedIconTheme: IconThemeData(size: 29),
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_outlined),
              label: "My Cards",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outline),
              label: "Statistics",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
