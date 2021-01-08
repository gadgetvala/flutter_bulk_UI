import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import './homepage_screen.dart';

class BottomDrawer extends StatefulWidget {
  static String routeName = '/bottom-drawer';

  @override
  _BottomDrawerState createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
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
      body: HomepageScreen(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.0),
            topRight: Radius.circular(35.0),
          ),
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: GNav(
              curve: Curves.easeOutExpo,
              duration: Duration(milliseconds: 900),
              gap: 5,
              activeColor: Color(0xffFF9B70),
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              tabs: [
                GButton(
                  icon: Icons.home,
                ),
                GButton(
                  icon: Icons.priority_high_outlined,
                ),
                GButton(
                  icon: Icons.book_online,
                ),
                GButton(
                  icon: Icons.bookmark_border,
                  text: 'Bookmarks',
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
