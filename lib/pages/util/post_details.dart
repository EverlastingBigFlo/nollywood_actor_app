import 'package:flutter/material.dart';
import 'package:nollywood_actor_app/pages/util/button.dart';

class PostDetails extends StatefulWidget {
  const PostDetails({super.key});

  @override
  State<PostDetails> createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(1, 1),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(icon: Icons.favorite, number: '256'),
                  MyButton(icon: Icons.chat, number: '25'),
                  MyButton(icon: Icons.share, number: '12'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  ;
  }
}