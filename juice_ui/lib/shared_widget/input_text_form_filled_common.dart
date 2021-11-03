import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:juice/res/res.dart';

class InputTextFormFilledCommon extends StatelessWidget {
  final String text;

  const InputTextFormFilledCommon({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: colors.borderColor.withOpacity(0.5),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colors.borderColor),
            borderRadius: BorderRadius.circular(50),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colors.borderColor),
            borderRadius: BorderRadius.circular(50),
          ),
          suffixIcon: SvgPicture.asset(
            assets.searchBarIcon,
            width: 8,
            height: 8,
          ),
          hintStyle: TextStyle(
            color: colors.secondaryFontColor.withOpacity(0.4),
          ),
          hintText: text,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
    );
  }
}
