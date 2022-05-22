import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:softwarelab/view/onboarding_screen/provider/onboarding_provider.dart';
import 'package:softwarelab/view/onboarding_screen/widgets/onboarding_page_widget.dart';

class OnboardingScreen extends ConsumerWidget {
  static const String id = "onboarding_screen";

  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(onboardingProvider);

    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: provider.pageController,
          itemCount: provider.data.length,
          onPageChanged: (int i) => provider.setCurrentPage(i),
          itemBuilder: (_, int index) {
            return OnBoardingPageWidget(
              pageModel: provider.data[index],
              itemCount: provider.data.length,
              currentIndex: index,
            );
          },
        ),
      ),
    );
  }
}
