import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

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
          Expanded(
            child: Stack(
              children: [
                // nollywood logo
                Positioned(
                  top: 55,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Image(
                      image: AssetImage('lib/assets/Group 39.png'),
                    ),
                  ),
                ),

                // the actors section
                Positioned(
                    child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Image(image: AssetImage('')),
                          )
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
