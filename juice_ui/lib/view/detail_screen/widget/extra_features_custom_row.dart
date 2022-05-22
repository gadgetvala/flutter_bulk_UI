import 'package:flutter/material.dart';
import 'package:juice/res/res.dart';

class ExtraFeaturesCustomRow extends StatelessWidget {
  final Color colorDark;
  final String text;
  final String price;

  const ExtraFeaturesCustomRow({
    Key? key,
    required this.colorDark,
    required this.text,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$ $price',
          style: TextStyle(
            color: colorDark,
            fontSize: 20,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: colorDark,
            fontSize: 20,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: colors.secondaryBorderColor,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            child: Center(
              child: Text(
                'Add',
                style: TextStyle(
                  color: colors.secondaryBorderColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
