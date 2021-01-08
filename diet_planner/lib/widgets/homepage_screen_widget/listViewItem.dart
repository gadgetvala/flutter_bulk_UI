import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  final String icon;
  final String iconName;

  ListViewItem({
    this.icon,
    this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Color(0xffE5E9EF),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(40.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              icon,
            ),
            SizedBox(width: 10),
            Text(
              iconName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
