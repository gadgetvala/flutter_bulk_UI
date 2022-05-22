import 'package:flutter/material.dart';
import 'package:softwarelab/model/ui_model/onboarding_screen_model.dart';
import 'package:softwarelab/res/res.dart';
import 'package:softwarelab/shared/cta_button.dart';
import 'package:softwarelab/shared/progress_indicator_widget.dart';
import 'package:softwarelab/view/auth/login_screen/login_screen.dart';
import 'package:softwarelab/view/auth/signup_screen/signup_screen.dart';

class OnBoardingPageWidget extends StatelessWidget {
  final OnboardingScreenModel pageModel;
  final int itemCount;
  final int currentIndex;

  const OnBoardingPageWidget({
    Key? key,
    required this.pageModel,
    required this.itemCount,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mq = MediaQuery.of(context).size;

    return Container(
      height: mq.height,
      width: mq.width,
      color: pageModel.primaryButtonBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              pageModel.backgroundImage,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  Text(
                    pageModel.heading,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    pageModel.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 10,
                    width: 100,
                    child: ProgressIndicatorWidget(
                      currentIndex: currentIndex,
                      itemCount: itemCount,
                    ),
                  ),
                  const SizedBox(height: 40),
                  CTAButton(
                    title: pageModel.primaryButtonTitle,
                    backgroundColor: pageModel.primaryButtonBackgroundColor,
                    width: 230,
                    onTap: () {
                      Navigator.of(context).pushNamed(SignupScreen.id);
                    },
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(LoginScreen.id);
                      // Navigator.of(context)
                      //     .pushReplacementNamed(LoginScreen.id);
                    },
                    child: const Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
