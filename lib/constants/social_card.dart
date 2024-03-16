import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_link/constants/social_card_item.dart';
import 'package:url_launcher/url_launcher.dart';

class Social_card extends StatelessWidget {
  Social_card({super.key, required this.item});

  final Social_Item item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final Uri url = Uri.parse(item.url);
        if (!await launchUrl(url)) {
          throw Exception('Could not launch $url');
        }
      },
      child: Wrap(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 2, color: Colors.greenAccent)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  item.image,
                  width: 30,
                ),
                Text(
                  item.title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
