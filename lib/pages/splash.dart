import 'package:flutter/material.dart';

import '../components/animation/animation.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    _animation = Tween<Offset>(begin: Offset(0.1, 0.0), end: Offset.zero)
        .animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SlideAnimation(
            beginOffset: const Offset(0.0, -1.5),
            endOffset: Offset.zero,
            duration: const Duration(seconds: 2),
            position: _animation,
            child: const Expanded(
              child: Center(
                child: Image(
                  image: AssetImage('lib/assets/Group 38.png'),
                ),
              ),
            ),
          ),
          const SizedBox(),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Image(image: AssetImage('lib/assets/loader.png')),
            ),
          ),
        ],
      ),
    );
  }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }
}
