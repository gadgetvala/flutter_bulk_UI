import 'package:flutter/material.dart';

import './listViewItem.dart';

class HorizontalAdditionSlider extends StatelessWidget {
  final List data = [
    {
      'icon': 'assets/breakfast1.png',
      'iconName': 'Lunch',
    },
    {
      'icon': 'assets/breakfast3.png',
      'iconName': 'Break Fast',
    },
    {
      'icon': 'assets/breakfast4.png',
      'iconName': 'Dinner',
    },
    {
      'icon': 'assets/breakfast1.png',
      'iconName': 'Lunch',
    },
    {
      'icon': 'assets/breakfast3.png',
      'iconName': 'Break Fast',
    },
    {
      'icon': 'assets/breakfast4.png',
      'iconName': 'Dinner',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: Text(
              'Addition',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            height: 60.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (_, i) {
                return ListViewItem(
                  icon: data[i]['icon'],
                  iconName: data[i]['iconName'],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
