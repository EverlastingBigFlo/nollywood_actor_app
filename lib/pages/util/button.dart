import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget icon;
  final String number;

  const MyButton({super.key, required this.icon, required this.number});

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
          Text(number),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
