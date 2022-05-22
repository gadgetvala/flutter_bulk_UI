import 'package:flutter/material.dart';
import 'package:juice/dev_data/data.dart';
import 'package:juice/view/dashboard_screen/widget/custom_grid_card.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (_, int index) {
          return Expanded(
            child: Row(
              children: [
                CustomGridCard(
                  containerColor: data[index][0]["color"] as Color,
                  darkColor: data[index][0]["color_dark"] as Color,
                  image: data[index][0]['image'] as String,
                  itemPrice: data[index][0]["price"] as int,
                  id: data[index][0]["id"] as int,
                ),
                CustomGridCard(
                  containerColor: data[index][1]["color"] as Color,
                  darkColor: data[index][1]["color_dark"] as Color,
                  image: data[index][1]['image'] as String,
                  itemPrice: data[index][1]["price"] as int,
                  id: data[index][1]["id"] as int,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
