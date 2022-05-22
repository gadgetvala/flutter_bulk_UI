import 'package:flutter/material.dart';
import 'package:softwarelab/res/res.dart';
import 'package:softwarelab/shared/cta_button.dart';
import 'package:softwarelab/view/auth/login_screen/login_screen.dart';

class SingupCompleted extends StatelessWidget {
  const SingupCompleted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(
                Icons.done_rounded,
                size: 120,
                color: colors.tertiary,
              ),
              const SizedBox(height: 20),
              const Text(
                'You’re all done!',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Hang tight!  We are currently reviewing your account and\nwill follow up with you in 2-3 business days. In the\nmeantime, you can setup your inventory.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: colors.lightText,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          CTAButton(
            title: 'Got it!',
            width: double.infinity,
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                LoginScreen.id,
                (route) => false,
              );
            },
          )
        ],
      ),
    );
  }
}
