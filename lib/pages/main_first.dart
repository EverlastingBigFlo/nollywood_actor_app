import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment(-1, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('@AdesuaEtomi'),
                Text('The Seagull (Anton Chekhov)'),
                Text('#')
              ],
            ),
          )
        ],
      ),
    );
  }
}
