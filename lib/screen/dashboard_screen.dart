import 'package:flutter/material.dart';
import 'package:techcoder_real_easte/screen/map_screen.dart';
import 'package:techcoder_real_easte/screen/setting_screen.dart';

import '../utils/themeclass.dart';
import 'chat_list_screen.dart';
import 'home_screen.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        HomeScreen(),
        SavedScreen(),
        ChatListScreen(),
        SettingScreen(),
      ][currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        selectedItemColor: ThemeClass.primaryColor,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home_filled,
              color: ThemeClass.primaryColor,
            ),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.bookmark,
              color: ThemeClass.primaryColor,
            ),
            icon: Icon(Icons.bookmark),
            label: 'Saved  Properties',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.chat,
              color: ThemeClass.primaryColor,
            ),
            icon: Icon(Icons.chat),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.account_circle_rounded,
              color: ThemeClass.primaryColor,
            ),
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
