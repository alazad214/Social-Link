
import 'package:flutter/material.dart';
import 'package:social_link/account_section/account_desktop.dart';
import 'package:social_link/account_section/account_mobile.dart';
import 'package:social_link/constants/image_slider.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constaints) {
      return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28),
                child: Column(
                  children: [
                    //image section
                    const Image_slider(),
                    const SizedBox(height: 10),
                    const Text(
                      'Al Azad',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    if (constaints.maxWidth >= 500)
                      const Account_Desktop()
                    else
                      const Account_Mobile()
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
