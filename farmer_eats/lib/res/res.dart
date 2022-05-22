import 'package:flutter/material.dart';
import 'package:softwarelab/res/app_sizes.dart';
import 'package:softwarelab/res/assets.dart';
import 'package:softwarelab/res/colors.dart';

late Assets assets;
late AppColors colors;
late AppSizes sizes;

void initializeResources({required BuildContext context}) {
  sizes = AppSizes()..initializeSize(context);
  colors = AppColors();
  assets = Assets();
}
