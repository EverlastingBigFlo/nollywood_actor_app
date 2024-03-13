import 'package:flutter/material.dart';

class SlideAnimationExample extends StatefulWidget {
  @override
  _SlideAnimationExampleState createState() => _SlideAnimationExampleState();
}

class _SlideAnimationExampleState extends State<SlideAnimationExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 1), vsync: this);
    _animation = Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset.zero).animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}