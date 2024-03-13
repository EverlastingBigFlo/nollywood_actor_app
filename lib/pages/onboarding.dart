import 'package:flutter/material.dart';

// class Onboarding extends StatefulWidget {
//   const Onboarding({Key? key}) : super(key: key);

//   @override
//   State<Onboarding> createState() => _OnboardingState();
// }

// class _OnboardingState extends State<Onboarding> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           Expanded(
//             child: Stack(
//               children: [
//                 // nollywood logo
//                 const Positioned(
//                   top: 55,
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 30),
//                     child: Image(
//                       image: AssetImage('lib/assets/Group 39.png'),
//                     ),
//                   ),
//                 ),

//                 // the actors section
//                 Positioned(
//                   top: 250,
//                   child: Padding(
//                     padding: const EdgeInsets.all(0),
//                     child: Column(
//                       children: [
//                         Row(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(0),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(10),
//                                 child: const Image(
//                                   image: AssetImage('lib/assets/funke.png'),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(0),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(10),
//                                 child: const Image(
//                                   image: AssetImage('lib/assets/funke.png'),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(0),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(10),
//                                 child: const Image(
//                                   image: AssetImage('lib/assets/funke.png'),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(0),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(10),
//                                 child: const Image(
//                                   image: AssetImage('lib/assets/funke.png'),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(0),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(10),
//                                 child: const Image(
//                                   image: AssetImage('lib/assets/funke.png'),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  // List of image paths
  final List<String> myFirstActors = [
    'lib/assets/funke.png',
    'lib/assets/funke.png',
    'lib/assets/funke.png',
    'lib/assets/funke.png',
    'lib/assets/funke.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                // Nollywood logo
                const Positioned(
                  top: 55,
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
                  child: Transform(
                    transform: Matrix4.skewY(3),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        children: [
                          Row(
                            children: myFirstActors.map((path) {
                              return Padding(
                                padding: const EdgeInsets.all(10),
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
        ],
      ),
    );
  }
}
