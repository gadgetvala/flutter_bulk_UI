import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:softwarelab/res/res.dart';
import 'package:softwarelab/shared/cta_button.dart';
import 'package:softwarelab/view/auth/login_screen/login_screen.dart';
import 'package:softwarelab/view/auth/reset_password_screen/reset_password_screen.dart';

class VerifyOtpScreen extends StatelessWidget {
  static const id = '/auth/verify_otp_screen';

  const VerifyOtpScreen({Key? key}) : super(key: key);

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
                  'Verify OTP',
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
                    const Pinput(
                      length: 5,
                    ),
                    const SizedBox(height: 30),
                    CTAButton(
                      title: 'Submit',
                      height: 45,
                      width: double.infinity,
                      onTap: () {
                        Navigator.of(context).pushNamed(ResetPasswordScren.id);
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Resent Code',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
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
