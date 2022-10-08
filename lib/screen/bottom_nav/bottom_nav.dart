import 'package:bottom_nav_drop_down/screen/bottom_nav/bottom_nav_1.dart';
import 'package:bottom_nav_drop_down/screen/bottom_nav/bottom_nav_2.dart';
import 'package:bottom_nav_drop_down/screen/bottom_nav/bottom_nav_3.dart';
import 'package:bottom_nav_drop_down/screen/bottom_nav/bottom_nav_4.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({Key? key}) : super(key: key);

  @override
  State<Bottom_Nav> createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  final pages = [
    Bottom_Nav_1(),
    Bottom_Nav_2(),
    Bottom_Nav_3(),
    Bottom_Nav_4()
  ];
  var _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
      //     BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      //   ],
      //   currentIndex: _page,
      //   onTap: (index) {
      //     setState(() {
      //       _page = index;
      //     });
      //   },
      //   backgroundColor: Colors.black,
      //   fixedColor: Colors.orange,
      //   unselectedItemColor: Colors.yellow,
      //   unselectedLabelStyle: TextStyle(color: Colors.black),
      // ),

      bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.limeAccent,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(seconds: 1),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          items: [
            Icon(Icons.home),
            Icon(Icons.chat),
            Icon(Icons.call),
            Icon(Icons.person),
          ]),
      appBar: AppBar(
        leading: Icon(Icons.menu),
      ),
      body: pages[_page],
    );
  }
}
