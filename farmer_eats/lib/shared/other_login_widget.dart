import 'package:flutter/material.dart';
import 'package:softwarelab/res/res.dart';

class OtherLoginWidget extends StatelessWidget {
  final String image;

  const OtherLoginWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 50,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: colors.borderColor),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: Image.asset(image),
      ),
    );
  }
}
