import 'package:flutter/material.dart';

import './custom_grid_item.dart';

class CustomGrid extends StatefulWidget {
  @override
  _CustomGridState createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGrid> {
  int currentIndex = 0;

  void setCurrentIndex(int i) {
    setState(() {
      currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomGridItem(
              customText: 'Lost weight',
              customIcon: Icons.download_outlined,
              objectIndex: 0,
              setCurrentIndex: setCurrentIndex,
              isCurrent: currentIndex,
            ),
            CustomGridItem(
              customText: 'Stable weight',
              customIcon: Icons.storage_outlined,
              objectIndex: 1,
              setCurrentIndex: setCurrentIndex,
              isCurrent: currentIndex,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomGridItem(
              customText: 'Weight gain',
              customIcon: Icons.upload_outlined,
              setCurrentIndex: setCurrentIndex,
              objectIndex: 2,
              isCurrent: currentIndex,
            ),
            CustomGridItem(
              customText: 'Diet of certain foods',
              customIcon: Icons.cloud_sharp,
              objectIndex: 3,
              setCurrentIndex: setCurrentIndex,
              isCurrent: currentIndex,
            ),
          ],
        ),
      ],
    );
  }
}
