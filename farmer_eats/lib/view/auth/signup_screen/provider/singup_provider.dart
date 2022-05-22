import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:softwarelab/view/auth/signup_screen/widget/signup_page1.dart';
import 'package:softwarelab/view/auth/signup_screen/widget/signup_page2.dart';
import 'package:softwarelab/view/auth/signup_screen/widget/signup_page3.dart';
import 'package:softwarelab/view/auth/signup_screen/widget/singup_completed.dart';
import 'package:softwarelab/view/auth/signup_screen/widget/singup_page4.dart';

final singupProvider =
    ChangeNotifierProvider.autoDispose((ref) => SingupProvider());

class SingupProvider extends ChangeNotifier {
  // Variables
  late Timer carosalPeriodic;
  int currentPage = 0;
  final pageController = PageController();
  final List<Widget> data = [
    const SingupPage1(),
    const SingupPage2(),
    const SingupPage3(),
    const SingupPage4(),
    const SingupCompleted(),
  ];
  String? selectedState;
  final List<String> allState = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhan',
    'West Bengal'
  ];
  String? selectedDay;
  String? selectedTimeList;
  final List<String> allTimeList = [
    '08:00am - 10:00am',
    '10:00am - 01:00pm',
    '01:00pm - 04:00pm',
    '04:00pm - 07:00pm',
    '07:00pm - 10:00pm',
  ];

  // Consturctor
  SingupProvider();

  // Disposing Methods
  @override
  void dispose() {
    carosalPeriodic.cancel();
    pageController.dispose();
    super.dispose();
  }

  // Getters
  get currentPageIndex => currentPage;

  // Setters
  void setCurrentPage(int index) {
    currentPage = index;
    notifyListeners();
  }

  // Change Current Page
  void changeCurrentPage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  // Update Selected State
  void setSelectedState(String n) {
    selectedState = n;
    notifyListeners();
  }

  // Update Selected Day
  void setSelectedDay(String n) {
    selectedDay = n;
    notifyListeners();
  }

  // Update Selected Day
  void setSelectedTimeList(String n) {
    selectedTimeList = n;
    notifyListeners();
  }
}
