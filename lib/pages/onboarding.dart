import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

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
      body: Stack(
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
                  top: 200,
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
                  top: 340,
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
          const Positioned(
            bottom: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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

          // start explore
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 1,
                width: 100,
                child: Divider(
                  color: Colors.black,
                  thickness: 0.2,
                ),
              ),
              SizedBox(width: 20),
              Text(
                'Start exploring',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                height: 1,
                width: 100,
                child: Divider(
                  color: Colors.black,
                  thickness: 0.2,
                ),
              ),
            ],
          ),

          // buttons section
          Positioned(
            bottom: 200,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'mainscreen');
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.black,
                    fixedSize: const Size(double.infinity, 60),
                    minimumSize: const Size(200, 60),
                    maximumSize: const Size(370, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Explore as an actor',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    fixedSize: const Size(double.infinity, 60),
                    minimumSize: const Size(200, 60),
                    maximumSize: const Size(370, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: const Text(
                    'Explore as a producer',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
