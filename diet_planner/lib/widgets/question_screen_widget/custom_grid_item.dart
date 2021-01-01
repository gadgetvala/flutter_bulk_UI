import 'package:flutter/material.dart';

class CustomGridItem extends StatelessWidget {
  final String customText;
  final IconData customIcon;
  final int objectIndex;
  final Function setCurrentIndex;
  final int isCurrent;

  CustomGridItem({
    @required this.customText,
    @required this.customIcon,
    @required this.objectIndex,
    @required this.setCurrentIndex,
    @required this.isCurrent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 160,
      decoration: BoxDecoration(
        color: isCurrent == objectIndex ? Color(0xffFFF1FD) : Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(
          color:
              isCurrent == objectIndex ? Color(0xffFFF1FD) : Color(0xffE2E7ED),
          width: 2,
        ),
      ),
      margin: const EdgeInsets.all(16),
      padding: EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          setCurrentIndex(objectIndex);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xffC47EB2),
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
                border: Border.all(
                  color: Colors.grey,
                  width: isCurrent == objectIndex ? 0 : 1,
                ),
              ),
              child: Icon(
                customIcon,
                size: 40,
                color: Color(0xffffffff),
              ),
            ),
            SizedBox(height: 20),
            Text(
              customText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
