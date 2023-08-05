import 'package:flutter/material.dart';

class IconList extends StatelessWidget {
  const IconList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/images/icon1.png", height: 50),
        Image.asset("assets/images/icon2.png", height: 50),
        Image.asset("assets/images/icon3.png", height: 50),
        Image.asset("assets/images/icon4.png", height: 50),
      ],
    );
  }
}
