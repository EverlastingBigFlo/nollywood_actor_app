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
          // username and caption
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(-1, 1),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '@AdesuaEtomi',
                    style:
                        TextStyle(fontSize: 14.63, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'The Seagull (Anton Chekhov)',
                    style:
                        TextStyle(fontSize: 13.59, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '#hollywood-english',
                    style: TextStyle(
                        fontSize: 13.593, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),

          //Buttons
          Container(
            alignment: const Alignment(1, 1),
            child: const Column(
              children: [
                Icon(Icons.favorite),
                Text('256'),
                Icon(Icons.chat),
                Text('256'),
                Icon(Icons.share),
                Text('256'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
