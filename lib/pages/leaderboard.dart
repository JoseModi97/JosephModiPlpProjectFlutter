import 'package:flutter/material.dart';
import 'package:quize/helper/style.dart';

class leaderboard extends StatefulWidget {
  leaderboard({Key? key}) : super(key: key);

  static const String page_id = "Leaderboard";

  @override
  _leaderboardState createState() => _leaderboardState();
}

class _leaderboardState extends State<leaderboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      appColor,
                      styleColor,
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Leaderboard',
                        style: whiteHeadText(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          _bottomContainer()
        ],
      ),
    );
  }

  Widget _buildMenu() {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade300, blurRadius: 2),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }

  Widget _bottomContainer() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          leaderContainer('Peter Salasya', 'assets/images/salasya.jpg',
              'I am an upcoming politician ready to make change', '250948'),
          leaderContainer(
              'Joseph Odhiambo',
              'assets/images/man.jpg',
              'I am a software engineer who is passionate about learning',
              '270748'),
          leaderContainer(
              'Dave Chapelle',
              'assets/images/dave.jpg',
              'I am a well established comedian based in the United States',
              '205000'),
          leaderContainer('Michelle Achieng', 'assets/images/michelle.jpg',
              'I am a journalist in a well known media house', '100930'),
        ],
      ),
    );
  }

  Widget leaderContainer(String name, String src, String desc, String point) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 2),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image:
                    DecorationImage(image: AssetImage(src), fit: BoxFit.cover)),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    desc,
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Text(
                'Point',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                point,
                style: TextStyle(color: appColor, fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
