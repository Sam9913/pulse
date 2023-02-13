import 'package:flutter/material.dart';

class ThemeRadio extends StatelessWidget {
  final int selectedValue;
  final int value;
  final String name;
  final Function() onTapFunction;
  const ThemeRadio({
    Key? key,
    required this.selectedValue,
    required this.value,
    required this.name,
    required this.onTapFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: selectedValue == value ? Color(0xFF0F3892) : Colors.white,
              border: Border.all(color: Colors.white, width: 4),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 2,
                  color: Colors.grey,
                  offset: Offset(0, 2),
                ),
              ],
            ),
          ),
          Text(name),
        ],
      ),
    );
  }
}
