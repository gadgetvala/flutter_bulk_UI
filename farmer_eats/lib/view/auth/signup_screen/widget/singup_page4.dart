import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:softwarelab/res/res.dart';
import 'package:softwarelab/shared/cta_button.dart';
import 'package:softwarelab/shared/time_list_selector.dart';
import 'package:softwarelab/shared/week_selector_widget.dart';
import 'package:softwarelab/view/auth/signup_screen/provider/singup_provider.dart';

class SingupPage4 extends ConsumerWidget {
  const SingupPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(singupProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// First Container
                Text(
                  'Singup 4 of 4',
                  style: TextStyle(
                    color: colors.lightText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Business Hours',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Choose the hours your farm is open for pickups.\nThis will allow customers to order deliveries.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: colors.lightText,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: WeekSelector(
                    setSelectedDay: provider.setSelectedDay,
                    selectedDay: provider.selectedDay,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  child: TimeListSelector(
                    setSelectedItem: provider.setSelectedTimeList,
                    selectedItem: provider.selectedTimeList,
                    items: provider.allTimeList,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  provider.changeCurrentPage(2);
                },
                child: const Icon(Icons.arrow_back_outlined),
              ),
              CTAButton(
                title: 'Continue',
                width: 200,
                onTap: () {
                  provider.changeCurrentPage(4);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
