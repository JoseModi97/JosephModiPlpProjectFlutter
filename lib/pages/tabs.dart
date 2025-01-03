import 'package:flutter/material.dart';
import 'package:quize/helper/style.dart';
import 'package:quize/pages/home.dart';
import 'package:quize/pages/leaderboard.dart';
import 'package:quize/pages/profile.dart';

class tabs extends StatefulWidget {
  tabs({Key? key}) : super(key: key);

  static const String page_id = "Tabs";

  @override
  _tabsState createState() => _tabsState();
}

class _tabsState extends State<tabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: TabBar(
          labelColor: appColor,
          unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
          labelPadding: EdgeInsets.symmetric(horizontal: 0),
          labelStyle: TextStyle(
            fontFamily: 'regular',
            fontSize: 14,
          ),
          onTap: (int index) => setState(() => _currentIndex = index),
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                color: _currentIndex == 0
                    ? appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Home',
            ),
            Tab(
              icon: Icon(
                Icons.leaderboard,
                color: _currentIndex == 1
                    ? appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Leaderboard',
            ),
            Tab(
              icon: Icon(
                Icons.person,
                color: _currentIndex == 2
                    ? appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Profile',
            ),
          ],
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            home(),
            leaderboard(),
            profile(),
          ],
        ),
      ),
    );
  }
}
