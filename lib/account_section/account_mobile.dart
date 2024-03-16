import 'package:flutter/cupertino.dart';

import '../constants/social_card.dart';
import '../constants/social_card_item.dart';

class Account_Mobile extends StatelessWidget {
  const Account_Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < itemList.length; i++) const SizedBox(height: 20),
        for (int i = 0; i < itemList.length; i++)
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: Social_card(item: itemList[i]),
          )
      ],
    );
  }
}
