import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Image_slider extends StatelessWidget {
  const Image_slider({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 20,
      shadowColor: Colors.cyan,
      child: Container(
          height: 250,
          width: 400,
          padding: EdgeInsets.all(15),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: AnotherCarousel(dotSize: 4, dotSpacing: 10, images: [
            Image.asset(
              "assets/image/azad.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/image/p1.png",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/image/p2.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/image/p3.jpg",
              fit: BoxFit.cover,
            ),
          ])),
    );
  }
}
