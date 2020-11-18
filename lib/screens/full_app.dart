import 'package:flutter/material.dart';

import 'package:whatsapp/screens/activity_screen.dart';
import 'package:whatsapp/screens/notification_screen.dart';
import 'package:whatsapp/screens/profile_screen.dart';

class FullApp extends StatefulWidget {
  @override
  _FullAppState createState() => _FullAppState();
}

class _FullAppState extends State<FullApp> {
  int selectedIndex = 0;

  List<Widget> widgetOptions = <Widget>[
    ActivityScreen(),
    NotificationScreen(),
    MyProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey[300],
              ),
              // title: Text('Home'),
              label: 'Home',
              activeIcon: Icon(
                Icons.home,
                color: Colors.blueAccent,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.grey[300],
              ),
              // title: Text('Notifications'),
              label: 'Notifications',
              activeIcon: Icon(
                Icons.notifications,
                color: Colors.blueAccent,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey[300],
              ),
              // title: Text('Profile'),
              label: 'Profile',
              activeIcon: Icon(
                Icons.person,
                color: Colors.blueAccent,
              )),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: widgetOptions.elementAt(selectedIndex),
    );
  }
}
