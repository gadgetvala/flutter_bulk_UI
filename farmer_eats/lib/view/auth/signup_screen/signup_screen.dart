import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:softwarelab/view/auth/signup_screen/provider/singup_provider.dart';

class SignupScreen extends ConsumerWidget {
  static const String id = '/auth/signup_screen';

  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(singupProvider);

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
        body: PageView.builder(
          controller: provider.pageController,
          itemCount: provider.data.length,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (int i) => provider.setCurrentPage(i),
          itemBuilder: (_, int index) {
            return provider.data[index];
          },
        ),
      ),
    );
  }
}
