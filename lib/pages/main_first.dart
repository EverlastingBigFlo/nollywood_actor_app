import 'package:flutter/material.dart';
import 'package:nollywood_actor_app/pages/util/button.dart';
import 'package:nollywood_actor_app/pages/util/post_details.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return PostDetails();
  }
}
