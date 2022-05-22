import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:softwarelab/res/res.dart';
import 'package:softwarelab/shared/common_dropdown.dart';
import 'package:softwarelab/shared/cta_button.dart';
import 'package:softwarelab/shared/input_fields_common.dart';
import 'package:softwarelab/view/auth/signup_screen/provider/singup_provider.dart';

class SingupPage2 extends ConsumerWidget {
  const SingupPage2({Key? key}) : super(key: key);

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
                  'Singup 2 of 4',
                  style: TextStyle(
                    color: colors.lightText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Farm Info',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 30),
                InputFieldsCommon(
                  controller: TextEditingController(),
                  errorText: null,
                  hintText: 'Business Name',
                  prefixIcon: Image.asset(
                    assets.businessName,
                    height: 10,
                    width: 10,
                    scale: 4,
                  ),
                ),
                const SizedBox(height: 20),
                InputFieldsCommon(
                  controller: TextEditingController(),
                  errorText: null,
                  hintText: 'Informal Name',
                  prefixIcon: Image.asset(
                    assets.informalName,
                    height: 10,
                    width: 10,
                    scale: 4,
                  ),
                ),
                const SizedBox(height: 20),
                InputFieldsCommon(
                  controller: TextEditingController(),
                  errorText: null,
                  hintText: 'Street Address',
                  prefixIcon: Image.asset(
                    assets.streetAddress,
                    height: 10,
                    width: 10,
                    scale: 4,
                  ),
                ),
                const SizedBox(height: 20),
                InputFieldsCommon(
                  controller: TextEditingController(),
                  errorText: null,
                  hintText: 'City',
                  prefixIcon: const Icon(
                    Icons.location_on_outlined,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: CommonDropdown(
                        hintText: 'State',
                        dropDownItems: provider.allState,
                        selectedValue: provider.selectedState,
                        setSelectedValue: provider.setSelectedState,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: InputFieldsCommon(
                        controller: TextEditingController(),
                        errorText: null,
                        hintText: 'Enter Zipcode',
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  provider.changeCurrentPage(0);
                },
                child: const Icon(Icons.arrow_back_outlined),
              ),
              CTAButton(
                title: 'Continue',
                width: 200,
                onTap: () {
                  provider.changeCurrentPage(2);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
