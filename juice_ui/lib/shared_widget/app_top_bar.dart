import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:juice/res/res.dart';
import 'package:juice/shared_widget/input_text_form_filled_common.dart';

class AppTopBar extends StatelessWidget {
  const AppTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: InputTextFormFilledCommon(text: 'Search you favorite'),
        ),
        const SizedBox(width: 30),
        SvgPicture.asset(assets.cartSingleIcon),
      ],
    );
  }
}
