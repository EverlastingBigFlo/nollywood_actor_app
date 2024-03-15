import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget icon;
  final String number;
  final Color? numberColor;

  const MyButton(
      {super.key, required this.icon, required this.number, this.numberColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          IconButton(
            icon: icon is IconData ? Icon(icon as IconData) : icon as Widget,
            onPressed: () {},
          ),
          Text(
            number,
            style: TextStyle(color: numberColor ?? Colors.white),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
