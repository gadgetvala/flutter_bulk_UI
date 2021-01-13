import 'package:flutter/material.dart';

import './../../models/data.dart';

class HeaderSelectionMenu extends StatelessWidget {
  final Function setSelectedItem;
  final String currentSelectedItemCode;

  HeaderSelectionMenu(
    this.setSelectedItem,
    this.currentSelectedItemCode,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 20,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Data.menuData.length,
        itemBuilder: (ctx, i) {
          return InkWell(
            onTap: () {
              setSelectedItem(Data.menuData[i]['itemCode']);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: Data.menuData[i]['itemCode'] == currentSelectedItemCode
                    ? Color(0xffC72B20)
                    : Color(0xffFBEEED),
              ),
              margin: EdgeInsets.only(right: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Image.asset(Data.menuData[i]['imgLink']),
                  SizedBox(width: 10),
                  Text(
                    Data.menuData[i]['itemName'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Data.menuData[i]['itemCode'] ==
                              currentSelectedItemCode
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
