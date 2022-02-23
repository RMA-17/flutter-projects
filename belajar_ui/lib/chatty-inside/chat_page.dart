import 'package:belajar_ui/chatty-inside/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
            height: 120,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color(0xff2d2355),
                    backgroundImage: NetworkImage(
                        'https://w7.pngwing.com/pngs/398/729/png-transparent-fate-grand-order-fate-stay-night-saber-animejapan-chaldea-nostalgia-daijin-securities-miscellaneous-leaf-logo.png'),
                    radius: 35,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Canonical Travel",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("12 Users online"),
                    ],
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.call,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  ChatTile(
                    name: "Louis Moon",
                    text: "Wassup everyone?",
                    time: "12:03",
                    isMe: false,
                  ),
                  SizedBox(height: 12),
                  ChatTile(
                    name: "Mang Mamang",
                    text: "Good, How abt u?",
                    time: "12:04",
                    isMe: true,
                  ),
                  SizedBox(height: 12),
                  ChatTile(
                    name: "Moo Lord",
                    text: "Fine here",
                    time: "12:05",
                    isMe: false,
                  ),
                  SizedBox(height: 12),
                  ChatTile(
                    name: "Mang Mamang",
                    text: "Wanna meet sometime?",
                    time: "12:04",
                    isMe: true,
                  ),
                  SizedBox(height: 12),
                  ChatTile(
                    name: "John",
                    text: "Sure, that'll be great",
                    time: "12:05",
                    isMe: false,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
