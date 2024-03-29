// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nollywood_actor_app/pages/util/button.dart';

class PostDetails extends StatefulWidget {
  // username and description
  final String username;
  final String songTitle;
  final String description;

// side icons and numbers
  final addFriend;
  final likes;
  final String numbersOfLikes;
  final comment;
  final String numbersOfComment;
  final share;
  final String numbersOfShare;

  // bottomnavigator navbar
  final home;
  final business;
  final chat;
  final profile;
  final add;

// background image
  final userPost;
  const PostDetails({
    super.key,
    required this.username,
    required this.songTitle,
    required this.description,
    required this.numbersOfLikes,
    required this.comment,
    required this.numbersOfComment,
    this.share,
    required this.numbersOfShare,
    this.home,
    this.business,
    this.chat,
    this.profile,
    this.add,
    this.likes,
    this.userPost,
    this.addFriend,
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
              width: 850,
            ),
          ),

          // username and description
          Padding(
            padding: const EdgeInsets.all(18.0),
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
                  const SizedBox(
                    height: 20,
                  ),
                  // progress bar section
                  FractionallySizedBox(
                    alignment: Alignment.bottomCenter,
                    widthFactor: 1.0,
                    child: SizedBox(
                      height: 3.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: LinearProgressIndicator(
                          value: 0.4,
                          backgroundColor: Colors.grey[400],
                          valueColor:
                              const AlwaysStoppedAnimation(Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          // side icons and numbers

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 5, 10),
            child: Container(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(widget.addFriend),
                        ),
                        Positioned(
                          bottom: -15,
                          right: 0,
                          left: 0,
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      MyButton(
                        icon: Image.asset(
                          widget.likes,
                        ),
                        number: widget.numbersOfLikes,
                      ),
                      MyButton(
                        icon: Image.asset(widget.comment),
                        number: widget.numbersOfComment,
                      ),
                      MyButton(
                        icon: Image.asset(
                          widget.share,
                          color: Colors.white,
                          height: 35,
                        ),
                        number: widget.numbersOfShare,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: -1,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  clipBehavior: Clip.none,
                  height: 5,
                  width: 60,
                  color: Colors.black,
                ),
              ))
        ],
      ),
      // bottom navigation
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 1.0),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  widget.home,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(widget.business), label: ''),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFEB545D),
                  borderRadius: BorderRadius.circular(4),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 4.5, horizontal: 5),
                child: Icon(
                  widget.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(icon: Image.asset(widget.chat), label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  widget.profile,
                  size: 35,
                  color: Colors.grey,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}
