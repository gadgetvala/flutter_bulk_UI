import 'package:flutter/material.dart';
import 'package:softwarelab/res/res.dart';
import 'package:softwarelab/shared/cta_button.dart';
import 'package:softwarelab/shared/input_fields_common.dart';
import 'package:softwarelab/view/auth/forgot_password_screen/forgot_password_screen.dart';
import 'package:softwarelab/shared/other_login_widget.dart';
import 'package:softwarelab/view/auth/signup_screen/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String id = '/auth/login_screen';

  const LoginScreen({Key? key}) : super(key: key);

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
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'New here!',
                        style: TextStyle(
                          color: colors.lightText,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(SignupScreen.id);
                        },
                        child: Text(
                          ' Create account',
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
                        hintText: 'Password',
                        prefixIcon: const Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.black,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              ForgotPasswordScreen.id,
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Forgot?',
                                  style: TextStyle(
                                    color: colors.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const CTAButton(
                        title: 'Login',
                        height: 45,
                        width: double.infinity,
                      ),
                    ],
                  ),

                  /// Extar login options
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'or login with',
                        style: TextStyle(
                          color: colors.lightText,
                        ),
                      ),
                    ],
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
                ],
              ),
            ),
          )),
    );
  }
}
