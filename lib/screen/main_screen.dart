import 'package:flutter/material.dart';
import 'package:mad/screen/favorite_screen.dart';
import 'package:mad/screen/home_screen.dart';
import 'package:mad/screen/notification_screen.dart';
import 'package:mad/screen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;

  List<Widget> screensList = [
    HomeScreen(),
    FavoriteScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];


  void _onNavBarClickHandle(int index){
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    List<BottomNavigationBarItem> bottomNavBarItem = [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.pinkAccent),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite", backgroundColor: Colors.pinkAccent),
      BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification", backgroundColor: Colors.pinkAccent),
      BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile", backgroundColor: Colors.pinkAccent),

    ];

    final bottomNavBar = BottomNavigationBar(
        currentIndex: _currentIndex,
        items: bottomNavBarItem,
        onTap: _onNavBarClickHandle,
      showUnselectedLabels: true,
      showSelectedLabels: true,
    );


    return Scaffold(
      body: screensList.elementAt(_currentIndex),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
