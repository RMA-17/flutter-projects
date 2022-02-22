import 'package:belajar_ui/chatty/theme.dart';
import 'package:belajar_ui/chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColour,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        isExtended: false,
        onPressed: () {},
        child: const Icon(Icons.add, size: 28),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(height: 40),
                CircleAvatar(
                  radius: 60,
                  backgroundColor: lightBlueColour,
                  child: Image.asset(
                    'images/gudao.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Gudao",
                  style: TextStyle(color: whiteColour, fontSize: 20),
                ),
                const SizedBox(height: 2),
                Text(
                  "Chaldea Staff",
                  style: TextStyle(color: lightBlueColour),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  decoration: BoxDecoration(
                    color: whiteColour,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Friends",
                        style: titleTextStyle,
                      ),
                      const SizedBox(height: 16),
                      const ChatTile(
                        name: "Bandar #1",
                        imageUrl: 'images/bandar.jpg',
                        text: "Ini bang pesenannya",
                        time: "Now",
                        isReaded: false,
                      ),
                      const ChatTile(
                        name: "Bandar #2",
                        imageUrl: 'images/bandar.jpg',
                        text: "Mantap bang, besok lagi ya",
                        time: "3:20",
                        isReaded: true,
                      ),
                      const SizedBox(height: 30),
                      Text("Groups", style: titleTextStyle),
                      const ChatTile(
                        name: "Chaldea Staff",
                        imageUrl: 'images/chaldea.jpg',
                        text: "Da Vinci: Seluruh staff...",
                        time: "2:30",
                        isReaded: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
