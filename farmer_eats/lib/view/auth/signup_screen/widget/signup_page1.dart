import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:softwarelab/res/res.dart';
import 'package:softwarelab/shared/cta_button.dart';
import 'package:softwarelab/shared/input_fields_common.dart';
import 'package:softwarelab/shared/other_login_widget.dart';
import 'package:softwarelab/view/auth/login_screen/login_screen.dart';
import 'package:softwarelab/view/auth/signup_screen/provider/singup_provider.dart';

class SingupPage1 extends ConsumerWidget {
  const SingupPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(singupProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// First Container
                  Text(
                    'Singup 1 of 4',
                    style: TextStyle(
                      color: colors.lightText,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OtherLoginWidget(image: assets.googleLogo),
                      OtherLoginWidget(image: assets.appleLogo),
                      OtherLoginWidget(image: assets.fbLogo),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'or signup with',
                        style: TextStyle(
                          color: colors.lightText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  InputFieldsCommon(
                    controller: TextEditingController(),
                    errorText: null,
                    hintText: 'Full Name',
                    prefixIcon: const Icon(
                      Icons.person_outline_rounded,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InputFieldsCommon(
                    controller: TextEditingController(),
                    errorText: null,
                    hintText: 'Email Address',
                    prefixIcon: const Icon(
                      Icons.alternate_email_rounded,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InputFieldsCommon(
                    controller: TextEditingController(),
                    errorText: null,
                    hintText: 'Phone Number',
                    prefixIcon: const Icon(
                      Icons.phone_outlined,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InputFieldsCommon(
                    controller: TextEditingController(),
                    errorText: null,
                    hintText: 'Password',
                    prefixIcon: const Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InputFieldsCommon(
                    controller: TextEditingController(),
                    errorText: null,
                    hintText: 'Re-enter Password',
                    prefixIcon: const Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    LoginScreen.id,
                    (route) => false,
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              CTAButton(
                title: 'Continue',
                width: 200,
                onTap: () {
                  provider.changeCurrentPage(1);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
