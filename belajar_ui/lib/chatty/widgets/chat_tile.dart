import 'package:flutter/material.dart';

import '../theme.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String time;
  final String text;
  final String imageUrl;
  final bool isReaded;

  const ChatTile(
      {Key? key,
      required this.name,
      required this.imageUrl,
      required this.text,
      required this.time,
      required this.isReaded})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
                child: Image.asset(imageUrl),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: titleTextStyle,
                    overflow: TextOverflow.fade,
                  ),
                  Text(
                    text,
                    style: subTitleTextStyle.copyWith(
                      color: isReaded ? greyColour : Colors.black,
                      fontWeight: isReaded ? FontWeight.w300 : FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const Spacer(),
              Text(
                time,
                style: subTitleTextStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
