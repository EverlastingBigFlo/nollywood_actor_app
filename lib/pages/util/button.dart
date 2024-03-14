import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final icon;
  final String number;
  const MyButton({super.key, this.icon, required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Icon(icon),
          SizedBox(height: 25),
          Text(number),
        ],
      ),
    );
  }
}
