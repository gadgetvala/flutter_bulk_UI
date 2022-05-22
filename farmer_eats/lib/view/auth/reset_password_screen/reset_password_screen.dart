import 'package:flutter/material.dart';
import 'package:softwarelab/res/res.dart';
import 'package:softwarelab/shared/cta_button.dart';
import 'package:softwarelab/shared/input_fields_common.dart';
import 'package:softwarelab/view/auth/login_screen/login_screen.dart';

class ResetPasswordScren extends StatelessWidget {
  static const String id = '/auth/reset_password_screen';

  const ResetPasswordScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'FarmerEats',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),

                /// First Container
                const Text(
                  'Reset Password?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Remember your password? ',
                      style: TextStyle(
                        color: colors.lightText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(LoginScreen.id);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: colors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),

                /// Login Containers
                Column(
                  children: [
                    InputFieldsCommon(
                      controller: TextEditingController(),
                      errorText: null,
                      hintText: 'New Passowrd',
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    InputFieldsCommon(
                      controller: TextEditingController(),
                      errorText: null,
                      hintText: 'Confirm New Passowrd',
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 30),
                    CTAButton(
                      title: 'Submit',
                      height: 45,
                      width: double.infinity,
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          LoginScreen.id,
                          (route) => false,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
