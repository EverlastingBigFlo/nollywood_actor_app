import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 5000),
        () => {Navigator.pushNamed(context, 'onboarding')});
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Image(
                image: AssetImage('lib/assets/Group 38.png'),
              ),
            ),
          ),
          // loader section
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 60),
                child: CupertinoActivityIndicator(
                  radius: 25,
                  color: Colors.white,
                ),
              )),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Padding(
          //       padding: EdgeInsets.only(bottom: 60),
          //       child: Image(image: AssetImage('lib/assets/loader.png'))),
          // ),
        ],
      ),
    );
  }
}
