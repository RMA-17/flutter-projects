// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xff1D1E3C),
                fontWeight:
                    index == selectedIndex ? FontWeight.w700 : FontWeight.w500,
              ),
            ),
            onPressed: () {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          Container(
            decoration: BoxDecoration(
                color: index == selectedIndex
                    ? Color(0xffFE998D)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20)),
            width: 66,
            height: 2,
          )
        ],
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 25),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //NOTE: Navigation
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'images/logo.png',
                        width: 75,
                        height: 40,
                      ),
                      Row(
                        children: [
                          navItem(
                            title: "Guides",
                            index: 0,
                          ),
                          const SizedBox(width: 50),
                          navItem(
                            title: "Pricing",
                            index: 1,
                          ),
                          const SizedBox(width: 50),
                          navItem(
                            title: "Team",
                            index: 2,
                          ),
                          const SizedBox(width: 50),
                          navItem(
                            title: "Stories",
                            index: 3,
                          )
                        ],
                      ),
                      InkWell(
                        child: Image.asset(
                          'images/button.png',
                          width: 163,
                          height: 53,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  //NOTE: Content
                  SizedBox(height: 76),
                  Image.asset(
                    'images/illustration.png',
                    height: 550,
                  ),
                  SizedBox(height: 84),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/icon_down.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 13),
                      Text(
                        'Scroll down for more...',
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
