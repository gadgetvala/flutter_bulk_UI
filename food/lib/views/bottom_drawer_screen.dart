import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import './homepage_screen.dart';

class BottomDrawerScreen extends StatefulWidget {
  static String routeName = '/bottom-drawer';
  @override
  _BottomDrawerScreenState createState() => _BottomDrawerScreenState();
}

class _BottomDrawerScreenState extends State<BottomDrawerScreen> {
  final List<Widget> _pages = [
    HomepageScreen(),
    HomepageScreen(),
    HomepageScreen(),
    HomepageScreen(),
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Color(0xffC22A1F),
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: GNav(
              color: Color(0xffE3B1AC),
              gap: 10,
              activeColor: Color(0xffECE3E2),
              iconSize: 25,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              duration: Duration(milliseconds: 600),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.chat_sharp,
                  text: 'Chat',
                ),
                GButton(
                  icon: Icons.bookmark_border,
                  text: 'List',
                ),
                GButton(
                  icon: Icons.supervised_user_circle,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedPageIndex,
              onTabChange: (index) {
                _selectPage(index);
              },
            ),
          ),
        ),
      ),
    );
  }
}
