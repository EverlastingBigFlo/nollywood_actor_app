import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nollywood_actor_app/components/my_text..dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  // List of image paths
  final List<String> myFirstActors = [
    'lib/assets/funke.png',
    'lib/assets/Ransey.png',
    'lib/assets/Tobi.png',
    'lib/assets/adesua.png',
    'lib/assets/toyin.png',
  ];
  final List<String> mySecondActors = [
    'lib/assets/iniedo.png',
    'lib/assets/kanayo.png',
    'lib/assets/iyabo.png',
    'lib/assets/Odun.png',
    'lib/assets/saka.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // image sections
          Expanded(
            child: Stack(
              children: [
                // Nollywood logo
                const Positioned(
                  top: 70,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Image(
                      image: AssetImage('lib/assets/Group 39.png'),
                    ),
                  ),
                ),

                // Actors section
                Positioned(
                  top: 250,
                  right: -45,
                  child: Transform(
                    transform: Matrix4.skew(-3, 3),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        children: [
                          Row(
                            children: myFirstActors.map((path) {
                              return Padding(
                                padding: const EdgeInsets.all(12),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(path),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 400,
                  right: -55,
                  child: Transform(
                    transform: Matrix4.skew(-3, 3),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        children: [
                          Row(
                            children: mySecondActors.map((path) {
                              return Padding(
                                padding: const EdgeInsets.all(12),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(path),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // headline section
          Transform.translate(
            offset: const Offset(0.0, -280.0),
            child: const Column(
              children: [
                Text(
                  'For actors, directors, and ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'everyone in-between',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // start exploring
          Transform.translate(
            offset: const Offset(0.0, -250.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(
                  color: Colors.black,
                  thickness: 2,
                  height: 200,
                ),
                Text(
                  'Start exploring',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
