import 'package:flutter/material.dart';
import 'package:mini_proj_eclub/constants.dart';
import 'package:mini_proj_eclub/home_screen/components/app_bar.dart';
import 'package:mini_proj_eclub/home_screen/home_screen.dart';
import 'package:mini_proj_eclub/screens/club_screen/club_screen.dart';
import 'package:mini_proj_eclub/screens/profile_screen/profile_screen.dart';
import 'package:mini_proj_eclub/screens/search_screen/search_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  List<Widget> _children = [
    HomeScreen(),
    ClubScreen(),
    SearchScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
                  backgroundColor: kPrimaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  title: Text("Clubs"),
                  backgroundColor: kPrimaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text("Search"),
                  backgroundColor: kPrimaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Profile"),
                  backgroundColor: kPrimaryColor)
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            }));
  }
}
