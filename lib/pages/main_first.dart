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
    return const PostDetails(
      userPost: 'lib/assets/For You Page.png',
      username: 'AdesuaEtomi',
      songTitle: 'The Seagull (Anton Chekhov)',
      description: '#hollywood-english',
      numbersOfLikes: '256',
      numbersOfComment: '25',
      numbersOfShare: '12',
      home: 'lib/icons/home.png',
      business: 'lib/icons/suitcase.png',
      // add: 'lib/icons/home.png',
      chat: 'lib/icons/Vector copy.png',
      profile: 'lib/icons/home.png',
    );
  }
}
