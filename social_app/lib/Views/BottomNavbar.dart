import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/Utils/const.dart';

class BottomNavbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavbarState();
  }
}

class BottomNavbarState extends State<BottomNavbar> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: CupertinoTabBar(
        onTap: (index){
          setState(() {
            pageIndex = index;
          });
        },
        currentIndex: pageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat, size: 35,), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.group, size: 35,), label: 'Group'),
          BottomNavigationBarItem(icon: Icon(Icons.rss_feed, size: 35,), label: 'Feed'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box, size: 35,), label: 'Profile'),
        ],),
    );
  }
}