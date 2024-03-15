// ignore_for_file: prefer_typing_uninitialized_variables

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
  final home;
  final business;
  final chat;
  final profile;

  const PostDetails({
    super.key,
    required this.username,
    required this.songTitle,
    required this.description,
    required this.numbersOfLikes,
    required this.numbersOfComment,
    required this.numbersOfShare,
    this.userPost,
    this.home,
    this.business,
    this.chat,
    this.profile,
  });

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
              fit: BoxFit.cover,
              height: 850,
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
                        color: Colors.white,
                        fontSize: 14.63,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.songTitle,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13.59,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.description,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13.593,
                        fontWeight: FontWeight.w500),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Image.asset(widget.home), label: ''),
          BottomNavigationBarItem(icon: Image.asset(widget.business), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(icon: Image.asset(widget.chat), label: ''),
          BottomNavigationBarItem(icon: Image.asset(widget.profile), label: ''),
        ],
      ),
    );
  }
}
