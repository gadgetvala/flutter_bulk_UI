import 'package:flutter/material.dart';
import 'package:softwarelab/res/res.dart';

class CommonDropdown extends StatelessWidget {
  final String hintText;
  final String? selectedValue;
  final Function setSelectedValue;
  final List<String> dropDownItems;

  const CommonDropdown({
    Key? key,
    required this.hintText,
    required this.dropDownItems,
    this.selectedValue,
    required this.setSelectedValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      decoration: BoxDecoration(
        color: colors.textFieldBackground,
        border: Border.all(color: colors.borderColor),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          isExpanded: true,
          hint: Text(hintText),
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
          items: dropDownItems.map(_buildDropDownMenuItems).toList(),
          onChanged: (value) {
            setSelectedValue(value);
          },
        ),
      ),
    );
  }

  DropdownMenuItem<String> _buildDropDownMenuItems(item) {
    return DropdownMenuItem(
      value: item.toString(),
      child: Text(
        item.toString(),
      ),
    );
  }
}
