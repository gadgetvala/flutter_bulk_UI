import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:juice/res/res.dart';
import 'package:juice/shared_widget/app_top_bar.dart';
import 'widget/custom_grid_view.dart';

class DashboardScreen extends StatelessWidget {
  static const id = '/dashboardScreen';

  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        elevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        child: SvgPicture.asset(
          assets.moreIcon,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const AppTopBar(),
              const SizedBox(height: 40),
              const CustomGridView(),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
