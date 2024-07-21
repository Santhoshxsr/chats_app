import 'package:chats_app/screens/calls_screen.dart';
import 'package:chats_app/screens/user_profile.dart';
import 'package:chats_app/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Allchats_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _chilren = [
    AllchatsScreen(),
    CallsScreen(),
    Container(),
    UserProfile(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _chilren[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.primaryColor2,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_fill), label: "Chats"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.video_camera_solid), label: "Calls"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
    );
  }
}
