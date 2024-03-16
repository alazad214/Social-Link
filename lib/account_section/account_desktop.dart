import 'package:flutter/material.dart';

import '../constants/social_card.dart';
import '../constants/social_card_item.dart';

class Account_Desktop extends StatelessWidget {
  const Account_Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        for (int i = 0; i < itemList.length; i++)
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            width: 400,
            child: Social_card(item: itemList[i]),
          )
      ],
    );
  }
}
