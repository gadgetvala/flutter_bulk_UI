import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String headerText;
  final double customFontSize;
  final FontWeight customFontWeight;
  final Color customFontColor;
  final double customPadding;
  final TextAlign position;

  CustomHeader({
    this.headerText,
    this.customFontSize,
    this.customFontWeight,
    this.customFontColor,
    this.customPadding,
    this.position,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(customPadding),
      child: Text(
        headerText,
        style: TextStyle(
          fontSize: customFontSize,
          fontWeight: customFontWeight,
          color: customFontColor,
        ),
        textAlign: position,
      ),
    );
  }
}
