import 'package:flutter/material.dart';

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
      body: Center(
        child: Row(
          children: [
            Column(
              children: [Image(image: AssetImage('lib/assets/Group 38.png'))],
            )
          ],
        ),
      ),
    );
  }
}
