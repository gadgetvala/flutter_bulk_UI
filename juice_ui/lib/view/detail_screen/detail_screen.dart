import 'package:flutter/material.dart';
import 'package:juice/dev_data/data.dart';
import 'package:juice/res/res.dart';
import 'package:juice/shared_widget/app_top_bar.dart';
import 'package:juice/view/detail_screen/widget/extra_features_custom_row.dart';
import 'package:juice/view/detail_screen/widget/hero_container.dart';

class DetailScreen extends StatefulWidget {
  static const String id = '/detailScreen';
  final int selectedIndex;

  const DetailScreen({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Map<String, dynamic> selectedData;

  @override
  void initState() {
    final List<Map<String, dynamic>> foldedData =
        data.fold([], (value, element) => [...value, ...element]);

    selectedData =
        foldedData.firstWhere((el) => el['id'] == widget.selectedIndex);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const AppTopBar(),
              const SizedBox(height: 80),
              HeroContainer(
                darkColor: selectedData["color_dark"] as Color,
                normalColor: selectedData["color"] as Color,
                image: selectedData["image"] as String,
                price: selectedData['price'] as int,
                id: widget.selectedIndex,
              ),
              // const SizedBox(height: 20),
              ExtraFeaturesCustomRow(
                colorDark: selectedData["color_dark"] as Color,
                price: '0.70',
                text: 'Extra Sugar',
              ),
              const SizedBox(height: 20),
              ExtraFeaturesCustomRow(
                colorDark: selectedData["color_dark"] as Color,
                price: '0.70',
                text: 'Extra Orange',
              ),
              const SizedBox(height: 20),
              ExtraFeaturesCustomRow(
                colorDark: selectedData["color_dark"] as Color,
                price: '0.70',
                text: 'Extra Soda',
              ),
              const SizedBox(height: 20),
              ExtraFeaturesCustomRow(
                colorDark: selectedData["color_dark"] as Color,
                price: '1.00',
                text: 'Extra Rum',
              ),

              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
