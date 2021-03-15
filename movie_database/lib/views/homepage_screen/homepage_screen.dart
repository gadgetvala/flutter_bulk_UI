import 'package:flutter/material.dart';

import './widgets/inTheater.dart';

class HomepageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            leading: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            title: null,
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: PreferredSize(
                child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.black.withOpacity(0.3),
                  labelColor: Colors.black,
                  indicatorColor: Color(0xffEF738F),
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 4.0,
                        color: Color(0xffF27190),
                      ),
                      insets: EdgeInsets.symmetric(horizontal: 30.0)),
                  tabs: [
                    Tab(
                      child: Text('In Theater', style: TextStyle(fontSize: 22)),
                    ),
                    Tab(
                      child: Text(
                        'Box Office',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Company',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ],
                ),
                preferredSize: Size.fromHeight(30.0)),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(Icons.search, color: Colors.black),
              ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              InTheater(),
              Container(
                child: Center(
                  child: Text('Box Office'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Company'),
                ),
              )
            ],
          )),
    );
  }
}
