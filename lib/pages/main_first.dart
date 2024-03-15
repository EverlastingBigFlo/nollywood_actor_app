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
      //background image
      userPost: 'lib/assets/For You Page.png',

      // username and description
      username: 'AdesuaEtomi',
      songTitle: 'The Seagull (Anton Chekhov)',
      description: '#hollywood-english',

      //side icons and numbers
      addFriend: 'lib/assets/adesua.png',
      likes: 'lib/icons/Group 37472.png',
      numbersOfLikes: '256',
      comment: 'lib/icons/Vector.png',
      numbersOfComment: '25',
      share: 'lib/icons/share.png',
      numbersOfShare: '12',

      // bottomnavigator navbar
      home: 'lib/icons/Vector copy 2.png',
      business: 'lib/icons/Vector copy 3.png',
      add: Icons.add,
      chat: 'lib/icons/Vector copy.png',
      profile: Icons.person,
    );
  }
}
