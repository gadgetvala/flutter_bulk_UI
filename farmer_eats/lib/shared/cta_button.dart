import 'package:flutter/material.dart';
import 'package:softwarelab/res/res.dart';

class CTAButton extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final VoidCallback? onTap;

  const CTAButton({
    Key? key,
    required this.title,
    this.backgroundColor,
    this.height,
    this.width,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 40,
        width: width ?? 100,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor ?? colors.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: colors.white.withOpacity(0.9),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
