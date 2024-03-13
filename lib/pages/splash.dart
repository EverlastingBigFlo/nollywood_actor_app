import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Row(
          children: [
            Center(
              child: Column(
                children: [Image(image: AssetImage('lib/assets/Group 38.png'))],
              ),
            )
          ],
        ),
      ),
    );
  }
}
