import 'package:belajar_ui/chatty/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String text;
  final String time;
  final bool isMe;

  const ChatTile({
    Key? key,
    required this.name,
    required this.text,
    required this.time,
    required this.isMe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isMe
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: whiteColour,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 250,
                        height: 70,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12)),
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: blackColour,
                                  fontWeight: FontWeight.normal),
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [Text(time)],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 8),
                  const CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.person),
                  ),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.person),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: whiteColour,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 250,
                        height: 70,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: blackColour,
                                  fontWeight: FontWeight.normal),
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [Text(time)],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
      ],
    );
  }
}
