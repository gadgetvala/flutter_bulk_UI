import 'package:flutter/material.dart';
import 'package:softwarelab/res/res.dart';

class TimeListSelector extends StatelessWidget {
  final List<String> items;
  final Function setSelectedItem;
  final String? selectedItem;

  const TimeListSelector({
    Key? key,
    required this.items,
    required this.setSelectedItem,
    this.selectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 10,
        childAspectRatio: 2.8,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final Color backgroundColor =
            (selectedItem != null && selectedItem == items[index])
                ? colors.secondary
                : colors.textFieldBackground;

        return GestureDetector(
          onTap: () {
            setSelectedItem(items[index]);
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                items[index],
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
