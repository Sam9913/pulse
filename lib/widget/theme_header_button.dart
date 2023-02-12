import 'package:flutter/material.dart';

class ThemeHeaderButton extends StatelessWidget {
  final String valueText;
  final bool isSelected;
  const ThemeHeaderButton({Key? key, required this.valueText, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isSelected ? Color(0xFF0F3892) : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 0),
              blurRadius: 5,
              spreadRadius: 1,
            )
          ]),
      child: Text(
        valueText,
        style: TextStyle(
          color: isSelected ? Colors.white : Color(0xFF0F3892),
        ),
      ),
    );
  }
}
