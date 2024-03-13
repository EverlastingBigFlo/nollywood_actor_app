import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(0),
                child: Row(
                  children: [
                    Image(image: AssetImage('lib/assets/Group 39.png'))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
