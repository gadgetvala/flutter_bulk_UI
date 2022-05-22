import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final int itemCount;
  final int currentIndex;

  const ProgressIndicatorWidget({
    Key? key,
    required this.itemCount,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, int index) {
        return Container(
          height: 10,
          width: index == currentIndex ? 25 : 10,
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
        );
      },
    );
  }
}
