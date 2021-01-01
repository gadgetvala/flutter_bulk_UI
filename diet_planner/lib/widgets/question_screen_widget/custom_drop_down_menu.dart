import 'package:flutter/material.dart';

class CustomDropDownMenu extends StatefulWidget {
  @override
  _CustomDropDownMenuState createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 90,
      ),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          color: Color(0xffE8ECF1),
          width: 1,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
          elevation: 0,
          value: _value,
          items: [
            DropdownMenuItem(child: Text("Next month"), value: 1),
            DropdownMenuItem(child: Text("Next 4 month"), value: 2),
            DropdownMenuItem(child: Text("Next 6 month"), value: 3),
            DropdownMenuItem(child: Text("Next 8 month"), value: 4)
          ],
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ),
    );
  }
}
