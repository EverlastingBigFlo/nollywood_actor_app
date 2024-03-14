import 'package:flutter/material.dart';
import 'package:nollywood_actor_app/pages/splash.dart';

import 'pages/main_first.dart';
import 'pages/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        'onboarding': (context) =>  Onboarding(key: null,),
        'mainscreen': (context) => const MainScreen(),
      },
    );
  }
}
