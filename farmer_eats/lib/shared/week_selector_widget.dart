import 'package:flutter/material.dart';
import 'package:softwarelab/res/res.dart';

class WeekSelector extends StatelessWidget {
  final String? selectedDay;
  final Function setSelectedDay;
  final List<String> days = ['M', 'T', 'W', 'Th', 'F', 'S', 'Su'];

  WeekSelector({
    Key? key,
    required this.setSelectedDay,
    this.selectedDay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: days.length,
      itemBuilder: (_, int index) {
        final Color backgroundColor =
            (selectedDay != null && selectedDay == days[index])
                ? colors.primary
                : colors.textFieldBackground;
        final Color whiteColor =
            (selectedDay != null && selectedDay == days[index])
                ? colors.white
                : Colors.black;

        return GestureDetector(
          onTap: () {
            setSelectedDay(days[index]);
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                days[index],
                style: TextStyle(
                  color: whiteColor,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
