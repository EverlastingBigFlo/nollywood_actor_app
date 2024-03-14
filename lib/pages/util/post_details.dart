import 'package:flutter/material.dart';
import 'package:nollywood_actor_app/pages/util/button.dart';

class PostDetails extends StatefulWidget {
  final String username;
  final String songTitle;
  final String description;
  final String numbersOfLikes;
  final String numbersOfComment;
  final String numbersOfShare;
  final userPost;
  const PostDetails(
      {super.key,
      required this.username,
      required this.songTitle,
      required this.description,
      required this.numbersOfLikes,
      required this.numbersOfComment,
      required this.numbersOfShare,
      this.userPost});

  @override
  State<PostDetails> createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: const Alignment(0, 0),
            child: Image(
              image: AssetImage(widget.userPost),
            ),
          ),
          // username and caption
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(-1, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '@${widget.username}',
                    style: const TextStyle(
                        fontSize: 14.63, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.songTitle,
                    style: const TextStyle(
                        fontSize: 13.59, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.description,
                    style: const TextStyle(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(icon: Icons.favorite, number: widget.numbersOfLikes),
                  MyButton(
                      icon: Icons.chat,
                      number:
                          // '25'
                          widget.numbersOfComment),
                  MyButton(
                      icon: Icons.share,
                      number:
                          // '12'
                          widget.numbersOfShare),
                ],
              ),
            ),
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}
